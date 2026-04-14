Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312703B47D9
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776155854; cv=none; b=m3bb57FLREvqzezbaMRDCm04PSh86a1Gqx2uw8RNSWam+fihh8kJyHts0FXdjaCTmZpE29GbxODDB7d9xug0fddaKmJTTsG4rDW2wkT5QyBwrZurFnJGrXotlDz6T6D7++V6hc2Nx5MPZ8+L+y5yBOefZ74TfbE1zU1uDM0rOgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776155854; c=relaxed/simple;
	bh=KdwzOgKInXasEnMqW0jLtCbsL01zPENjdoQZINzAgDI=;
	h=To:Subject:From:Message-Id:Date; b=NKdnwE9mAEciR4dJkuhqb35mNemDgIdvyZZj+fTLNiOQBFnKW3yGaI4QZYRWag+IVoIckEvXBplBC9nTrKa3uVaHIkjYhcIPrgDXxk0pwLh8xMJpTSE+OC9Glq2QjneaWcqVsryRUZkSFUbzk1Bc0IUXJ5wf8MEPj1109ocsImA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZVbA/ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZVbA/ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD190C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776155853;
	bh=KdwzOgKInXasEnMqW0jLtCbsL01zPENjdoQZINzAgDI=;
	h=To:Subject:From:Date:From;
	b=jZVbA/ro7GYXY6W+kjND/3nLJcGc+hgOGJ3ucnQ39uuie9HwTrXJa0TaqehPOGUOx
	 4iuCWcv4c+uXT7+DIhF/Wxs128Dlfgm5GVI7ibkBXHcqioH7aSFX15BIOsQccIbsXc
	 x3fjirs3Qfkjglnt3Sntm825P/T1PSOtV85VDXJaudc+EuRUIICkGXqQMUdYRP30SN
	 5+Pi4lBg0175KIcVh/hkndDYRjlGkqL6o24Jny2oHICKEXet1zOVaGTaiqDk/6oxth
	 7doRbP6ngp7ue8IBfNidKa0BsHdx5qNLZryVTlXmFZq91gtveYf/m1LCadEv2qCQbD
	 smXJYh/JDkWVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC64ED7B82
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615585369.22517.14887216419913530143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f33bcf28c37a5dd208fa16b0d89b989c1334340b1a9862156493503a9f46947
Date: Tue, 14 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776155853
