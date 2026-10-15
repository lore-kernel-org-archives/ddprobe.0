Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8F7305667
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792026034; cv=none; b=TO9fApoFzIvWGduAF5nKpCsQzHIjFOPX7n7/oBjNKbdORjWtYeekUABumFkqeRlSTx1CJCx5IeIio61ao+6SS+qPj1UfrZf6cYAUJkLv0FH2oQ4bdP+VrP3YuaixIyspwXXfTAVOphSNEhF+wsC2HE1uQtWeEkg1o8cNCim5pZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792026034; c=relaxed/simple;
	bh=Gj88kIFGf1UI42spCSTBfn6qU2hf/+2I6Sb8drIC2Cg=;
	h=To:Subject:From:Message-Id:Date; b=NAJC9rBTaKEJV/AbEAd2bkZDFDvihJ8Z/vHiTuEUQcA1afVlywaruAjfGkgOCYSeF9zxQEqz+PqBsGG8WsmqfHnXQTMXGRmA0TVdPu3rTPPgx1rfseImdtviwEB3ZGg7UPBKCjZx6dT3J2bRncoUske1Zd9wGOOf1pAY6Qh1tG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEvpQynq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEvpQynq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A79C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792026033;
	bh=Gj88kIFGf1UI42spCSTBfn6qU2hf/+2I6Sb8drIC2Cg=;
	h=To:Subject:From:Date:From;
	b=MEvpQynqm+FYeBPGejHG9Vap/A857E8nUq4Cd3S6AAQ5a6c7cmFoGGO2Xtt2uCfRy
	 mhZvq994feJt0YpjZmOrvqvMF9NARDCkUPaZYoPwLK/CQHkT4WQejEnEd0aDK8Mrxj
	 Yl7mUMXFFutajMF2FFc46Gdtpk9HAd6F7nFIQcduAO2VGhMYz5/1Knm9R4cYSb2dzS
	 m1sOfuu+XZHaYo6zcW//UWJGx9LidG0kH3sMgkeZ92xkHo+c5hdp/DcoSXRDE0buiR
	 3TBa7eYvZG/L7QgNKPb5pLDW5qqEjyVK/TiMfcbg7z05Rus4iciphrDzKFPqp0XdTw
	 IuP8PPyYDtaYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4997CC6B2D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202603369.30749.17430290212856173284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086d76150a77453e6ef4674f55af0e8423b90efdbddd223e8294898041f491f0
Date: Thu, 15 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792026033
