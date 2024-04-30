Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409231798E
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714447943; cv=none; b=Dbwy+KW2iCzzm4HpAZqZfjYv8OlsGOjDF+LJnyNYyRbS2jNzFVldGhuzsKRtaDWwBIVtp5TcnQdbaHEqnxKtIKALEmEnuk56LavV5MS7BrRH4XEBwr0FtXfXJc292Vp0dR6RNwrFIRx3wBkCXz6utYRmQWD4htj755lUIQRrXSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714447943; c=relaxed/simple;
	bh=dQi2doV5PQy9LBXU+SCZzGg25dUBetHUl/zVTFVVr4I=;
	h=To:Subject:From:Message-Id:Date; b=THujhZHJ//GLqc5BHI7KhMVB5KjyBIrb+Cz62CZQtZk6hakmAv2n17wbrohrZM1pGrBBu8mrubh36Q9AiokP4oyiPFhtsu5Ew8Tcy342FlVgMFYfT60xZPyMBY04w4s8MZfNUuXwPw3fHCrUJsRUguh7nU3eRDl5aBrm01C1QXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/qjdcxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/qjdcxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD32C4AF14
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714447942;
	bh=dQi2doV5PQy9LBXU+SCZzGg25dUBetHUl/zVTFVVr4I=;
	h=To:Subject:From:Date:From;
	b=g/qjdcxoG6UioefhXdjCdPM4QU2xdAvA0V2xSbLRJ0JVSQWURXAB0VWi70dmdS23z
	 fhxg4hTUWfXa1DjfdnZCRA4tRyw6LS5B877R5il1yUDyexqkys11NVMF5PFRtr54p/
	 JOBBdOix0z1a/v03TWsPEZablHyobsjSVwJak5a95CZuxDTfX0X/Vjov3IJH+AoExj
	 BbGIUZFTj31YL1BF8xgJaH2ZPhSvAaR4dhgWTHgSHapkkgaetjQogdT9H3AyhsdAIh
	 Q7IE+UTY5y+vGEDxgJOx436Vlj6U6nDqti2gK3uCW0RDckY3w8wZn1ltwJF8YHj4VB
	 nZH6jjjZppmqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE686C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171444794276.29839.2715163806021924356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18285f5701a50ceaf2b49e4ae55add649b4681d1690ff9ad28cfaadbdcefe8f
Date: Tue, 30 Apr 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714447942
