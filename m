Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6482947F3A9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791143434; cv=none; b=na8nfECmFnHGvtUNbadc1EvJXBs/3Bv4xD4WM3yVqTb6LqbEXYTh4BzlCGICsa8YF5CUkgppz6RIKIDnWcOLnw/SOgTmPNA9V77U9YOeOwNAC8b6ml7G5RZib1F9lM86xAmFMFFb7b3fi6lbFit06aXGyzJHg947QX5UTFh8xgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791143434; c=relaxed/simple;
	bh=VgOb3m4O/oobIghsPbzHITK79SMvc86Ypc14GrfVRdM=;
	h=To:Subject:From:Message-Id:Date; b=Th/8t4r3AljMXkNZBSXwU06RwzOt+V9mOtV8YRKjEgkD3OYrYCmNNnzTv4CHNzjCcuMSucRdNtrfr3gRmWIYsBHCsSHXXYSy5NMHzENi8VC+gAzSGPi8Idbl9fu2a16+DwqL0UX9HxDFDUmYO1ipIX5vOjDrQCWKwY4x+f/v0tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqGvcUJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqGvcUJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB22C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791143433;
	bh=VgOb3m4O/oobIghsPbzHITK79SMvc86Ypc14GrfVRdM=;
	h=To:Subject:From:Date:From;
	b=UqGvcUJr2DVpUr7dM4v09dWIPY5cSkbOZH0xzbjan0NDrNujlsyjkjC6KfBahiMoJ
	 w+P6Et0jKcFai8K1vtdUSuuyh8gbD6iwai5Yw799p8uqmEaGiu7NrjlQf0sNqdZCUt
	 T59OTAZiBnYiMJNINa4m5RP9S5NSyps5TZbVGDDZ5b9AGcTw96+FbQ9BcUfGkcQdOe
	 gKK1r5EHTclh4GwuMhHSJFpyG6Vfu0+i3YXpCiKirufcDogpPJ8jEA04Pi/YAJkKUS
	 0U9SUzBej0Z8WP1bySyfRaeZw4jDPWbN2Tpq7quQQ1Ob8eBRSWTyPnDdMNQ5/l0rAO
	 K70U2iYW8UpvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA13ACA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114343368.23352.6388436991932756870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500975603e548b45b170dd63ae1cc6e3fc1f85ce5a36efc6f6165964830f9a70
Date: Sun, 04 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791143433
