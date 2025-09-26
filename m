Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A4F1C860B
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758895795; cv=none; b=rOENeypBI3LR26R+4lUTepmBUIopY588HKV5bLB0EfhB8BOkU02rSJ1TFNCBhl31PNU2YdKJNlKWrdOw7wpIkvaoxo8BruivDefL6JvVo1ZtXAslAl9BvZIjzay/9NXpAEVHq9jdDbI6+IvkYgHGu0jTzz4vo7uFJ6/cHoK0Vlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758895795; c=relaxed/simple;
	bh=N9CFbGVd9eqKc+9lIzGVWNJHrZWJ0SjQKF+TkGFBB20=;
	h=To:Subject:From:Message-Id:Date; b=IU1vPqfdcfcTKL+lbiXacX7sf7tre+z+B4Z5FXlzMXEvdllXAjlZ4XltNlFTq27vmzp3zLQrjL9jErKS+pmhfe1cRD5t+Ck/6iizFgpKsaSowJtzpiiJDQhYfQm21kEjSrnbzH+CacNDFcQ2lNLVrr0FYSBhtZZzegXDY463O08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biOnOM4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biOnOM4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F337C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758895793;
	bh=N9CFbGVd9eqKc+9lIzGVWNJHrZWJ0SjQKF+TkGFBB20=;
	h=To:Subject:From:Date:From;
	b=biOnOM4QlWCAOQH5CPbtNoaMuT92Z0MCdKR48rmWfgmbILRtcyr2vBycbBqO1FDp/
	 r1zWrL9iateI90tIUO/SZPXvmPmVhMLQ8GcI3Bvp8FvAUI685H3osR7mULUuYyU9K7
	 goqtIYvI9hGhYOC3d5D+ZpZCpS0YMJbJsUj5dt5DMlo3wFB0RlgqGR9U+bstt5NIwR
	 rSIsvwOg6jJ8s6vxNsxBmvDztNeOfd5IlsEqsG61gyPxsZQ60/tmGJNVsNTACb4iO/
	 ggUG72pLeJ/Jk2N96hCsTxEqBPoMpTzVNapdglvLgLqw+4TSPxFNS8u32NO9Vsq/41
	 SyceRrh++106Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B8DCAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889579358.6449.1325698823780630340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669eeda5ace5fa8fdecb4e673ec58b8d0a42aaa14d53a50c21e32fa7e4137587
Date: Fri, 26 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758895793
