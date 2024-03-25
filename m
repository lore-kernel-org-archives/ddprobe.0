Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9FFD59B70
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711400297; cv=none; b=MbgYFXVSWdRGp0B+/MHvGGhG6n7VmA/L0usf4RtYm+ETzku4kVMEIaDGnLzyqJtEvgsBK5te4TWUW4Lbrg6Y0r00OmF+fCgA/3nkwTuKWLLG9ihzZiQ6Sk1llAgfTMgK/lVxhnzlkIiuFi10KPrBhI4QVMHIFLfP/x54sIkR8sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711400297; c=relaxed/simple;
	bh=0WCDGmI91DN0fAnOQ5H7vd+sai/LaQGcvYaDO2iJbe8=;
	h=To:Subject:From:Message-Id:Date; b=n/tZHkNNkz5KsntLjt1G7XhZUoGzX/IKl+/qpQ1zGfa/TO+cuo5wiqpcU6oPJGC58igZuH/GD1aNlTCQUQdfQpO413NLiuX8ZHbXYKJHVCgW5ulCdiqU325IpysIcC+ySiYWXoLMKers+MeQF+7jP0naN8uDHcvMS2F4VqvAQ0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDTUGDzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDTUGDzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C63C43390
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711400296;
	bh=0WCDGmI91DN0fAnOQ5H7vd+sai/LaQGcvYaDO2iJbe8=;
	h=To:Subject:From:Date:From;
	b=eDTUGDzHmGXfIQycPYILW8Qdkorug4506JO8oVRrnH1ZVaQAn20RZ2kJGzUSYCRpR
	 Z2hpYZR4TgoFmyhTEQnlmZirY7uAyRQgff1sYRx02Ha1SXeZCGY4mmRV3vahOgMKOp
	 9PzKHEenBdm651z/aWLfe8T/jTcdqE2VXmyRsTu8LKTrtOKnasJ5d8amMelOzC6PL6
	 qPxuK7xxhqKi1SvYi70EC+QeOy56tdZdg66EKJpzmfmmFFRSLniN69PxDTn4nezmcm
	 YUddKP2gFzCWeV/AgWgHMmyNMygTg89RrEyyIYzZrFwThPAbO3vwxe+epzjW/UEcjp
	 sDhn21MQxRFgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654C5C54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171140029640.17009.4387350962960993697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c5243450b9567c561e34078f3e82258c0ce95cd5cfdc9d95693aa2fac41cab
Date: Mon, 25 Mar 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711400296
