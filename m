Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6BD59B71
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735900554; cv=none; b=jF3M1fNEeMMaKklLL5nslg+3X7ygMGfN6e3ZSs4gWFW5S6TGbDAEOt68kbxk/cPLo31gdlWLFAAsU0AgtZ6qS07LpBXAzULO5M6uhepeHZ975+BdBuExl03nmmex+9bwtGhDymgiM6Yt47/Opye7LtaKiSstHJl/1F1hfnQ1KiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735900554; c=relaxed/simple;
	bh=/dsZLyg6cCY0X8bU1i/5c89PA+YMoqK3jVD4Hvf4sVc=;
	h=To:Subject:From:Message-Id:Date; b=YsuD7e+pvop5LVcFXGUAjnQ8049RWa5uL3ibVNOr+7joXDcsAN+QMxEoyjrR7tq8YbZmJvCXPSzNWj+TxyG0E3wt8q9xpXKWJMpPaWM/ef7xi+xNPIVqHu5Lm/PTsoDPVRL/V9UEGA2TFIRQ6SYn+OnwvJmuFknEvoGI4UD3xik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lfeydaik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lfeydaik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BFCC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735900553;
	bh=/dsZLyg6cCY0X8bU1i/5c89PA+YMoqK3jVD4Hvf4sVc=;
	h=To:Subject:From:Date:From;
	b=LfeydaikUEutlo5ggFfR3TPFq86dL9C+4csdpTfOypYYbSM58+Bi1ss7SYh0Y3JIK
	 bvf+GAuvFJtFPzFIO1l57v38Cl+k+N4FxnaA27n9Jscmz5X1jvORrDJ7qayPCKZbqf
	 jeR487hGtj7L6mPxR/D4rrdSQN1IqfAVOzBZ5DakqUv7WBMpVtlTs/cSFHP0+laVfR
	 MKgPXVR16N26Nb8Z8FcgRhWIEiF4CN/Iwt3gGvn+8OE4s6Q/HnyJjMVRoKtVQ4NoWC
	 MrLE2Ne1keyt2e9K2hg7hOY8mqu0zh38QQkCXA6K8sYEEgy6bL8Vs91izB95GIVb0u
	 fFk+lpcNHdahw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F5EE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590055359.25799.7521489668034020761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107fb2eec19e00cdd33a4653dd9cd28a7a6a0a12dc17493d359620a197b0de3d
Date: Fri, 03 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735900553
