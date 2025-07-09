Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5242F4A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752023394; cv=none; b=YTB8sVz7Ad/+23UJFKPZEuSBRWeiC0m6opXXkJCOL51hNVN72u7weiaK6PwLAoUgMP/PRXqzo2flmTuKRaW/SELWEaJADBj2pYWL72WvFiTpQ4W69O5PQJJgf1cUo34MwyddJAvnePg8PHceV2kU7m8CtSlAKpMvk2KDISuFODU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752023394; c=relaxed/simple;
	bh=ffXZE74MLFcjxTaooATVD01fKTiwt/Dd9OocY7CQZ40=;
	h=To:Subject:From:Message-Id:Date; b=FUWjDzwp7CdHGBrZAVbyEVXl58gFacxPisDhkN2TLdLFgCJRhjn2qTF+U6VlfPr1cQ4T2ZhesVN3Hzdq+EmE8fVVzJNsRpPOJbMTMR42uenhTGuSLN1XgBMmjpranozz176iXeUGiBAUDuQ1txXpbxiNHn5hxtg3AN4QmoLgIHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dt7y1hmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dt7y1hmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E20C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752023393;
	bh=ffXZE74MLFcjxTaooATVD01fKTiwt/Dd9OocY7CQZ40=;
	h=To:Subject:From:Date:From;
	b=dt7y1hmdqIfGeR48NzW+AW77WMGDI52+5OUMhAn1Q7XYPe9/XTeJwSvTAXiBO+65m
	 LTlRJaxE1x34XW2hOoGsge91xIJnOytKT0qFsOEuHITzmS6+iDrpz49C/uVxYlcGzq
	 mZ6rTIjUZW2VEWGg2Od9VwQrifT+QUTBa7x2zvCwWT8tYlVAdZ3lW5g/fKVsesKElp
	 RcZdyuFPLp2zTtin3QZ18sHBp1EKxvP6GOwlbN+ysB33YMMpDTOLJdpIKqTWBv8XAT
	 TaSKgSEiEswzGGNsLbwqQRyF1CMqfDAwH4tVSc2jmdac6+M6s0baoGERSkCb3VbKPJ
	 cHaryIxhqjDVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EAC8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202339357.32057.17268508816587069841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b551f9caf11a9c6e413c5b87fb61f56a1799a8f2f8df1f7b3b618e08eb79a8
Date: Wed, 09 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752023393
