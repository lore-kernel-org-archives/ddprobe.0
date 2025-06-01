Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE8C1537C8
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748791794; cv=none; b=tnQOtnLuaPnulpaa7eODk6caeo0Hb41iRP5QLcE0VyaxMGrtGhscojHybViCWePQr6I90pqKbZh6adjpmt4MLjL/J48hrErYW666GDFRUubcKKFIUg648QWffQClrT3bWFVTyQ9pX2s65iV6jmrQw9Vi4zUWWbhysujrcDTJi84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748791794; c=relaxed/simple;
	bh=ZuFimymp5Var1vwINMjoR7oNhWDTdFMU9xmOuu6vHnk=;
	h=To:Subject:From:Message-Id:Date; b=iI0tYDFv7l5IFbyrEW+RReFWzonYg6q/duWqnNFat6StdW3vLeEl88W+E6aRU9enuWQuCZJ+mlySraIMYyxxiBJm5heKEfL7Sc7mj70kJuyCqZQSoMgW8jy3dNIdwvejZdkzuXhy0pnBXAcgPSoJeNYJuRXFvEwVtqIRfP8uW1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eN7GJjK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eN7GJjK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EE7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748791793;
	bh=ZuFimymp5Var1vwINMjoR7oNhWDTdFMU9xmOuu6vHnk=;
	h=To:Subject:From:Date:From;
	b=eN7GJjK7MiRRNSXO4FbckxNf34kK+PvYyQvWSd7jpPcJtXH9LgkmIoCj6NKPBC00t
	 MtPTI0PAq417PTurAQaOg8A1X+QFSN2A04wJaj6lTivhZXJAGmGlNgjXW1LQDpZ4zs
	 YwJClGQycjTEdk7RR5qU8yHkBdTQadk6nbxGTOvTNUhfhBBsJ87tEAgoT4b65nehLc
	 clb4rOHwSCrFH1hq/3gDuJB5k0BYFprreVopERYaK9J8DX9MMCIwIa3GUVTy9iM1C8
	 +7V8nDpvoqk0rj587mZCPBtEA+3IaRc2vtkD115pI8dZEy+Ayq1iC41udrAr4pbUvR
	 SteasbslgqtgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BEC5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879179357.18213.9169598938052045630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d883d7b16117b9084824a3808c90457810f86b4c9a94094165f6f0d145ae557
Date: Sun, 01 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748791793
