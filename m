Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D267249EB
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775890054; cv=none; b=AXXWf/zzweSeD8rkTAeLDfNvraf/j5hNzvUfHVaisDlAOmfE1GHv4oWHaX2rHuSr4mmqZ2pf2RltXdbQyPwSx5oq8ACXB9VR5lfHTHibPdpKRsFOh6k8LJOTN6zLfnsTCNkVZw3Gskn/Y0i5reyGkeIgr2kmGnkgFuD0Wt4Co7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775890054; c=relaxed/simple;
	bh=ED+sekRSfidHewnMJHGyJj++yISj/S/HYiiRgY9zs3s=;
	h=To:Subject:From:Message-Id:Date; b=UryYBRa/0DIOPJjyIA4z1QcGn2kTEYDrh55tZz5oI3u6sPsELxRvS5pqZ4czoE9aSa9UjHWlw3URtWi4PA15fZns4bDUNRUnMg1EDuLMLMbUDmqVEUOo4R4fXBRtan6GVqVRiuM4OuexJvaitCv+mwUf8pSGglsJo/unX0lBI/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1foMetU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1foMetU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7F9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775890053;
	bh=ED+sekRSfidHewnMJHGyJj++yISj/S/HYiiRgY9zs3s=;
	h=To:Subject:From:Date:From;
	b=Z1foMetUv49LHA8r481/3wuaLI3f7nq8a4o6dr5vQqjfKOzoHL8HFHrlL4ZEWQYMG
	 F5Bzh5Zbb+6LO5xcanOZNXruz78CxqyhBzQCR3nvA8zWTBp3MU5/YPpSWHxMZBvxAD
	 Az6bxnQYJY+xrNo42btqivi1DmU+Gv3nt/JQSjdoaV2rctiCgfFL6JrDCbnUVkEr9U
	 vji6ADmHomii4wl6rf3ihhgxNZmqWsBWwBqbheZD0nSop2PnNGs+fNXyhF7a59yp6K
	 81bISU0EXggFQy07ZZK4egaKLzQCCI7lGPK46gqCaial90Ib91voiIbNl3wTVPmyII
	 upsL8Looxr5hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD5DF45A1F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589005368.3494.1208698819691565286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137e0b64a36756dd8cd93147a44f56de91edd6af88229b9dd28dffaf014cc2c5
Date: Sat, 11 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775890053
