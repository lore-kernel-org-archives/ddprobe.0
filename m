Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618BB13AA20
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716810263; cv=none; b=BW8mOqZ/YjsvGe6UrNeFonT/5r5s28NOjqBMb7MsH6lVI0YqXipfeZBmTR+0wQqPeCBwSTgZWPSiY7UOt43YuzZegIxv/wKbeq4HGOeYc1D/kTgS0j0GAjMrRK1d4iAxZmWQuoKCE+c8K5Rxyo0b0mYtUaEdQua0x0Pg2IZwVjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716810263; c=relaxed/simple;
	bh=Kz8cI1CiaN3vIRLFSKOxOeHXNAQTgu8nf6BWRC1CBVE=;
	h=To:Subject:From:Message-Id:Date; b=gZSq7yYp7f12jir2A8dwslvKNmiCzi9yVNs3U4DAxiE8bHkSmkrqsY8XWbQU2ez/TnXRBtVSxDGW9onf2GxViJEyzcwHmSpEXzpN2rpP4zkM6bL2Vtp2TQJSDMLqV4d4gye5BTxl6f4IcGHP61ksKn4G70vXxlh/MjvJMFvk6i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNdh6bAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNdh6bAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A58C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716810262;
	bh=Kz8cI1CiaN3vIRLFSKOxOeHXNAQTgu8nf6BWRC1CBVE=;
	h=To:Subject:From:Date:From;
	b=dNdh6bAa4J4giIBUSwew1XjXgyuTGqyBvwRp9hgoAVP86+FeeekA5WY4u+rLGWq8d
	 Qkk4x3EaT6v738cYjBFTN4HsRe6J4iAbcdZj+X7Hgjx8Fgo2fdiH+BQrp2eZQuMATS
	 ICFGp10Kfe9Wgy62ZiQFzsb7ouJRTks4NJQGfaHpMKMYKctu7kFXnI+gcGfi4c5CEl
	 9QAklv7C23i55WfljXAbmet1rtbnk5M+/lUOL8g+LbF7CRZZR0aoMpk1M+X9Odf82h
	 ZWO+Uv2Z9OiCBJfVS+WwsL1GHkm+pvC7wsI1R7kh7AnfavGpV+Z/2Gm0W1RPyoSLK4
	 6T9o6cMGGAiZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D493AC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681026283.27563.15663309834746519050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca15352501dbc101146b3be19083cc743f0ce92f0ae0cb25fba94961928ca32
Date: Mon, 27 May 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716810262
