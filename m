Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE9A3BED2B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782503914; cv=none; b=UKt1JbGokECd1X6+Ly2lgE++MMl38TfibQeSob4moAWGM3fFeXtTk5/0a7HX+leAWELTklAyDA2rSmIR2Y4Kls03yGMuodkJUyJBnLw2nB4zfpdtLsq55pF0rmYTXpfw+IaujqUme8j6Z3SFRSVaocUZDXcQrDLMLlVP0u2TFW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782503914; c=relaxed/simple;
	bh=JfitNpGSLWS2DLrYwShvHcQSa6+FNfJLqJDc3o7Z36o=;
	h=To:Subject:From:Message-Id:Date; b=sn2xd63sImZtsaZsmJtOE1VWsy7wLP3pEujw6JhSN3zcLodElqFIb69KxTAnkJnG87azCNhjrlU932OtolPixE+/uxC+DheyoninD3QJlEVBmsqxSqihPLVDf5OjlRnMv2Aj5V2f02JsmGyJsPcbvMnm4fKVEooNGc9AaPj3Evs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRXT5hCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRXT5hCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE538C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782503913;
	bh=JfitNpGSLWS2DLrYwShvHcQSa6+FNfJLqJDc3o7Z36o=;
	h=To:Subject:From:Date:From;
	b=eRXT5hCeeG2fZMu9nVneH97lgfqtKUrcNqDeAXd2Ykt5BfOJ68cNvDtypFmnd9PiY
	 cYK7jSckaXxPZEB7XsIrHrA/XUBk1ydzyFWXVcHAhvJMCyk7t6CV9i6S4SQOsyVScS
	 b7x4ayHxSeAtejFsAeTQhWckFegqt11KPB9s6N2y0ZpyAHCpGC2RbC8yGfIA5IgzVE
	 GYOg2i5yEA+NPL/Y6c8ZA4ajMMHQoRu8NHAFacNxDNlck8S3VGwNMwtxBLN3cLesLO
	 r3ajOgM6w/rKMbNOpYsh/tSUGNMavKVUG5aIztZzwv4p0XWf9nkfgUm8YOYVQ1mbpd
	 t1ma3TbVU/Jpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3145C43327
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250391372.11728.14296311326742852927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7124fa20aaca0af663b851a356762e26fb3c39500a1dc1068c104c8fe19085
Date: Fri, 26 Jun 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782503913
