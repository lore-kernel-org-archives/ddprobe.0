Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3D9231A3B
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788075634; cv=none; b=IkDM5tzwpErKh+IXY/xeW9NHpKbSjRXbiduRDWnElc22gUxcUHnRl8K4zQ2qJUEtSMnpTXsF5i9IcSsFsd/MM0/TeCAnYichH0EIHrnrk2y00g2QtMm393tZewpoQM5Qq/cjDMonG8iQO8U5PE7js9pu28wFI6+7WKgAip7XTSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788075634; c=relaxed/simple;
	bh=Dx/MdNn+rQZ03QaqZr09fDBFqVa7d067OWUlpa8cdUM=;
	h=To:Subject:From:Message-Id:Date; b=NsTQyvNHZEBMjVBZQ6JpalVLBYK8VWlyXXwfjjCouQtHSuyZX3q6zkFsYKD9+2g/jPAKoJj22IiYvLOBgpPw4pMHJMsz394o1xfgX+DPbSSsohsXoy8Qqk6yhGygbTIHT+Om+8GwZpHu/iN8SKIRFXfUTvhdPOM9rSigULTLKEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXrLMUAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXrLMUAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B4AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788075633;
	bh=Dx/MdNn+rQZ03QaqZr09fDBFqVa7d067OWUlpa8cdUM=;
	h=To:Subject:From:Date:From;
	b=aXrLMUAMKBElIjo97aQGa3C0fENRxxadcMtp4c7pi4Ze6D+IDtruX4Q//kRN8H7aV
	 FWoOn3BpMBj+t+r71SUEpStWl3okHqDvyaXWDy7zXldHQYA8Xi3p3JgAid/JhMUJ57
	 qTWu+aOIO2XQ+E5DAJyz8R+s7NRoEhM9455jRTpAx/vvPfzyZV1fbL+sK1xPcVQ0m/
	 BIeVH1HY2WYCp99U2ZDVjGrQLVV9sb9o6iRQPZ6hNXZ8xFOT8fwhSaOk8lCrBn0VZL
	 HIE0gp9S9qoVoDjtG5ocd81qTUBs00Q/vMxblbWtvCSC8e5o6wGhG3mByt0l442C/7
	 n4Fp61O5Qm6eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02BDC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807563368.20538.8402805955629105319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d02dfab22cc9b43b11687a38a0157dbdf62434c517d67bfc246fa2ad3f1edaa
Date: Sun, 30 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788075633
