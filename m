Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1068626E71F
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754840395; cv=none; b=ULJUUJMl2DAAHV8dl7z9bHLzhQi04MshTdEQAcjseOl1UOZw/u4hKDbzF9nZbaOFxGq6b78HAxrEXoEOF6rGfmtar9+/ZEvTqq+oTCMG3LK9ChZTLGIwoHnQqoZgrl2xxP8VzXKZbiy0S9fCf+xruHCaCYvYrMOB4SE6R/BlrHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754840395; c=relaxed/simple;
	bh=qurvKqrzMVVPUA65uLRqTDrYXNdjo/AIl9eciIx9Nt0=;
	h=To:Subject:From:Message-Id:Date; b=Ktk4Gm9wPktdOObmYHEtbjugrXTcrKMYfSFzXG+gwNnwYVSfAUPUd8Gc7VI7SBNpkpmFhNcJJ/WD/lncTYu5KNDhxzGqAUNIiVB5rCDFFQY3y8mxECyGSjKxsgtEbw6PrzQ5bmZOa+QSXel6/OJYECBJfxRs5/8ihZrUxVkf0y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMhEvpBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMhEvpBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D88FC4CEF9
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754840393;
	bh=qurvKqrzMVVPUA65uLRqTDrYXNdjo/AIl9eciIx9Nt0=;
	h=To:Subject:From:Date:From;
	b=rMhEvpBzeCvILTFKcnKY+gpP9Y+fn15hlKMbgW7jdl2mU128Z87ZjcVuzV21RKmxA
	 tob5NG1JR19ExxbQL1IdyaqVeLz+Y8UbXLRa+wp6WT57n4vDWp5DYGw5mTwQs/s8KY
	 udDfDcqOZ2XxveHGXUrK8C4Py09CwLX97XLVrjH2c79Uzp2QWLjN3xBU+Eq7Tu2+o5
	 G8incjO6qC9hYXSdHtaCKHL7+Vrjh7idMOu1Mwl5fD3IWL17FjgrYat0EaQtsFHyjj
	 7C+WkWCwZHy96w+92SlBtTPguMthoUirGDZ8BoPvnI0yJLX/f6vCT7kd3RROLW/llN
	 BqdzcOTJAtTOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E824C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484039357.14696.12864477337479580703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a21b1d736c451acb169e63c1a61a5e4d4c174bc318c825381994e26400553c9
Date: Sun, 10 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754840393
