Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C36E3009F8
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756375194; cv=none; b=O3U5R0FyocFqq9GtOY2tEqns4WgQ1fQY612O/93pMM7T66Py7riVoEMIdUS/Qykv61NTNTuAkZBgz2vBQRh10P99z28W2wUE3YRAlFXitLDCjKEYGEGsJXT50KJ321xAxmSk2iQaQLzkIj5ddlL5Ot5daKxsb+HkBcuGrG5PfCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756375194; c=relaxed/simple;
	bh=yBaLiudP6CzrnLeHWg3x0PXRHaS3r+ZNMgFPX1b32dU=;
	h=To:Subject:From:Message-Id:Date; b=tWT/0Qs0mNjp853FlEAJ9DkkW/u98r0YZwTEtUG78Pbsq1vt8nb0Wzd0zh9rqh2hXgeqq95QczOJGoFnWKbOqGo0Fnvv9t//I42kZDMqrin3s9uItp2UvjGiXrEBd4XTPBAI73M014cbBdIoZmUf1jDOC9iNvApCkkLL5eWOEtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvPoJAlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvPoJAlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F045C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756375193;
	bh=yBaLiudP6CzrnLeHWg3x0PXRHaS3r+ZNMgFPX1b32dU=;
	h=To:Subject:From:Date:From;
	b=tvPoJAlHzDBo7QME7WX5xnPVHWWcEhuHPWk8Xop9aDigX06kgyR8jUGrqfGQI9Eee
	 DJQuZbNvhjRAGlLY9WUvf3lJw+8oWERAuaV6BGzlCXioBBWOTpGBu7zA5FbT+6BS2y
	 UYRPBAVALQipSmPSfhoWsr/m1JYI6Te69J+pD8bNQ+Ek65V5a3ZffRnYwwxfQdjs9R
	 Z00uKPAvGDkN1Cs+8RwBkEKdzT5hDiQlMvmpAdv8Xkf5UKKsEWJQj0P8rzT+Zd51AS
	 iLoAblqJFEilsUQKqgVe9jxYJJBNKi6iyFGrvlx/uyCaBWX7GAXrCscVrUuHktcice
	 zsxkO5ZY0RWug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E255C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637519357.29416.5340181706749700260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58da51e7672f203f9802a3624aa27fbf8deb062493bba4798f6df6f636913f35
Date: Thu, 28 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756375193
