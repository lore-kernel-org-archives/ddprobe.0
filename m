Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0023D5253
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768947234; cv=none; b=FmULkmmsqhmtBJVviRE7YDdPsJsoJE+QJHpJO4ngKcmB2r1BsUnJgtjphOuf9pUi+wIL5BnnqRSaIRVsVnZVQ8LCRUrCJxekP83lSIQ3EpI49qFMOMNiMVQO+M6ylCoRt7nw8VAPafwU2aiYz7RNBCS33zBxSh66wcMkDLAcK2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768947234; c=relaxed/simple;
	bh=vhiMaOs74x+s/PpYS5tJNI5uktuCHIb3oG3Pf2EZTRM=;
	h=To:Subject:From:Message-Id:Date; b=J1ZgV0XkzmYMfiIo5fNA5mT/325IwVY34YNFxWWfmWjvSPTHmMavgnWMu17kqD6PK6O1SNINkVrouEfwi5Q7uUV682ifKxznv/6XXVCHSqEFSjIScyojxxVoCFgMHSgjV4o0594ueZsjcEsqtGh67mzRX+0XacFKTkvOwUAInyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQsGoLu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQsGoLu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A286BC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768947233;
	bh=vhiMaOs74x+s/PpYS5tJNI5uktuCHIb3oG3Pf2EZTRM=;
	h=To:Subject:From:Date:From;
	b=fQsGoLu10LgiWt6TD2sGvUJaLw5DYdz+INGETFqEW7USUnDK99bb8xwnDEWO/C8IM
	 0eHNOGL29T+XwrslRCx8KNobBNop2ygZpSFZVpZizz8GWwRkR5ukXW65jWZXcj7SSJ
	 hdB6HkXnfG3+O5Wzp0kkXmsSfjd6ihnstz7D2Nam7nIb7PXM78WYS0+EmHOWc75AbZ
	 ZYfLMpBQ8QZ1adzAVfd3baeDoh5kvoMP7hCd3mSybaNeC98lIRxr/dLhokeWF28QeV
	 iHip0FjKCm2o4/EVhEWY61moRgrwIBwkUZYZMVw8DGIi7eifm9vdA5opP+cU/8/ls2
	 Dmt0bD3NG6g3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E6D262A7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894723358.20828.2926046061793588462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f3e6286739756c14e00b8c59be37deb235dc4f428964f0eb24bff06d3b45b7
Date: Tue, 20 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768947233
