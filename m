Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3FA136E21
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729633554; cv=none; b=BtfKZtKkt7SaUPif2DfJRikWpnJ7EsEps8g4t8utJ3vgwPd9oouREYWF2t6a9dE/E8A7wtgPPqT6DkkwV/IrlG7D0CwannFBHlgAv/QoiTfSO1/5VYRUFxccBXA7emJca63MPIbb9KZeJMltgEO9hSjSugn1/0/tgk30xQd2AVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729633554; c=relaxed/simple;
	bh=Sbo2LFottOSbIW+X6pfs7LesFvQctxMgV5e0gvYr5DU=;
	h=To:Subject:From:Message-Id:Date; b=ZznnDhsTxAMPbMfQ1Efop/64uPlvUjFfFQsXlkOObE3XlVeE6qCJgX8gLCaIOwTqlfN5aRhUk4sBGAWzK+azsDZ8XrwV/DWf09zpmkgclhljGdnhXVFrgS1eEMnupAYeSCZU4TePsZMQluNGgSmnJ3x1qaCR46OA4tAH3Bv4nU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/Ev/zth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/Ev/zth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2417C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729633553;
	bh=Sbo2LFottOSbIW+X6pfs7LesFvQctxMgV5e0gvYr5DU=;
	h=To:Subject:From:Date:From;
	b=W/Ev/zthSBGRTo6ND7kQGcTTCXzvkwEGvEAXoCQIDmlfhpRXzswllp9Q9sD8uYuKz
	 65MYZyiK7pAhXnolOsdz01pbY88WJprbeycDeDa3g1CZqtuCoc5CPo9Ej6SM6T2Qcv
	 io9F79WfHHQBp/M/hRxspTSwmNjOzcoJatUD8rzgN3yDvAy46yNWoxpZtX/4P3MrqV
	 /efMF+sG6aBZF+OCeP0h3xKgx2M02tlGiO0B3un6zgAJ7QI+TP/G8cOIfggkXxQXvm
	 cjuShFPggvDeY/sm2VMvy2F9UhScbbxPC/lyUt1sI16cTocJRcEA48gRsDdSPzYKEp
	 CD7FHBUuxuPHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E74ACDD0FB
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172963355363.13100.13820665687307885955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27def8d08b2c45ac605e5c9ed481955daf0e146d5f9b7ca9e5baac269c558c10
Date: Tue, 22 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729633553
