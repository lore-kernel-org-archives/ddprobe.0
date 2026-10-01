Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4790943B3DA
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790858434; cv=none; b=iZ0DVblaLijsO0Sr52gAJ7nQi3TtxLzjnKm5Zx3idx23idwW91zlbJi+3UV8uy6Sqr79e73vC6SZ35AcdUZeKrKvD6iY9I3ixGiTqS8bdMxtL+K1aoP8Cdwyift2jYQo5fHEY41jCPebalQG3zr79c32q+D0A1E+GKeF6CWhfvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790858434; c=relaxed/simple;
	bh=pmXVL5qZsoxro3Yq/UcIp1uPYioGZRQgzWPWEpNLO2g=;
	h=To:Subject:From:Message-Id:Date; b=Klk60DEztiLTfQadjZdvNR4V0DkfXNAY4yN7vrK+ZIonWvUcBu3uuEfuZ6REKVA0Y2hj3NbFOpm5+zqxsM9/lt3aks6G8RqcOuwLOEZITzeESquVd3h/kWux1VPkXLrETIYyDJpfQllZP0f7inwANYPG+BcibwGRRWi7hSIuunE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqM9O0Q0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqM9O0Q0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77D8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790858433;
	bh=pmXVL5qZsoxro3Yq/UcIp1uPYioGZRQgzWPWEpNLO2g=;
	h=To:Subject:From:Date:From;
	b=MqM9O0Q05eGQbQnynNxcqIG4bRp4co4eROU1bLnvngLAhZ7vYCFutNL/j2QpfdXbO
	 30jk8HheU85xIWYuBJogJN6uh2FerIPdJV7RBIJEOdrbhlYhsEYGaPHubwCDpqHqlG
	 7rVgxNFTuY8L5SFY4TS18Wfhw1UPa/QwKmmb2oMjLhMwlaTFCCyanur1QQOw2VsELH
	 Qn7QlWSHuXjaAuFeeBCSnStjaKqOEMeuu5UtesDNsJayysp4w0Ckr7mu9sBPQQtCH/
	 qi1RFgiwQUrJMccUycZDLiogo6bYPsfQfZ7rXcptR/Rmjt5k8/EDKN3bICqA9e6Bip
	 wYKoJqipA9C7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE37CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085843370.16479.17737428235803713272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43862343d3b22062f2fb69ced28a1650d0e54cc96e7f955054112164784dce2f
Date: Thu, 01 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790858433
