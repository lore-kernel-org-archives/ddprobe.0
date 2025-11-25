Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2123336D4E8
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764032574; cv=none; b=lat6KTR+XQTy5aDsCmr/NmRswgiHaKzxKpZ6rdNRyvHkkvaIRRprzvGZeGByN0az3FoQ1Ndoag3dReopYC2C53RRc4e9fE2TsDr50ilrlVTlzoyqBUxmXnDSaCG4oiddkLiRdj9PXZDsHVw4erSeovWXrIK+4vK6j9aevkSEkv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764032574; c=relaxed/simple;
	bh=uwPxbQ5zgwG/2uBKInAZv3ogiXIym33QLvQEhevqS1I=;
	h=To:Subject:From:Message-Id:Date; b=bwDPMJzbKfOKGx7aRix3CF6iSB/guP2Dcgt6ajXdoNLWLYIAcNiZ8VyzXYyMiqheN1G4HsR2qj9UbsDVIfGt3vqlH9GmmDOR2moQK2fPUnNhOKVxfhzt2TTRxfpZqXYgRaC70qih73zESFeoL1mJ/DuVADo1xZpMlgt0B/j75oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgYRRzWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgYRRzWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D25C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764032573;
	bh=uwPxbQ5zgwG/2uBKInAZv3ogiXIym33QLvQEhevqS1I=;
	h=To:Subject:From:Date:From;
	b=rgYRRzWfMfP4qXjZY0LfpeGZCE8Pz5y5n/j1BfAYeYKtAXY5K7CQL7LNcY3Cn/MLo
	 YnPJrtnnSlec6hNFM69hgXi+Nh9oaBEn/WiZxVBKi1522CaHUUONnMZm2E0Srf5Tl6
	 OUd+W26kDPDBtbI3GUl2+f4Mt1DAYI92QoAMXLHoN1V74IMKm5JsMKO28woCyz7xg6
	 XdCpH1U/KYk//0flQ1jq+UdDN/XHofPa32PJgWzfly0gNqWCPHpxI/xPJvwaxGi4Dp
	 dT53NtNOS2gs9uLePWSncT/gcz8U46IFgFqCD2bwR9mV21+vl1vW9r8TbtXEkqzrZZ
	 6EE48gi8h/dQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A62CFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403257359.22425.6004625392140899916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44626400963f7237e068f2f18a881517ed1d5c3537e3a5999600d4a5b9e35905
Date: Tue, 25 Nov 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764032573
