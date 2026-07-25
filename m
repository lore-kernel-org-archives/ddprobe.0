Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA85175A95
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784974234; cv=none; b=OTHTNzf9Fa+k/iT/UVUnQN41maWHrddS/hrEjYybkLGVUufBRvITYOCRO+QCEMoHhd3uWdaHL8/sPdrcCZPwBYAUhi079NS/3+yXmkNNT+M3Vjv7ibW73H0qXoIWA3Exs0UEMmlIPNflSZC8B9XE8kr//3yP4Q2t4wVJ8p5ckZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784974234; c=relaxed/simple;
	bh=+Y4nAwBEkxmXmduzceys7lGnNMAvj8+p77i3lBWp4i0=;
	h=To:Subject:From:Message-Id:Date; b=UGtU3B9QtzZiSXbLm7fAr08TUhgB+7Ik1cqQzLoMd/byGHlJshHxp1OmT2mRk12BmQ0VRPe5F7WBrWcdjufDj5PZpCXL4jKT6wX02VuN6DtcoO4cXP5F+FyVu/oP80H0ANEA14FhHbM+Yy2ZidvLr36VPle4bhrtJIpqBZ3wrxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+O4LVeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+O4LVeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4815C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784974233;
	bh=+Y4nAwBEkxmXmduzceys7lGnNMAvj8+p77i3lBWp4i0=;
	h=To:Subject:From:Date:From;
	b=o+O4LVeobfXHKOY3PL5eUMfEUMwWszuL4orfrY5TG5BwUyn6uCqDr3RU0Tlmye5TL
	 Jro4sT4NsCHnlIt1F9RlJZZHUFnpXkiAVIjs2FIq7TPdeCUA3QyiV3VP+QGiV0tkF9
	 NOkf99dYFKALkXv/cToBs4rxIrIYvhQHG6j04DQ2K5iIvWOUsvDf1+BZIu9Z8mjkd+
	 iQUWDy7SBD0lplFTo+TZo///1ifiwqi+tTbEIJdB5rVS25m2CodR6ti9wbRGeb/Ex4
	 2dOGV3CrRXqTBhaXEGD4IXe1KfpOiGxT863B+Ud4if0uyOZyhdBco+JtOcD1sA4VDv
	 60vKWs+CZP2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE771C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497423368.22348.7889037074685757472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d5b2f69806fa8b3545e1253e4c3742310c9898fc9fe83311cb31827d479e63
Date: Sat, 25 Jul 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784974233
