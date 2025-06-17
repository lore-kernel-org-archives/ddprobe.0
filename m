Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF5E2DBF47
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750162194; cv=none; b=bqs1mTezu3j2GvCIZvDa/W/W0Lg++4oHH+0ipD4hpXzcnyoqNR5MLbXuosYjjswz2arE4x1VHEjxBUJp0kEp9p8NzXuLAgQ6tiy/mzWAFX3raME2nAFCMHK9TuWZAaXkGKeY3uRwJx2apVR2IRcIuraKs+fAuDdZUHlf0w7BbMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750162194; c=relaxed/simple;
	bh=1N6uXdzLJYnv/zlL2crCe3ljSvXID0+k+odtLQmKOI8=;
	h=To:Subject:From:Message-Id:Date; b=Ti7APrv7csFkCISUuqQ3jxAO0oCaG1u0NkPDVC3xx8T5wzNIZVxxo8dpxipEXrpOokgQXRrEQCceG4Ejjrh4lPJi6I6PiT27+xois+sx/e20NmUV/ocMg98Wl9pu1SUDb0iDYUCvtyrxBBE4WfFasXvfljGZxtpCxBJ6tgijzf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0EoHGvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0EoHGvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA00DC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750162193;
	bh=1N6uXdzLJYnv/zlL2crCe3ljSvXID0+k+odtLQmKOI8=;
	h=To:Subject:From:Date:From;
	b=t0EoHGvcgzo3ADCLcRlrS7BManuPTnMoxtmv4R23Xu1+272F30iU8TPpYl4FR65os
	 V9aqulwGeprNdVUY9RVfeSBooeQge9oRg0Kj32Z2TRshkhfowGFFhNx2CrRpnlStYx
	 sM4+54FSM1D7WFoG0vNj8whIXdMijKlUR7LR03W+lgsPjXUYfcfFaIWEt60cMsoW6X
	 n7lyuTjy07pLTwr/ZHYbptXpvqZ/NpUu95vQ7an8JTltBnF+c2uIaLOHa3EYyqp3i/
	 7hPfYIrmAYMjteBF96lGAFowxX9rbtjInabNO1kD+LN2s9SANSUbL1KKIArdBT9qQj
	 p7T2FcbzuMsyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98448C7115A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016219357.28221.8408924488060038897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5a5378ebaccf6957a2d97442f1e8d1284afa7730fb2d6f738ca23b53df39c3
Date: Tue, 17 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750162193
