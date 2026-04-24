Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67A236215C
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777034253; cv=none; b=p20nwVu9zYd+Ss+o9PueCEvI4+UNDLjzJ1QFtv8TFuHCAtQflgUUm4WKEoounZNVaddcaHHH7Q5beqAQK5h88zQmFiCPy82mPHIq4OggQBgL1U3QFI1vGt70TSDYWjreGQ5wDF/i7Qa6cHi4LwqlIVl+JQbpkvOxOLdrx3uUPAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777034253; c=relaxed/simple;
	bh=nBnUAepQGup+l4NnY8RxTDgWpr89tIxf540aA81/r6c=;
	h=To:Subject:From:Message-Id:Date; b=V7Jo7+XCYiJzpoWhu/5qa00YArnJDpsgZ3rMqFfNly7fZP1vKFWEdNwJM3EKRp+XWf46GIE4J+NpEcXG8bEh/zUaVAvpdiKegD3XN74hlbUQB9m/T0g6ialPa+kgv2mUesFEj3UQJyMm0M3TutQpj4jQ2T0utItQFdZ+nOGWR9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLlPSuzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLlPSuzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8739C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777034253;
	bh=nBnUAepQGup+l4NnY8RxTDgWpr89tIxf540aA81/r6c=;
	h=To:Subject:From:Date:From;
	b=MLlPSuzkKHeDoc3AP4+YMDpf+75WUZwmS5xvwCigQNrzOsNQVyOy56IzNqf4pCFs5
	 ZAXOtBtbQ+muCganv5lPlU2ujX85sgUtQ9H8d4hP0V0W4lXvbvYEILatp8d5WUHMjE
	 Y45YmtTsyNhlHrpb//p8iXoa8DclNvtOVpbVVZK3920utk3K3fh6Cc6MmiTMktmAcJ
	 WjWeFtCg34W1z7I0Vw3TVV7XnBRsvd0zJCtR13M3aDm49O0CNwmmrst4mUPsFqFbpI
	 6bJxOXcM/qGkrvqDHDQtHtuv14NPMVkJTtH2y5KmSePZUMGXqSdWoz2Mw5gRMybzp1
	 EQKagbciJ3i3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA383FED3C1
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703425368.19508.4512358141807781849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48313e16dc6c422a91a10b2771b21b4231bc25e73a999d0e7aa0d5a13570529
Date: Fri, 24 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777034253
