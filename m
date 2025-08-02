Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8DA1F4C99
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754146194; cv=none; b=AYg+07RobYthP2rOlniz/aUrsZIFtnAQ8uz8OtvuNBre0h8Z0nJZn4OEosJueYwNwbWNWmCtohC0jYFXQZ9H3c+/6OkERvo/ci5Br40sxIRZ4BNz7uPQpSPWr9wzWH4E0f4BO6vM0tcW1MbwRg2ygRdVYttXMpfZPS2ja7GTC/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754146194; c=relaxed/simple;
	bh=YqlMxXZzvBJSSZbn7q+U6EOmCYUwuynbCGXJED/b1uc=;
	h=To:Subject:From:Message-Id:Date; b=hB2Y7I52M0Tz3MLViNCVutx7yxgzm2JA7HaEJ77ncQn4xmu1UxieHEnL1P1bltxf7PVUuWSaoocdO4iEFo/3xwCAdudj+CEj9A3/OjV8TYH90Mzte48nEa7megrn+wOPPR/PAROd8JI8CE0aFl669oA/sP3fgq8v0U+wDl1319Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNzANBv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNzANBv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754146193;
	bh=YqlMxXZzvBJSSZbn7q+U6EOmCYUwuynbCGXJED/b1uc=;
	h=To:Subject:From:Date:From;
	b=oNzANBv1UXYeANdgr9cFn6XdJmbD6GoTzI1kQBq2og3NtYslSrnIewrx06KFIuvLK
	 nlvlniMEQVYZFYi0Tma8U6AVS2N5sL7Nlj0d4/sJDb/1Z4RfZqi36ph0ukkJ5pteNe
	 zcbwhUXUulsNuexDbBEgP+hU2qi4E0eZaFD8XvtFutpvy+q2I9KugVeU9y3RVrNyNI
	 /k/2hWA3m2gHgZrwJfHkOK3AIEVzDpmndsmo/J3VRu23I/79DlQdTyil/bYOsvDBml
	 wP6sPHH+hHDIcM8IT29xvaO0pFszNOEqCI5c8DzCdrLzRqEvOMaH+QWoiht80ZLTny
	 w7yihXp2kgfhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3DC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414619358.28305.9132220039786015697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c967ce623767e02d5302b84c973d3757dd80c79654d072b601537ca90fad83
Date: Sat, 02 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754146193
