Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1863C09F7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778812834; cv=none; b=EkYbgQ2Mc50vMyzJwJgnymRCwKvB9Cg6vzsw0ihU9fOPAHGmG6CqkaSlySu9Cz/EJU+92UABPr7AtUy8ECOgfHPsYgabeZw0A+dAy3Y50YtyKK0dq978MLBe5xM7ktaUJfIL9iWxdrCIYRmNuMZepMhACXCC9u1ayMe9SsroPN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778812834; c=relaxed/simple;
	bh=7Xz7Y/BzsH6CSGdikV+QkjtxIFfzS+clcvMxz+92k+M=;
	h=To:Subject:From:Message-Id:Date; b=QRJUoREoTZ4W/+MuX+hNQmY8ZjihEGB+ytcfFIkdJ31WtH96h3H98MpW4Gs9MCs0xIbtYC969PtRK/KSvooknIyhmts4lOmQZh14cBPUUL8QsXrbcUMyLa2GilIsJ7tH2xRCvlo1ygcWFq1a/hBMyaPWxoeweGwVyN0ahKUmP2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQ5/0afm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQ5/0afm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF1CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778812833;
	bh=7Xz7Y/BzsH6CSGdikV+QkjtxIFfzS+clcvMxz+92k+M=;
	h=To:Subject:From:Date:From;
	b=vQ5/0afm6GtRJpkgTVqss66ZL5elviG9l2XEfm9zPFGWSQj6my87yV1nQEB1Aawe1
	 d4niiXOzI9Hi8IYmSbmnN8x4nXuJhHzVGUp0sLVKT5d4ZAPx1Ak7ArIfUyr5oHmawb
	 n+8AvNovnRIZaLBiCxttNtwL/NvEoLrTQ025u9AqckFWBcHgQ9oeNQZtlhKNQk26dY
	 WgPeHtZY5VgoyfQPLVhSc2EMP2GhdRVvVOp4aq6OYJqHAFhnPnA/nYASTLQRMDYjPX
	 4Kx7rGeGatiAproT5hvnCsmqz2l3h9424weVmXfHeUY3z76oEwmSuWI5aZzZEISt7J
	 OybAOlNNVvecQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACF8CD37AC
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881283369.18851.7984713597091599857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f721bec53bb8130b7faa0fea6e37dae554a29ddeb440ef1ff049092fd69e639
Date: Fri, 15 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778812833
