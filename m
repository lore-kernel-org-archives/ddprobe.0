Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434D021D3DC
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770815094; cv=none; b=bDi53BfNyqRBLbBCqRzKXLkvAvzvMJ/+LdYDBbez6hXmyofQcX0wXLCO3ov6LOpbz/eyp4qRkAX/zvwteLn+MlroMQPzra8FLmr1WQusId70NbDbjaccAy0EX8gnjoRqEkkwnYq4PBFfZEPjeetO9VyjnPifbumYZF5Gthl/oSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770815094; c=relaxed/simple;
	bh=uj3U/M6nKaigMOFZrseuXim/mAUw3v2X1SVSv/qwKdE=;
	h=To:Subject:From:Message-Id:Date; b=Prsn2l5ercJyxywj7PF+NLbuXXylWqGJjHKlXJ65QBJXVtwMATN6D4/K/lhEEsZ11VgM6EBu+0bfFWVXEsfD0uDmuLpN4M+6OqE2iLwUB4QPQij6WPsJChWoI8mztmnhb7en4INeXHeSOaO/AbeHCOkV74Pr9fCWmbyGvi3qcHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+mLUn5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+mLUn5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E0DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770815093;
	bh=uj3U/M6nKaigMOFZrseuXim/mAUw3v2X1SVSv/qwKdE=;
	h=To:Subject:From:Date:From;
	b=F+mLUn5IPs9baybzh7FH+F2EC3kIspwGoSJnw3e/nj14MAEbLwbXxmy/OyPGnAFoT
	 IIuK2RNacS7yAYs8jqgmIPqewScOdf8YnHZcQvHWNbzAt849NuBqWuR1DD7oW5fXJk
	 jyDPXgnzTsn8WCUxTFY9ZBujnS8EDFKVLeZzMTvq43gLyGUb1G7x89rJ+BGhpdxPRH
	 je23M5uKqrlhfC0eWjs72FXj3RCp02ol4Xonf6bgyWF+kAhMUuLoFN9uwUllhoLNH5
	 nzBiN1NbTkMGms93hLuzRArkKarA2naEyqbG/ybSc/6ijweLleLcHN1tdBGadIkobK
	 yfHlJSIfaMYRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B798E9E302
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081509362.27933.6401785234916381120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0b007fed90e999e12f921d021f776ed7ca74e5ac77731d52955d7c4917a40b
Date: Wed, 11 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770815093
