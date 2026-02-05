Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFFE2C21C2
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770259434; cv=none; b=DN/jzEYA5FT3rbMziEmxH4Vb3Zt+MFh94Ay2mQs9mdiAFDTuiOUg7+/4ntlM/xGOHYkHos4Z69aRxdPJk2RQ6VjIwRJBsQV5crpQHJWwg1BOi/dO1jrsvM+x+cPKwiPwlt2dsJpi2P7OWbekovkNjlOu/iY6Icd99M8bINHNxG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770259434; c=relaxed/simple;
	bh=gncgJkbO2hw/Unw9d/bu/wRJTOvkmqdnjA3V8aW5Awk=;
	h=To:Subject:From:Message-Id:Date; b=e7LQ5iDaBKTNet9C9VTKAk7K9yj5fiKsY890ZYDeRkJG/JjKsPficWq0hWF55YTT0fveA/e1sMl38x/gAJ+UdamWlU2svILF2s/10IRexG1+fOuVkSKBCyMoCr8hU9CxDEUFtKuheqU5mERrtEBn3A8Ea8LsCy1RJuDUTK0UCSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7E3X4kW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7E3X4kW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA480C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770259433;
	bh=gncgJkbO2hw/Unw9d/bu/wRJTOvkmqdnjA3V8aW5Awk=;
	h=To:Subject:From:Date:From;
	b=A7E3X4kW8+ndy8DmBQPEBVnb1dl+j+D8aJY1Liztiuhag8WEnwoEJOF2ym54InJGg
	 T7fbLnr89Dflz/N1pFueNQGbSYUVSRZtJFR0jIzFvcsktMvf9AhvUEhguV3FMIsxtk
	 dFj5vpmKTs31uo9Uj9SRambFBUYKZKsuwEr2j4A+DoGsUDIsLn25Qks7T9DNgd6Tnx
	 4hpr+XFTcQQVjXd57rfGQDMgsrYSTX8ozneZqQ75LjeBtJFBuktjx4WIuWsepTG3G9
	 lU+f4lpu8Aq1lFLrVqoeNi2U7+bFTb17fLMR2oLE0UM2JXFUPbNuF94He+wAPOF3Nx
	 fehv3OAWue2Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB3AEA7957
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025943376.7276.12486464785567991643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4b8abfa617c365f9292df39eebd26f1d07f16ddeee432828d2379f91ec7d65
Date: Thu, 05 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770259433
