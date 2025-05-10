Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FA21EEF9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746865794; cv=none; b=hBwJLt3cEcdHZIYw1bXYsWndRH2GUqEo+iXSJZWcXpskEK7x/S7esjvTORqZWDfu2mOyCOqGFiNCBJcHv8f2uz0Ld0tpQZrb/I/KPvlCxHvmTy+Y/VcOIQCe5hT/mwDs2PoqcaVsgOxjcTst3dZpfTzEgocUbn9PGV1+d9o4Kz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746865794; c=relaxed/simple;
	bh=3y3ws4y+mwKPQ21ub6H2j/7/RvBJfU5aiAzyjk7lhEc=;
	h=To:Subject:From:Message-Id:Date; b=BywZepe65XUWWLODw0Ch/4AABghrV1s1SwEu8aLZsVwb1I14tLUv/lHGjfo73gXwt2c6sME/zv+Faz75EMmfeluUSc88nd0ORTW8fXWKJ7K0a33VQphR8j4RlLyxYlyOe0fYNNVIi/fhh2DbysVpJeroYFklY0cisbCs4/v77nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0GyhM6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0GyhM6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B15C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746865793;
	bh=3y3ws4y+mwKPQ21ub6H2j/7/RvBJfU5aiAzyjk7lhEc=;
	h=To:Subject:From:Date:From;
	b=e0GyhM6uA+x3ogaFh9sVS3pB5BpNUbwpNcRuYbDufXgqCqsUxo1rTOMD2NbMNKDeC
	 XWd4kvhUXWag/HqJLGEaRzHtrDogt1TajYAbuQE0hElSE//ZtA66a5YDIW+15VgNDa
	 7AOWrzzhwqLRUJfl/t7SElhFYeyd6uydqc+0TcGV35jTqYSJvxep90Dw1pFcNpPIrp
	 tXuU+Rvrw3UBJg+HYsX48cU4gGOPU9sqA+2XuJzRwdKUGr/m42+g8Ku1sREePapc6c
	 AmUKCTDQU3+GS/PQdwQ2DuaYDtc7spoUzPVitWidx/h7Q//ixZCI1GNK56RBFJ/Bw/
	 rmErdwVqKIvJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EACFC3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686579357.983.9867313100629135855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99c5f7f56205d49e1ca45e1420d5431413dcb07bbfcbc6cd76e8c4eae1f2589
Date: Sat, 10 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746865793
