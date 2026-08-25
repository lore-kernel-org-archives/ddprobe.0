Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B5838757D
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787653234; cv=none; b=jvUipHR6by/0guQdC41I2k1Tw5QUP8oRXG8Yt2+12uoOQrYMUwPP36utEYI2GImWdpLu7GLcQ/GrrYt6xpyHCKe8u1kWjo2lZDd6vA2bU2+RDHb+Oxyp9kBbyJbhHwbHgibnoDBGmPJSXf3817bkympnNp6NhGSdF1f7yfct/Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787653234; c=relaxed/simple;
	bh=TpTdq8tADIaTOdlD1spQCcW8XJG6qxIhyPV/xZkY0M0=;
	h=To:Subject:From:Message-Id:Date; b=vDlxtdwz/vhs11jAx0qTDLHb8XkiI5EInG9DEb5UC37L4m4BLooXQ8ZqvRy+rKv//JheAfTNUO+EeWAaMqPqPi5Sd0gMlBVyi+CT0NWDQJfw3OjJ8d9iWa0jovUQFzUWpULzv8AmswamLoHxhpPJ78D+bEqe9ci3WQaRAVfUQvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWo9PT6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWo9PT6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC484C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787653233;
	bh=TpTdq8tADIaTOdlD1spQCcW8XJG6qxIhyPV/xZkY0M0=;
	h=To:Subject:From:Date:From;
	b=WWo9PT6QEg73rP5SkfsUV5Vtyj4dc2vOTmwZ1O8RFsbpJoiyG+tYzTwATKifd5HrP
	 tVB/XJ5J6ceTIX12opwZHdWQifIUiCfldyqkjo0pyaHPi3Yeps82E53nHl5WlnAVu8
	 XtZypJavhw1CHFYaItv7ZBp7KCb5pEA3t9vNcBC24yZbKuN65u3SkBAff71Xe0w1t6
	 cTV/G+0AeF4zl/j8UZYjtCA1oeA5ZD8CsmQ5pvSCGh2xPgGDko2BZGVAfzTDLlSMUQ
	 1eT8H2aiZDhE1N/29iwqshKCtk4vhbsB9dVArYu+g33TViiUxp9ZMUfC8AoDut21Lt
	 lBt2ObsykJGRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C43C61CE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765323368.14223.16416727879315679113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b619e0ab967d3d4e4ca367d141107bac4e726f50dfd13797d49cd3b921f6d3ef
Date: Tue, 25 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787653233
