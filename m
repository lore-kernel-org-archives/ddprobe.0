Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3711D32A3E5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788267634; cv=none; b=LcRXvOH0HlZ8hyohZLol108Z7DtJRocwgyPxpoMeLeWs4LicQoM5qhB937B6yAWiiBwwGpAr4VgKQQXrFA+PARlSYq7QWZmSSXn3aQJgoJSTubYTNIBGWLFy8feQ8KP2gH0yFoPf6qhdl8ilPPLgaRyXRrU11WY+qT8yg5vE4Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788267634; c=relaxed/simple;
	bh=Q43JhWKJuPDVDD1rs/yPSAfEkZmjbObmlhiCSl3XRSg=;
	h=To:Subject:From:Message-Id:Date; b=q1ZZgyW77r0R7QqOATqyrcrtckno25aPiiavcApJvj4NM50fLhsecOiPlY+m7c/kiBn91g5Y+hnQEvecPgd5zhC9TlWG8Zip64pBF9XZWUNKsrC/GqOg4qSuishTTt5HBceNCWBiNqlali8NCw8S4U+yDY2lI26BqFmyb78uMfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXUv12UO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXUv12UO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D713EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788267633;
	bh=Q43JhWKJuPDVDD1rs/yPSAfEkZmjbObmlhiCSl3XRSg=;
	h=To:Subject:From:Date:From;
	b=pXUv12UObg/3PeSSd2ZcGkAmBQIJ7U2Bet2H30RWhrjXkaFJ/oF/uifx2R0Hu7o5K
	 k6MK4oSPGQ4teBfl0mtwBeRUB3w3qZOCJi1aHe9jlh90x8lulp+Ei7w6c8RCNhUbEy
	 VXZRv65rGvnmHA7xpgzggCyiiLMhR6KmbFzD+M75I1799ynit3xpH4LUjPX2Uj5A3w
	 BA8VhDbhKgihTPljKII6XooxTFGqDQzOJoZdsc8a1HyqRskDPt5BDZN5jk2sagDaAV
	 otK6q6FNfzrclArfmV6AB6zQET6q+yb2tHbGETfW87O2GMxdxpr51bwGwaAoQ0Y8E0
	 ftcBMaF4k5QkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC84C624D4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826763368.18426.12068500356975082121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 112a1f4fa2912cdff5bca4a9e4f64bdf6426e010916262a1d0f6f16475ac7126
Date: Tue, 01 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788267633
