Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB74D264F99
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752629993; cv=none; b=QS0k8ioYdiKycdf6znkLyRmmpCV76Tz9vP0dwPFznmbTMebhjA8Lk5CtGV9CVroinXEq3OYN/t9wKNPd9eUuSUNdHKv8PMArif3Bfxxn8T2cQckcY54HWiz4eUD3m5kZjrDZZobWfhs8tbtrxwogUk17W5fXxdVMGaoq3iaBOuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752629993; c=relaxed/simple;
	bh=6Hf2ky6+GM0MieHkB3zG8nhQKHQjYAOfg4jxIvQ5mrY=;
	h=To:Subject:From:Message-Id:Date; b=Fc2Qb0UuHDSLEtiDvBG2Zuyvl/5uc5K/e72yKurSdqWn9czoFmjS2glg/r7OwokVTCR2nQYGIb8sjUWcq/+CdYSKIkQCoCtTW1GS9uzWT0zi6JCqwx8iSrUXekH744o48UFv49i21fl0KEEgtL7fysg3zkFpcb7JhvstI4JyMPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8urenf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8urenf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0453C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752629993;
	bh=6Hf2ky6+GM0MieHkB3zG8nhQKHQjYAOfg4jxIvQ5mrY=;
	h=To:Subject:From:Date:From;
	b=X8urenf4qcGd/CJklZISA6kiiLwJF79Pc902UaM6wjjJOfV0C6z7M6t7f07D8gXfb
	 ngW6vCXv8XNrKvc78PRP1GY5o6PGpPs9AW3fqnvnzyPOebsga8bTewPa+UH9bomiLm
	 l4OMrfWxRlahkUZdOy41zWBcleN9VJ/1f2ZFQqmc7rIH25nw1TY38TLpA9GjLBmmvw
	 mbRW7Y3/pG5E/VomI44WYQ10SVy4zBN3ACMJKSldbV8zIGeuaT9OWdVSUtvR4mT2j6
	 QvGaZfH3ZwyUjLBzQB6A6xdJa6Y16YYRqHJ/Jpun+J3Gh0nPF8ZMb1b2c1l8bU3dLh
	 q2QaBiTqMp7ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F471C83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262999357.17532.7864359208767422148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a1808f2080cdf8fd7de894117b9c0dcbdfd6a26f4508eabaa404f19c272b5c
Date: Wed, 16 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752629993
