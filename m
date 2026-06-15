Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487E61A6800
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781523994; cv=none; b=A833YzjzEUivAZxVclyR3C4+kdCgTIuvABccakTn6x/OCGf5qgGPOXtf2mc1SOa4HGa5t1C2/+dyXalVd4RPzRFm8NSHlN5lSamhsc0MYU404i7Z7bgjVsGGIctbvPnJFga72GlvE+zaG0570L/KC3pX91GSJRLlJx67nXB3HFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781523994; c=relaxed/simple;
	bh=mfH2Jb1JfXTPQoUEHDVkSsqStnkl1XomzXD2FcHx7T4=;
	h=To:Subject:From:Message-Id:Date; b=ZJxYVfwlQhTcKNYlLrGIxeA3G4bW9UC+QsBeGkS4ZSGYAQoOQSBk38R+3TuNdqM1bS1zyeBOEUcSRARsfs2fgxNppjrTT1+rlgHtR+kc+uLOhAf1w5KW1IBkT7vtFvqKudxIxfp8WWuRoPSenI0JT27bIBEdqJhCmtpYmp6T0Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lc3qeTAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lc3qeTAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CB5C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781523993;
	bh=mfH2Jb1JfXTPQoUEHDVkSsqStnkl1XomzXD2FcHx7T4=;
	h=To:Subject:From:Date:From;
	b=lc3qeTAKEFHrRDaP6aKAucbBOuxTBwqjulN6x97JtScDNHthVp3dCythuBQhkc1lM
	 o8Kb2hXwDjVls1Qh+ITcntVVisCJbV61oeJTzNy+OtWsOjD8u2spIT/sjQRmCNoIqw
	 ZRyIrGJQePDvVbcV+RS79A1clTfmjggiw9OiIYQORgVfes7HcJr12Zaw0g5CDbYZlh
	 UB5waIb8V5KPDLPVnSe/vmKba4mgFfF2NEpfVZ0lidl7SDfjh1xHIqSkFsdk9naPpp
	 AsdIopR4CSBO9btn+sYxjMzbKDa8c9tEbo+5yFH4gX7xARfOYny4gLnU1nS1o2gtEH
	 Rsg0L5uqmR9+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BE4CD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152399373.20621.15015377853920749195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7eac369c2c3b268ae0dba002de3c15e5ec368ad14172a05f8b237fc5ebd8db
Date: Mon, 15 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781523993
