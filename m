Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480CD35292A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782652114; cv=none; b=uyFa5GT2uL8UpLK0gPXO/BNir2NLLX4tSjyiOJyox4uANLifjmdrleK9l77PCn00QKeOqEu+5ZJnDqMm4vD/IIUHG4q9xzbqIf0SoweI5QGFRGM9gcOL1IhUyLSPZGYsdFdd1GBi9VsTJVnfCAugJmRGFEdsX0NTrVVcfC7Gx4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782652114; c=relaxed/simple;
	bh=rrwsxErbOLFra3CIfDCUmxljlFv8SlSMRUYNAmajFAA=;
	h=To:Subject:From:Message-Id:Date; b=QGG1CDauFjdlhBKwQ1ObrFXPDWKXCSxTHmmFSCjEwdk3aVF3U0lL1WB4Pxei7S/KDwa37cQpm3H+936Zd7ODN09yxIF7j+0ztQalFsBB8B08/KLRF4GR3BIWJ5sFNlh7zY1dAwVIb/WT27NTAa2y4WgkXYHp/ttX6XtVBuIipvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWCkmadI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWCkmadI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D563DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782652113;
	bh=rrwsxErbOLFra3CIfDCUmxljlFv8SlSMRUYNAmajFAA=;
	h=To:Subject:From:Date:From;
	b=tWCkmadIJqlWF8bbkTZTycxBT2IXEe6SQNLEPmzxsGCZy5dSbqsnUCn4FbRbxpeKl
	 XgRB371Q4spgaCFmRXqmKPUm8ivGJrCeWIel62lozZ08gqXqOUAjvtWfrC0KqDkxdi
	 1yxOIkt/bABnzO+uEFvsn/cl3dcGbUKn15WLanS1rSa0NbDTAyauJFK2qX7TKhWnt5
	 EhOB57nPHRnFoleUa+fACB13ImiA2CUhUBLffTWHoR2blMmvJJf/MxpiduPShlE9KW
	 QEFRSFDLpo1LgRm+HOcNfCsE2thr7MPwT4sTa1VoUjGglt0/cYfWmu2v1h6rYkuh72
	 WWriKYHtkwRtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0763C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265211370.10209.11008673046547415345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cdfa5eac1799e961f5571f416c9973bd89450746a34bcc5990978ae7d625668
Date: Sun, 28 Jun 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782652113
