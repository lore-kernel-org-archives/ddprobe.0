Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122B61DFF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706438297; cv=none; b=Dw5iYCSVTnRkchhUJ9qy+5wgf3rool4NfEcYJsSHwC69Rt3KmlRyuJ6Ojr9Kh/b4ykdVoJDpYNcO8g3DCuErQzsgmZgV5tabmCLfsZABj1ylIH/Wf0q0qFXP+t7q+kOSLGFQMGUymArTW097ICcfvc0kyDo+Fjf/8gflQPCqYjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706438297; c=relaxed/simple;
	bh=KPKEmt3GrT3LXSaPEUqquUlOIJwmjxaQm4FXKrPjalg=;
	h=To:Subject:From:Message-Id:Date; b=RWF6G6ukT1ToXOVhxbGCT9OZz5vqIPupMQWZOQXSIuoJ+mxRhoOAVSKJkYjNOf4LYEMQ6wKyzxfJfSkUfGJUWCWowlfHTXmD9+KJ4R5NXKzkKq7v9l4Jforvg+J5PICvh0Ley1nmz5sxFVVXLyK6sB/BGzwjcU7/onlPYLtOiHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChylK+Fh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChylK+Fh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F19EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706438296;
	bh=KPKEmt3GrT3LXSaPEUqquUlOIJwmjxaQm4FXKrPjalg=;
	h=To:Subject:From:Date:From;
	b=ChylK+FhwKFd/J2kz0VG7ZUQO29QRaVd7CGfsw/TlCOKxm9CcVEEr5vjd+hLVHm9T
	 FfdNx6kfVPYT65NmFL/EvkMarA10rlG0mAGcjlcvB91koV5ST8+a6Y2rOyj50QVeFl
	 P7++DspkngUl9EWeZfKfDU0lAZ08mRb4liizzfVdT7jkq2jRrm3M73Rj5f/7o+kZM6
	 5GePS3LGMua7U2V5J3JFJxmIts9LVaKhrPnmruMKTnA6+aQDtFpvLJhaxYJB02E1vH
	 PaF1rNiDp+wwVScucYsIpUe3Xu9aGrEMwphJMaXRJTedXAxlRuB2GFHY84cWCLVVQT
	 N5CCKMEROaBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65158C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170643829639.4906.12117295869325309976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a0a7034cae2e493c0a20f674a89bae74c117c55c696fcdf96d44540a678db2
Date: Sun, 28 Jan 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706438296
