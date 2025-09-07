Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364335C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757260194; cv=none; b=SLdfvcBJ7jdFpHvZC3a79F8CqILwNR0fGZdrxj21MazvZsBPTdKtp4CJqriNazKNdcVUfxIowdz3nHTV9Q55x3OArn8xJ0W8i1mk4s5owtLheJ+eEGdLmHbxweIX4bA7jDEJnxukG4oux7oWxAiJ1Wq+mooKdV0koE4yvJXIgpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757260194; c=relaxed/simple;
	bh=Qu8Kx0tLwvpBGAkycPqpvtVG5cwA3W+wP2MgPPU+Y0U=;
	h=To:Subject:From:Message-Id:Date; b=MNfT8FIScdZGqpZdZy9bX9TPEDs1b1VHJXVC8yu/S/t1EgaljDxTVpB9Cs89nquoJQeqM8UrGMEez4VzT7TJCkJ6icMkpjpyc3sCep+n3n9wj3XIoC8JTgIspaZm6KqyMEH0Gad1/EkPpf7+eRZRospooV9Y68XI92Z1nAV6IGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4Xbf4DB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4Xbf4DB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D39C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757260193;
	bh=Qu8Kx0tLwvpBGAkycPqpvtVG5cwA3W+wP2MgPPU+Y0U=;
	h=To:Subject:From:Date:From;
	b=m4Xbf4DBi1x0Yg8g028VYY/OECsqHdIaKFthSz63HAdyZOh8yy1Qjy0l6w4Ybvws9
	 4bSBEd4VTHtDxfBPNOVxTUEIFqrriBMFsYJ4FKbRPCpwqtjbmOOLxf67oN4VO+Ejlt
	 Pk98hPea6+1GDwCILIIj/1hCbCXncm6cdp95xivN2lCBvn6yZS1ygMevxYPIvx0Y1G
	 GCP8MyD9xsHhlq0x823hMyz9eWuw633Xm3WOsP0UQqE4z67wulTTaG56CLboD5x+NF
	 xEMfDBYPlcwZwMIBW/xBJ6Nj8cknAcIH6wDb26uPPMk9BSi2mQkw6koX/8XsSHDB15
	 6zwrkTYaFeTdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FCCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726019357.19890.6780760526737993580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89b0a8dc99307b8692abde337cdfa5f6af0bb692cdf19e176647a0fccf74672
Date: Sun, 07 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757260193
