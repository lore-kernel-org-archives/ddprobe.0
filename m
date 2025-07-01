Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C75E270568
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751363994; cv=none; b=ERJsMSc1ldsIRHQOH0ENIpYE1FusATKD1MkdbfKxw7RLw4gfspfYPMWo1PVrHPjGnQs3qWJH7gAy61nFe1Fufn8oBWXWKOZtznp8uSdcEYr2xPGao06HPH49CA8laJ2wFG588046pzxCGxV0f341RbpuTTGfF+tDXxlyFj1ILXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751363994; c=relaxed/simple;
	bh=cvrpgVVjBN456VDo9KzpNevRXP5Fq//OZIEVpAS3snA=;
	h=To:Subject:From:Message-Id:Date; b=TkbIFvP2vOA41y4O3+Y0yKo/dDaiXgSDqWAGZ2p9B0EbWbXUbsZMDBix5tAVveT77jBY6ieYISCDECgvVbAAe5QTfqOn58rolgnlWDN1YVvAFzpIxI9+BFFOmFw2RpBKkDCR8mL69obZAABtYZRd0WXoIzrNGH7Stlw5hVEmj5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgQUdCDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgQUdCDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD5C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751363993;
	bh=cvrpgVVjBN456VDo9KzpNevRXP5Fq//OZIEVpAS3snA=;
	h=To:Subject:From:Date:From;
	b=SgQUdCDDRzt5xv/rY++HyrZYn4LwOrPXEdCCOxrcp1hzpPzyNAjbHEhZUMaE3JsU+
	 A0p6wTjyjjtm0qi3NAA4StAi27MxiFpLrg23nJGeulX0Y7NT227NFj/H83E24nAOUA
	 JeX3fhwDHttiBwfC/vd/gmNsqHasHMxS6Akgj8Coxt6ovhm4WiTrdPoVlPy32g9O8a
	 EaHE9MXfTdwZ9yQOzjnWInSvHG2v30IvCJybXQmD1lNhIgBVbmFkChwBSz3ea5PwCm
	 4EYLCsZAnkVT2RlG2b1e0zzrhQzvxWeRQThHR6m6hfUZ4hUcS/CLI+MMN9SxsJhNr/
	 I69f6vcJyn7Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F3C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136399357.16496.16946926193841738508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa77e529c514c9c681f6a2cade94a2ffd7649435ce7d80c428ca928e2dc3a46
Date: Tue, 01 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751363993
