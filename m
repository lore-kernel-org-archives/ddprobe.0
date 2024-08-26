Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE975256
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724636754; cv=none; b=BD1LsnPhFbGbsXG2P737pR6lyRt8l1Enl/hXAYc3NXh2zslF5Il5ukuxFTCcEZSnA9nA8qq3A/bRZz+Hh7wxnqzxllGfClwVAxx/2NRAvOAJ2eNR8Kpu8LOGGZJNwC05uJloD7qGh9FOkJ/v3mcANXETNIL/eIOEcwRxZe89SWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724636754; c=relaxed/simple;
	bh=nMlG/t4VxBNPMVJzAPiPrBU0JS8ZWSBdfsKPI1bdgbA=;
	h=To:Subject:From:Message-Id:Date; b=OupzyXxn53D14FOkPGFm5U75JPf0tT9yodb/H9vXIxolaKTyzAK44icAq8ACyqy8l4yu40hOZjNoR45FcSYREwJmbhR41XMP5tHp4T1LVWJRwaPQTjGTDD/UIEjrWTbgEuo2cRwefN0SeH/25u3ltsvkQ//tbHlRSPs2eVizudY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8SwlOyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8SwlOyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A871AC4AF11
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724636753;
	bh=nMlG/t4VxBNPMVJzAPiPrBU0JS8ZWSBdfsKPI1bdgbA=;
	h=To:Subject:From:Date:From;
	b=F8SwlOyEe1Jq77Irpexc9SIYphEnb5AT/c3qCSYSuR0O2fwpGViOM6HWfeo36vZe3
	 cwO7EkMOgAwfq/Eu24Sc2Uxabz+uZKb83nB51DljPZd5of7N1z/h2VVXCOuB11s611
	 a7TKMUT1D9pI9OEUnFqR7MG33Y9bzV2XWFmcpaqH0MCvReLs9dHevHAVJNodNuRWAX
	 QBqW0geBnRSXTT4xqa0dFYo761m8VC7GU0DPIXbN11TNHoM4nu8uMNfMtRfXJ83E7I
	 rFsJxDQM27jqt93GU6Rk/o1cu3nEWjo3BWZpwXw1whVlooF7gygHrTtn/tfuGCTeMn
	 reIOD1UAuaOhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A99C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463675359.7130.14802579353151443906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bff7dc23c5a77f38bab63ffa5327258d474c6e56396eca48522d331447165e
Date: Mon, 26 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724636753
