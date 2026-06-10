Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECFC2772D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781127394; cv=none; b=ttHQ4qtvmfFvF8oSAF47abuC3IK4TllCrswSppA+F1iSby47a7d1Xr2VM13PBi9DrzyzLIvu6l+kwsR3T3+NvaYqTJ+9HQJbZfxKj7vSkbaNp+xr8fuvG1CO3s/Bb6uBmgU7eU/vwWkm7ZCnmFioBWywZdhQZy7l1VL29WF5QA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781127394; c=relaxed/simple;
	bh=XnNigy2EGWQ9g4H7/Us0WmizdGi3n9NYmUR+h74/tGA=;
	h=To:Subject:From:Message-Id:Date; b=tTgR2jlh/LyCZUpDca+oqFMvDXE9+FYIphGo+RGlERrKNqqHM2Lmod3ozesGiklpjQFPPsFf2OausrYlzNXC5sWL+weUZ7wh0sSh0l0lXGb7AGYRUVHroItXeXqzVjXTSZ4Sbs7JtwjRVcWSUqVYHLNZV2w5ywhpcXtsVN6anX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qhbb0WHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qhbb0WHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82D2C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781127393;
	bh=XnNigy2EGWQ9g4H7/Us0WmizdGi3n9NYmUR+h74/tGA=;
	h=To:Subject:From:Date:From;
	b=Qhbb0WHKco7EaOdaEzC6OeW0R1HWqEi3rh2fUeMGNe/IexYOjJ4Eyu/msbPVTV7ds
	 4q6ZOP4+dmXNh/AD7tqEs81hZtHhWDJxnh+zEze4SbWfAB0OwKNfxYHAiYJ4Isfavn
	 rRXVHtc9McQD0oOokdQJ0AfOgOk4iANKOTO8AsYZzns5WJF1lIiyFWajcHByMKlgSZ
	 VMybrmu8OJ5C1+XYfz6Pc16K2pq/yCHKgsInp2z+B+1yqTXG3BlKGiAbMlmSboMIpL
	 jSt9Mdt3vyz4CRJ0mmsdGidBrfU7f/OFiMB3VULHaPyZ3HcSDyPZ0dZPDje/Y82tHa
	 ki4Eyz91/dSbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F34CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112739371.17458.9235369824710642224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6097c81dc05185c4c9421ecca3eaa4502879d6409eb662338432701585f8f4c
Date: Wed, 10 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781127393
