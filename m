Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF262E22BD
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763460114; cv=none; b=d9f7tncHHgoG7f+CdzV8q30eLAuUoVr01XqIHiTMHfNP1y0eOs+6lZypGAN34imVk9obFFDQZqmfqtc8YXhHGimkModHsOhcwEteq93NcExbqHsbI4ctBLnSypPk2CEMH6mCpg3s4Hb7/5fbrAsmh4yiRolw1ixkssIPbpOw798=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763460114; c=relaxed/simple;
	bh=K5JG6ftN8S8G0ITIW9ET/qgBXh1ZWlIIxVIKJnfYeRc=;
	h=To:Subject:From:Message-Id:Date; b=DjYmwR5tgxeyC5kvxk9HYb23EDcJS9TTVDh2KOPGDn1G0GONo7Q9A8AyCVyPB10d6CsFFOpMmQtVsDFVpnNdtihXj8GyJ8zds8w/nPiH/qfDNYQriLmP9xbK5VU7Pdcre71CVUq6QZ2rxJkzyqvZRQAH1eL/GVdedwc4Z2YMMsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocyapK7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocyapK7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2B0C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763460113;
	bh=K5JG6ftN8S8G0ITIW9ET/qgBXh1ZWlIIxVIKJnfYeRc=;
	h=To:Subject:From:Date:From;
	b=ocyapK7dFiTv/w4O1QNV5JjbTn1ENOubG+vlSXj8oea5LhvJao+e/b4FTuJc0U1Lm
	 g6Epk2wsr2Xh81sBLNoAiBELT4zcgYXMZQg4RJoil9V2B2x7N4FPG+2uewJ+c5HgH9
	 2V2Xx95JeM2IJKFWivVyCUEiRyiv8cyIEsCyQLd/h3uBSNy643B2EDxhH+Y+bOZY1K
	 0hdpyY7HlvXFsd4OdO2qPaXCa3xksr9D+f3xSOgdNaYQHin0wDvW4YiV0PPJNQ0bZX
	 Et3//Vbgxc36edN9qyskW9Y/kL3thwJb4U91f4G77a3Jfkww9YoZaZmmfUo0z1zn3q
	 KKba8JCved2rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920BACED265
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346011358.540.11320244584202582745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f5927ad4ca9e636170b873c1f3b74946224370167e0943a57f3a774ec69709
Date: Tue, 18 Nov 2025 10:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763460113
