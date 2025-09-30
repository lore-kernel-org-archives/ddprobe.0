Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DC92F9DAB
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759234194; cv=none; b=YFC43sCaQcXhFVYesxYJFBL+5bVF1KV8+SzdBgtNxrFNGAHEWWtWwk7BCkz6R02Cf925urujOpu6PZC53YrmkKzykALlexHDM2QValhJoWbsqlphLkP6NzdefcMabzQ5w3IoxyHNyRgIacaxzVCk6kw5L1Yrncp9n46x0VRup1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759234194; c=relaxed/simple;
	bh=zuCIrZSwxNSV7BqgnaVeRU+BbZ2DW8Ri3okReUQkUpg=;
	h=To:Subject:From:Message-Id:Date; b=Oft7cXSywVq1DWPxrJxsmWFtrpAzcPL6NM/uARwS2ghBVMfB/n9n/4wIwJ+9EanGG8pbKuu0T2rCgXB6oXhGyFobOx3Hi23E4+EC49yMRSLIJ0kPntvNdXiBKF71T3Tb/oiuSyK1n28wTQUa6suJJZxJkx8HgA0SzQ5SxRwReh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dksiIaLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dksiIaLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE83C113CF
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759234193;
	bh=zuCIrZSwxNSV7BqgnaVeRU+BbZ2DW8Ri3okReUQkUpg=;
	h=To:Subject:From:Date:From;
	b=dksiIaLQ3VZBikFKE2YH1yUwtvvVKGlCB2gXIOQDNXuuLEV4UyTH2sQ2ZaFwFn5Is
	 bdJ+BpCpBPTVRqdYHE4EecY+IpxmXzeV+r/+Ct56gyGirRLdPhyQmCnuo7XzV09gob
	 aLjuAp9jOnyjcVFLoR9wWyjLNCq8aMzY1tZ9QIovzWRJfLvdY9/sWSpY/FhlvSjaBY
	 SH6yY+80VAfpjEL0EUbtKcye3SZQiJVu7uMJmphdd9K5rQC21r+IK6H+M9xnwOVgFo
	 pTEOfhkdj90S9NIgz5nB+RvNKEAVAuXW/TY/ohWsXImejcMDmGLcr6IQGBfeGf4lEV
	 65Emg1RLmCegA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B2ACCA471
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923419360.6367.15253498530949251761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb289255c9b4c960d315db3e76875254906c69ff1629ec850868fba885eff10
Date: Tue, 30 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759234193
