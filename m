Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9DC17FD
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722298554; cv=none; b=rXqBULzvTXXvvLM/IUi2/Imv+USumIONosyeNJ/UE8fQQPGxDet7NopM91jim61frrELas5DCj3ZRyelrpPRk4y3Z4Wia+gvqbZo8IPQa5dVvLb4NFhQwrCrTAGIG0dc59wON6FkNX3JzH3JIUFCSJDtWUWMObdoBfUUI02Dank=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722298554; c=relaxed/simple;
	bh=q6Jt1y61MihjqD8FWJyHkkmcFdJwLu1FJfD+3RLXvwA=;
	h=To:Subject:From:Message-Id:Date; b=j0DSHO42d+bQLEn6BaF0SVmVSPZNgcBJt6H+msTwTxEZy7+58E/AUYQzOcLyTOTsTQGRO7UP92B+GtAbs3ZuJBYbctEsh63PKbah7OGaYyHbjD6/vygr1ecZKR849Sg6Ctq1z3Ugde1Ca10RIs0ndJhRRNH90l4X9xm8KNT1zsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GV7vngKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GV7vngKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FD4C4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722298553;
	bh=q6Jt1y61MihjqD8FWJyHkkmcFdJwLu1FJfD+3RLXvwA=;
	h=To:Subject:From:Date:From;
	b=GV7vngKw93Ok9ZQ9xTtKXhfS9nzpWXvyBVD5cC65qC8z71tYsbFd2gXTeR1tgk8zG
	 ASuEZsjFL3ZIQJgpXqvg7rYjt74EaF0wi5xewvPJedn0wJ1ruEdAqkP4QhAVG04OwD
	 3gRsqAfIUh9M/9NGnKg8eVc4Uak+In3vJwnRaH2Kwreu4PNcbjxmaBHmXY48WtWNoD
	 bPDJ4DqCLXoAj/t1IaTGQjQVZLUpQeWJmHRBUhyaKoQRRi+kZBJVThYOF1ypEjGeoa
	 jmAdM+knoMwHXUbs2nfL1tjhj6Y9WUOgYQPOjqGxy9oobkjOC1TS52Bz11Q1Vq+zkv
	 1DMPUQJGHQUFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BB4C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172229855367.7949.11940457160904372347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af876de6c2e0172a6cf0d369e2d99ee7b9cb5cd0c52f7637f3843cf1bdc44b23
Date: Tue, 30 Jul 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722298553
