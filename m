Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708C3171AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714621343; cv=none; b=FllfAHnadvDkp9+6wjDQ50Cv82zK3XLZDqtOW35pFw6wJgngFkixlcsBXsfT9feBUtqw+2kd17GDUYpJflrgLXmZ+P7IFVm46Za4bxf2sbj2lfYvOGJqsBY7ojQux/+oKEbfAAA6ij8OzWMc1ncALcZ/5Nl6PDqMuhYhDp7Ck2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714621343; c=relaxed/simple;
	bh=6qCNzKWQpCfjIRxl1BHZXcO5W9cO5bvh8rE4QQUc1TU=;
	h=To:Subject:From:Message-Id:Date; b=AeeSwoUo3nRcIHZqy8By+m1FRGZw0GcXxUjOcpWqxsHtpUEUkv5v0VGnglaccynser8vY7SM5tN6CcpVbKsKsqcTM5jxpwNll6MPscY09gQXJ+POMh8rjLO9F13qfwXK/JVzUh2G9sHp64w0a8xSuhtJ2kSn23o0ax6LmofatzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgV0tNX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgV0tNX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF599C116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714621342;
	bh=6qCNzKWQpCfjIRxl1BHZXcO5W9cO5bvh8rE4QQUc1TU=;
	h=To:Subject:From:Date:From;
	b=kgV0tNX2ank62G1sR3X57z9mOyXydB/6QwjttYVnSKR1/8oImD3UVG+ODNnfDrDJC
	 P8oLY8wklzO7ZlXcVH95NTufdF5pdzbxWT44HoRM7YPxb+C58VmhABNZf1KQM/Q6IA
	 9TgM+HRKQqn0OQSfpRIi3ysdnhvEuuun49jnYeItkvjx58Uk9vbsw7xs4GBQ2Tb01s
	 Ndpg9VNfsqHIu5CHXhgGAaxKZ7M4MbUcU+HCqMOlUz5cMxs39luuWIVCpVWEwg+9tM
	 YpHSnSqiHyeVRgGhn8PWQ3Y/d6GpRpmAdaQRyu/HRlUw5+lIFNd6Mby5usJH1N92rp
	 uPzMkfymdYVQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9890C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171462134278.12007.14619925666469974798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b746e3e493a638102838a737583a7fc8d4edf15318776024e901f2cc8e96298f
Date: Thu, 02 May 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714621342
