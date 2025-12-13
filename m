Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267465475B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765636974; cv=none; b=ZqMRaUVZNTCT/mnjBOHM48WRsxLTtRrLzgdeqnjbNsu9bHFpM+u1SJnlg1SYOstpsQT+U4p9DAgS1/tcmkCcl1m5nPmZs2X63U9X1Lj+wPhh6GM+ziUy+xdMXMerj/jTeEC9ZOAhojVY0te1Ru+JnYnC6pvR3UuTo6pfKmT5tuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765636974; c=relaxed/simple;
	bh=OrGMZRlSnvZAfkUZAbJp/L3dnEcqD8Ki7LqM0UJat34=;
	h=To:Subject:From:Message-Id:Date; b=NKAwKc+RuZw88hxrNY5GN8AhVwYHt9lpncmdF7g6s+lRRKtBc75Di4Ya/KokgEoav8E6m6dLK8XVe2PKrtE5918wBGlbAi9+D4Uhj8ANfi1BLfFe1b93RJBp/5I3dZygP4fCO9cnTy0WmN27+xIJqg3TiA1mRbRFMEKugEOaF7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeZKCMRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeZKCMRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE06C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765636973;
	bh=OrGMZRlSnvZAfkUZAbJp/L3dnEcqD8Ki7LqM0UJat34=;
	h=To:Subject:From:Date:From;
	b=oeZKCMRu+h1Dnz/hjZM03mLEiCZOhoaJZKMzz0flKrs1jIvWN7O4kr1iy30GtrkVu
	 yBe05UJAGp+1zI5HBqavCHMbvVL8L6qBrrgMXSYhSj9csCf5/TFK07tdHs4TGKSpQX
	 BONkH6MWy4aI5PKuIwI9rriqc7qwKmZEaNFhr631okqNQJx48CCKJOmG5sLVDzkpkE
	 6g7idaklqh5Wc9sVRsly1WYFNtzl3APdqJG2+PZ307n27AHofXxvgegk8esR4hiaqB
	 gBmJaOsZC4PqEG6SPC8Dd+9C27P5a05JI92z9dcoIL2lBAHDEBaGTo30fXRSPR/o6O
	 FHBL5BfA6MNtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9430ED59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563697358.19988.15103542583628199384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42255ad09ab20718f2f3fdac9fc4671cadc4548b83dcb9488a53ba4e489eaee
Date: Sat, 13 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765636973
