Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2D62D3ED2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782835114; cv=none; b=WeqUQPHQUgCxByoqGokiEet+cat67mFXCYhi8R7Bh1xLCvut83bg+PDA/clGZX0A1VtfPBx7/cEteVxiHRwjZtGLTdddGCUdxSinNp6nX6zc6VFb+RgP5cxk94ZiLg6Q1dI1vonK7INEmNx7q9F28LPicT3PZUcvKHRzAQ/ETFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782835114; c=relaxed/simple;
	bh=gNDnz+4ne6fra2DvPU3ZN6GG8JN4qqnuKUMuIbr6QWQ=;
	h=To:Subject:From:Message-Id:Date; b=Z6sdwAVjr+guL9L3ojUpNjTP2z9loWDrv27tFyOz4/K5lCTuHKlpxBKVr3PH/RrbBfkGxdNu+HVT4nwjK2uEVPW48e9R7dK5XnhKgOTK1ywHZZBJvFfIqwYcruPjs/JeAjBuOYftMw3DN1n+pr1Zt1BafhxNpGX3tYoyxnPoUNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8bR7fw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8bR7fw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48E2C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782835113;
	bh=gNDnz+4ne6fra2DvPU3ZN6GG8JN4qqnuKUMuIbr6QWQ=;
	h=To:Subject:From:Date:From;
	b=K8bR7fw0Te4pT1BMfMHnGtZOyjRxiY4U5BGft8kXTp6TXvct5SHYF3Ta7ABXHTA8c
	 GaAjC1WaObOQZUHauSqRvEfHDZ2GWDCuMfw76zDXmQqOVFjF+CHWsrUXRODHnQP0rK
	 tAqrJAx5nmSCgHiTQ7lUlLv5sJYhsJPQQfm6I/SvEIDrRnH5RZNoSD2t6Ebu3w9MVE
	 28haM8qp3Km9Ub37ZuNLbhaeRl/Ibah/uQ1krcU5zfll3Pc2K9hHqRylNRXYHVePX2
	 qDhNQb41ZZ8AMu/GXhKFpHsQd+TcMxgOW8gFCxX6G4WBfHxNyZ9PtePWt7QlzM9Vos
	 w44udWJBzydZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC670C43602
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283511369.6767.5205719246036850889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873c56546b08056bbfe02adb59341f07052928c5af48838e6edf0a16aa894ad0
Date: Tue, 30 Jun 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782835113
