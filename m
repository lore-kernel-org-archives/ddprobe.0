Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33582421D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705580297; cv=none; b=WLBCAtI11PJgqojwrFff/tmJn1A6DObdVqTb1RL1sfi4Hm4ymuMsSCuyzYcna16RFCVVSnhohUVgBGC+oVEQBpbbwPqeDZzGUWEQ5sofGqSmJIrm5Dtq5oX2HZw6Csvv4YCi6MjmIENeRbCSMEAq4LYFb3dHRgaRMCmEf1Uxw6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705580297; c=relaxed/simple;
	bh=AEhAQmyS14Z+puYoAwvB2yEyQC42+uh+uO4ZxegCKPc=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=DCVQyGtCeyKRPgduhY5WAhRwtDB+MAVQLXGssNe6WMdkqeW3eNtPbWI4zTZudWVdk/2hrZfoGPu6bvS3UIZL5jbO1VGTCJ3WWYHt5mnjMceljEDp2okEaG727vWZY7TpD6545CEWTAYIxEKM8c6AbqrMcaoLHpJRt9YMCKnPocg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgUl2tt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgUl2tt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB81C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705580296;
	bh=AEhAQmyS14Z+puYoAwvB2yEyQC42+uh+uO4ZxegCKPc=;
	h=To:Subject:From:Date:From;
	b=OgUl2tt9yaJtOaHjd/QnixKWIAKKixQHK9vJLYU3p6647VnobFfh3HlkWikjEcY4u
	 QHy6vdaEe11VCHMCBf9Jo0WOmxzUrzOZwv6yZDXb9hRCeC1bVaOknNaPG70xIiZsXm
	 5pW42uThtJeM3rfREbqgrfjlgmkRnRO/sfsr3veWcQmHOYwA26sxnK92K2ZFwXFWZ1
	 181MzAt0GE9d7eQFbPZSEszB2YpyE+204b8tGcleXxEQtB6R3CnZDxyE2ya4WmRE9J
	 rnZ/MoFIqjK7KVCsN8kMqI51AZkWSbdpPr5QP0Y+PVX/s6QcKC1eEKI9iDmk5UCSg6
	 CxmrCTYvD1Pzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F19C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170558029637.10210.512462850475662610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2abf7c07190ed6676b04ebe181f173509d3548489ec7991d63c1a46f0470ec5
Date: Thu, 18 Jan 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705580296
