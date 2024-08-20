Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21BE190477
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 14:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724164554; cv=none; b=Y5Eyfc0lQOGMsq9CSmvM6+meWQ3Lp0DoUYMI2ls6NuIOV5r0BOW99UNfeLhBVyWCSJtLECbj/D6KuRx10aVu5Rw3LW9p4yYyKmp0EioR7hnj7zhSNko/wpQRucu7U1U4Wg1CkrhSt8v6RH9RLCdUQ7Ptt2FxcXemaoGu2T5egJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724164554; c=relaxed/simple;
	bh=bRl9R0KhabAmP+pF3NQaHpNfIIJ0ZpI/aUZHW8/OPOE=;
	h=To:Subject:From:Message-Id:Date; b=N0Erx7v7AomE4Mcp7UG5uG2a7xULNm/O5s/VYbEV4znYAk/yTh+hLedmx3yk8PVTZtGZhtK3R3p2uhleqcQ0BgNPv4lnIJXHxlmasmiHKmc4N/tH11fCagfJN7O67UxHK0qejFDY1nlWQ65KDkVlMhjltFValdxfE7zgVugt+H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSAXonq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSAXonq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B1BC4AF10
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724164554;
	bh=bRl9R0KhabAmP+pF3NQaHpNfIIJ0ZpI/aUZHW8/OPOE=;
	h=To:Subject:From:Date:From;
	b=KSAXonq5rQmKpFtxk0TgoUgqSR6xIEdmhwxm7dmzlGQQze1yjP+rO3m1+s0wramvL
	 c9HckVfb+vy0TzuML7GNA8OzmW5+Ycnj8Wf0RPkT3aMREtg0EinkGTKYEPVGLTxS7A
	 p912ktZHwd1OYNxTJ/03qUT3UWzu06gxQM33P6j/9KdJETkxZHnWw6FIFVR5iBf4ZI
	 IlX6ShoHJ1U/3GexWHby6vg239cZvNMIZpv+Thxy5pSaT0/H8nU+rctj2qQL/d7DAG
	 AXBY0WMxfgHSVp02ghEGh4gHEHA98NPw8bwKB87mtr5rcWu4W8FuvV5ONuVfGVONZ5
	 C3/MV7YmUfuUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9620AC531DF
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172416455360.21274.15468762726283758142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bdbc90ecef033a89983b132f6725a11e05de6fb70fc0382a9d3404b52c4669
Date: Tue, 20 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724164553
