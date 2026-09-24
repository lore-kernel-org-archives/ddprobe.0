Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C415B42FCDB
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790244637; cv=none; b=mJ1W5tZeXjV88DnBmidsQyFpl8PDcgnYD3PulwWu29D5BdidWYS5jbcZiUPhJny4ZDFgCaBYkPcMnyM2udoatfvzo9vL89f7k3L4DL+PyViigfw5l4x0gjAypxpzb6jfXL/3wRcliUdEi2uTXkCnw1CtDv1nW/4H0aLz5qV5vK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790244637; c=relaxed/simple;
	bh=iEk3FEukJc1HKcT9ScZ1dczknPAptSXihZScPyPRk9I=;
	h=To:Subject:From:Message-Id:Date; b=LRBqPBOeCrHNnrUhUI7NEBixqbbMQmiKRCPyb0bof/GH81uidHTon2eVRDA1L/Gq150ZBxo5t6daITM7b/h+/5KnJ/1hZ04A69f3b47m/gFPl1laoeCSxSj5Heitavfky5w6IWZ4p9R2G2kkiooRZzlTDVjHV/Wg/i0msDq3EBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBX2N4Hn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBX2N4Hn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCD1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790244633;
	bh=iEk3FEukJc1HKcT9ScZ1dczknPAptSXihZScPyPRk9I=;
	h=To:Subject:From:Date:From;
	b=WBX2N4HnmQkntmLTnfCf+TW55QNa6f/TOewCYx6wP1SC3DxNWJ9y38U2SOwTmKZvy
	 JcPFWyB0tXL/VHTHBl5fHhaCMt9PLNbsCnMMhE8Jmy3aqymxHnX0ns2xwIhQ87BBhV
	 fUeE5NLOBJfuna577pyHf7pKdeam9IYUh0T4gxaCofZ+kk2SwYdMHEHRKVlllKrjT2
	 X+CPnKMgBhiRIWYm05wBgej4MtHK6ZlpkCFIhJGqw2xlDieG01uC/6nTeGZic8KdJY
	 2T5I39Khp3NBYfApIzd4DrJ3mTCIYZYFMTVA0/KpWpZpJ44m0rx1tKQOPjMEDfmwI0
	 Jsx1OSXp3wkXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA950C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024463368.24297.830138431656143785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62c77d5c363a17a58fb4f5f8e981f068c239b1c9dbc5889ceefc94358b4e76d
Date: Thu, 24 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790244633
