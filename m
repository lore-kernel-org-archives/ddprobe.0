Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DA7299A82
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767175434; cv=none; b=C7C5AR5alRlI1BGwLLnOwOVlnj948bFJnAAuv0Us0yxZ156To8Q+hcHPqfwHp8qqERtoa/ByE49Oozu9NKDcnKOttG2s6XInRRN+jVTC+e1DXsgbCTyHJ1iiWej2VQVJ3QUMF5OX48BXdzqcwYriNZyt+NYYF36PlQ5Nl4xojR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767175434; c=relaxed/simple;
	bh=Fs139BW5cG7R3DHXZKBJFr1jaqEWnl3iWejcKVNLb3w=;
	h=To:Subject:From:Message-Id:Date; b=t3FdGZj5XOTWTsUA9oTkFhtrsEKw+1vtzFlo0IRcYXbFWD/Xksttah+o6PO/xPQZvWAolV7jeL8xswqS5w7zttgc27dcJtk1+1PWqjKjtlnKDXgBsdAxVhyUDMrUy3p04/HToNaNfZ6Ow1nkFAgXmAADgvGmsxfL8xybG/AgNpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEAfvZax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEAfvZax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3699C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767175433;
	bh=Fs139BW5cG7R3DHXZKBJFr1jaqEWnl3iWejcKVNLb3w=;
	h=To:Subject:From:Date:From;
	b=CEAfvZaxa4LHjv3xj9KpEdBjVJkuKRDfLOVsr1FZ+ogqf39HCl03FAMvEjQ/3uM9Z
	 FkCl0vuwh/ma4sRJH/j1bCbmx1XPKcXNCCgAt65tme0etn/OxaC+frO3C0ydHLiTfC
	 An8AVkBcRhvSkIv/G8k068UN6U8yS9qzJLap8DWQVQC9vB9hkT9CAWS0PXF6m1XXdd
	 wyI+/RctakvSf7YWb54KrPuig7uQShHfG2I0h+b53HbFDYPBPSps+wxFKX6063UEpP
	 rPPmrbVDnTUmNMBephwv975q/CkqhRvwWDE0/SiiOUfQgGtFyHLTJtq0q5GacI48Vz
	 ihbAivBaM7+Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A1EE57F5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717543357.395.6453795026555603491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c04aec36ad560cfd1b1aa072a03846a1043edfd1a28790920891c3a59ad446f
Date: Wed, 31 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767175433
