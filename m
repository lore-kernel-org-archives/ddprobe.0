Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C821EB5E3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781397394; cv=none; b=g6+gNL830Fc0wI0QebjLbNKIbZHTHUbWVvY6dBb9aGOZxHbuLBC6IRO5w91sBVFaGraeUJ5kxWOrpJ8rMVMdNI1CN8QytVy0Fm7GCbXY3uxANpi1DXubkKP1g3VIsGGibKdFVrCoOkd3xTJMWnT46DFH9LbBXwe7N/61wd0aWCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781397394; c=relaxed/simple;
	bh=mo+tMvq6Wks1giSTptix3onr/yH3OjZFfOUvdET0JTs=;
	h=To:Subject:From:Message-Id:Date; b=jP61d/ZYnFwSeqBJdsYqdqlf1nnvZgrI/+V4CkMfs5m4hqVlLO1jdScXDV+VC4djcPan87Ke68sCqog0OGRu7MS0fBRfVvW4DKeRQNPvg9LBZp5IMbbFxH6lKA7QfpArL+MWodOzVh501zjlkDJZaxZdj0xFudu0uRuKVTDpzy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJCfIPdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJCfIPdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAB3C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781397393;
	bh=mo+tMvq6Wks1giSTptix3onr/yH3OjZFfOUvdET0JTs=;
	h=To:Subject:From:Date:From;
	b=WJCfIPdte78YIoicUEC0NprLMoq8wKxd1ZLWPdc5MPVD3tDLJU1N/SA602RB/5X8v
	 oBkTLwatXLzpLP+MIS///dNdGjhdve1be2nixdZFi085qH6tERBmgxHIh081VmL/KU
	 JJoCIfo7obqoLxc2KTV7M7l5rhegUk/t236d68xlPPVV0GURa+yi1iGAEhKsis8P+O
	 E/tlxdAdYdi/isGZa8NxpX4hWPBEr+AFv/vRM96kOR76+9S2TujMnVFTDmvGt//z1s
	 ZZh2+te9ikUNlRwAXyMptbbd8ZJ0pEWNZSAmlvbxE7bSaUXdedOlSWW4a6+r01ZuMY
	 qT+3yuEbAiN2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD30CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139739369.29672.6385257767431942287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded339018bef1e7b82dee6453af19971e38ac1b1873d6c22a030f0bf7dd95457
Date: Sun, 14 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781397393
