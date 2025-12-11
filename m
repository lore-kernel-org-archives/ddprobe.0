Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2532E26A0A7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765487574; cv=none; b=P2WdMtrk48B84riBqAUQian4Pff1sQgvcEpyr1dzEM0PpvoSu5/DAInBce/zlh50oiMU6CS0bm/Ku3IB4esiXzWd5RET80xWYqGdM5r6cBEztdz9mMZR/Wgg8UGUUirwHMZ+quSjGTJZiei5voZkkSox8EfrfcfL57CqfYwlUbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765487574; c=relaxed/simple;
	bh=QsGBJpTTU/GuV6p4NlzInLa9GH0rkYKjTE0RR8ZjyH4=;
	h=To:Subject:From:Message-Id:Date; b=RH+xGY4amGsWPircxUw9P8yaau004E3heqlkSp+m99+K4xSiWgrV0yTVzPhn572X5cx/BfJx5D5LA2SBAp714BzwJfZY51h6Zs7ppr2iuvDCxn+XwHtq0HQvW6Jk6W9KkURIvUYgcnuE2e4k754Y4VUhel2agCtk0B98DyGZBhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0W0+XRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0W0+XRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BEAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765487573;
	bh=QsGBJpTTU/GuV6p4NlzInLa9GH0rkYKjTE0RR8ZjyH4=;
	h=To:Subject:From:Date:From;
	b=r0W0+XRtV7dK1QSjE5ax8zNhDL67lMoUeDIQGXARbUVs2khozDkaEKwl6FX17YD2F
	 N/D2wxbEerhQRI+FpdcP6OPacH3JreTyyM6rHP2tHc40HJVfub9jlKmJxCB+gn0HRN
	 F70v7qYfP7Zs0HW0CR+K/fghZRi+a50/4tLTg1SbyP1hxHprtYEK99dicVGXXXOF56
	 +5YHb+NIXob7Q/RlAjlM+pEk8zSJbusfdDT2bmTjkEkhm1jrhVBcdWQnmwGzyietCf
	 k3OMLtz/F4gZy37HpWG58Pb65OX4roenU51Mlb2UYpynFnAZnA/MFGdNR5ENEVMTT5
	 qkVjJtPwm/RNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0772D43358
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548757364.9946.8553054544456931544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb850827f015e3b894b030c2d42d34f84c7af9c45cdd484d0263c042cdf604a
Date: Thu, 11 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765487573
