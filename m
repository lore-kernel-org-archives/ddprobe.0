Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4178B1DC985
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782526114; cv=none; b=XuZTT5S8JPNVSAA34Jb/fE4SIumASeHc2ETJFbCEUvJDXpFw2VrKsRsN8YiLGSLdhIZerctITuDwKD/BPlLRN8dAiiBMZdmdMQj4DWaf/HzqFjtWtVOY74AG1IP7lBYjKekUK59/CgAaffNgTB4Vd8CqSQ1rxVZdR86OkPEO2r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782526114; c=relaxed/simple;
	bh=e3EMIwPKc8r3uQU592bZMfToYW3sg65f/wRzH4nlcfg=;
	h=To:Subject:From:Message-Id:Date; b=Gn2f/WfbAMZTAxAfrN5/RkNZXoTqSOUVQKiAzxRvo2kJBZYAIwukE8zvvBdSZRGdFMhGCzwaaXIJYlQAMsZ9iWTuevURoUJS91ZKsEzoFxDeHIWfHfHDouVcc46DO1KNuXTw/sc2sTKWrJJDgYxK5KgFHsH7+kYx17Wu9Z4zFYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pg0RM04N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg0RM04N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB649C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782526113;
	bh=e3EMIwPKc8r3uQU592bZMfToYW3sg65f/wRzH4nlcfg=;
	h=To:Subject:From:Date:From;
	b=pg0RM04NGO/eWh3PWuSIY+otWaBpNtvree6mHpGxXyZM1l16SNCCwiw03EBY/p9vq
	 IQ9i2+CyEL8/q87YEkCqL/Cnc2h6oqANNpy1xGOBkFKfGIdOJ0pWE/g4LMSQe5Rr7h
	 unWkvTz6xf6Gc6ZQIoqHOqX1LztXtuvIIApFAYmSOS5bq3NIuI+1Gthe3kTxXuHDzo
	 5RfKhovR6zt3vfihfXIP3axkhmiDUGhIJzeI88UBv/wkDG3VMI5X2X+QG8Us4bJsiv
	 WAzpk8Tv2qGupqsWLtevnZN4z0kylGDgxHUC7Ec453QBe9j7859VVG5GwGxWF2L1GC
	 eqym96V7L4tSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEFEC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252611371.21999.6335077844251046798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daae4e89892278b0a84b5e19ffdc6e443694e9de39d1b3061437baaf79a0be6a
Date: Sat, 27 Jun 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782526113
