Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128521DE4E0
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775882854; cv=none; b=OIr/Yo59Pdqeh/gO8Hdh+D6rgfbn/qM9aulqtpkRGDLxabOI06ne+exuvqEnBcY7PeMRILu3uLq2Tlgcp7/xL6elIvcknbOh7ROOPvZmcxHNnDl0OYk/aPzdT8kVyqgmQLx5J4HYSa6kLf6SFZIN7F/Cq81pyCZCS4eLds9pSQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775882854; c=relaxed/simple;
	bh=DZLUiYEQ2pvC9Mkvq2ed0DzGHJ4yrPtElBGoXUcDADM=;
	h=To:Subject:From:Message-Id:Date; b=DATa5fLCTpgWGPXIO4iIxCgObE9dcFGZJPGZ3zpGvQ5q68UlxTr14v+TzzBCZhMccXDzDxWeLmkP9uWsJjr3ecq+8JX2gozZGL4kBP/nPVfH4CDQTMp12usqkVAAnJIegC+tSxnTZ8DPS2Lmo5pztF9EjCDWE/Tep8ntudTAqhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBovUpQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBovUpQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB74EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775882853;
	bh=DZLUiYEQ2pvC9Mkvq2ed0DzGHJ4yrPtElBGoXUcDADM=;
	h=To:Subject:From:Date:From;
	b=SBovUpQlx4J9+BOLtoTIwUCUXAeThpZaItrnb08EeHOeo/KPOriIyCapF34CuSKlU
	 ENIaejSKBvRrd5jDWzWpSeh2fcNhvhr3REZSehX4mZlYH7OC5BNcGMT8xgji+V5HWk
	 340xWzwrUbrTf81/FJCpkflT5w3Yqx7EurZz16+m7T9h5yt4mmoQzvc40T04Or0wK/
	 EXdjvBQ2MGYUBwI/qKLgtTdZ0lDsjEDSXRRkrL/Wu/OLIJCoWuAexgL3aWseSFUlwM
	 be4Rle0+M10e99RBhw0BuGufZHrt75mflKO9sZ2LL2hsxpX4HxkkjWaxsEpiT8KWRr
	 z3HdovMrBCNVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A903AF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588285368.6670.11076367994095017696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e73dedc9ac43ab42a91a273fa2ce818f946f979e8fbe56b374798ba1eeddd1
Date: Sat, 11 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775882853
