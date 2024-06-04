Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4966C146004
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717502723; cv=none; b=Y6l7Ngn5fuSLP5u44GueC3+RLQCvqrwZSlG/SeItXVyDBRhJiJsbtXbOoHFNYwBsS6/fxQRWMjae5cGMhZyJlRvVDbkN1ASoOZ+AGZaySQyWRLOdOyB+xkTa1ww15i/d0EFGbtda7WcYP93yind/EJOgP6MXf0ujlH4RPXdrdNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717502723; c=relaxed/simple;
	bh=0YgQn66H9QmLDmBr6aPcd317K1rE5I58PQ6625ZYV5Y=;
	h=To:Subject:From:Message-Id:Date; b=TurFfgXeFtOKLKeVaOrYDheaIawQXj1b2Z1gbrpV3DMp9Mu21x+NeX0K9/XOkQD6eXW/UwX11XgRwSOE9S7cWd+nWNyjA8CgmP8huGI7syEyLICF2kBTsjWXxg3odweEAJThI6YL6qOcUgWN/DUJazt24710jC3RvD1TONN2oiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yfs5+n8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yfs5+n8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6501C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717502722;
	bh=0YgQn66H9QmLDmBr6aPcd317K1rE5I58PQ6625ZYV5Y=;
	h=To:Subject:From:Date:From;
	b=Yfs5+n8rwg+s1Idw1D4FaLiu5aHbNRSMbTSKnomvg4+8CiagfiJoTgk9goNYZvcR7
	 QZd7dDkQH/GNLAuMmYC1CSQCUFg4WToKIcbVq1ZIRHraz2x8ld+C+bTDoeDqSo2qEb
	 ozoUkmANvSYQyOIA6ihzSatD+d3jNUMUYlZMzz4GqLjEhequ4Cne4I6y1HqmhaIqmh
	 0ceFnrdX/VzfFBhTpP7Td3H5AGmWSM4hu5FXGdfP013ujHQgEYzzT2L4ZEQAXCZvg4
	 noyCL0zk0FRBEjG9IekUTLagjNoquHgjlE1ywK7nFoOiKzuumC/gZtPWAWYbt05kwn
	 KrQOBBgkQDeJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E06C25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750272278.26088.8684758210394703451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233f9d269b5d37d09f39a45db9f534774eab166cb2ef096f91b963bd812b4ae8
Date: Tue, 04 Jun 2024 12:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717502722
