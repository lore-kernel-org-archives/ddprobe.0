Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A54284B36
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769853834; cv=none; b=K1KAJxVe7hvQ6v3ANrIqCMxR0Mv9LJmD020Ca5pGGcyEQx3g06jSKavhjKdZS313e31n+acEBWzNyjdi0RMM6RGDV8VKlfUSWcNYk+SqXooewwNWW0ISh5G95x6h5eICGY8OUCMJxJtu4oBYfrLiUSqImZcJgxSGK/VqY2FCIb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769853834; c=relaxed/simple;
	bh=RJh/i3erPm8HkHwhHEyotA7db4wTEMJ4EXWAsBpOkKc=;
	h=To:Subject:From:Message-Id:Date; b=i6KMzgJmOtSHKQlmqSKhSd/dn6MlLWOt+XHt69TgWh1h4wiFMELXpz/Sds1zfyXNFnRHlF60U4NGzcGWt1R08JPVo9UihnXSLKPYi+ekTE/dNPE3AfrhReGy3Ej2bvpKlAVZ3IKFNuk1jwydXDXwh5DocowALOpYb6LVWYZu/u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBsxHIK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBsxHIK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EFEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769853833;
	bh=RJh/i3erPm8HkHwhHEyotA7db4wTEMJ4EXWAsBpOkKc=;
	h=To:Subject:From:Date:From;
	b=DBsxHIK03PKg/m92R8C2htw3BK/6hHcoSYg5/VKd/aGCGDLaIEUmHEBoVKr9O4RIa
	 NaG2SGNA6SSbDAozB37Gbk9Rhr+eY5+0fWE9pOyCwcYIlqTitkyQsK/AdwtW0dpVxX
	 LTw9eCkYGngllTaOQZo84q/g+T3lgoakIuE+lGRD8m1VhHmMCD1EKe7fVwpSvB2nGv
	 syWFb3F84WJV1vaWy9s/g7s93+l5/EZL3DedikfVrXRLe/R4y9cM4etugs3fZ861bD
	 oLSMKR+t7Jc3xwA2IwZqTYR/x6tROGrt7ZvDcW2KMmHC+n2o2KcMMTVCIjz7qiHM0U
	 VdFsgSvMy5ykQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92740D79769
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985383357.6015.1872582962490571689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f6d4bb91e0f208f6129f6b7a665e5fb7a2e175f4bb5b8a6660dda133a14b89
Date: Sat, 31 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769853833
