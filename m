Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315122192F4
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764208374; cv=none; b=VsyHMM48JGkmJkYJNNIE5IJh1y9rncWyLpRc2UAB5fkXE0aieYr791aRvPRePhHJEPjHO3a7LmmCTv567GltmGAfMYg7p8Z2u4y2iRX60mRdzjYM8g+nlrXnT8zFIW6iLa9sea/pMWJXvDJFJsqjj5UAeq3qgp2Kiz384HSl8rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764208374; c=relaxed/simple;
	bh=6zUj3Ad/BwUVQgpxzZs8RY5qT3TbCKqQOD/oJUFjh+0=;
	h=To:Subject:From:Message-Id:Date; b=h40DBuyTEAdG5OsCOF7tAlNyMtv/Mg8iPHBAfQm+ljsyYUVRSzRmLbdpDCtcz0GAgODskzmTuE2NqfWaduSirv1iYVeoh6LaOMw2bAX9f5fx1ggsu3GK+kLem0zJExjopwNtBjJjNeaAzZNqezGOIcEAnzysG/SlFvwYQdNMCu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUo4qadM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUo4qadM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA016C116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764208373;
	bh=6zUj3Ad/BwUVQgpxzZs8RY5qT3TbCKqQOD/oJUFjh+0=;
	h=To:Subject:From:Date:From;
	b=bUo4qadMbAf/a7Qq7wB8iDb6CVbNrH8QNMGGSL139FxmlQUqGaJBbIrmUiKGlQxa/
	 zaZ5WF3c5dFi1nRF/jgRVPpHENxaoJhkJv9jl6CmbGjzhysifqro8plC+RuGGHMXFE
	 McTL97RP7XZxTlBPoE32bjeGl3WjmhnN3MpH9hE3TOic/Zc9Bg+GKJCp0eGW3m9rYi
	 E2FtEe2cBdSvF+ygUkVKdWCzQA1TRtaiYKBncOWLJwwdTHOeeIi2IjjakGeJCYUFJW
	 Y4IcChyOnaaIMHsFqM13f6tnE8Y8HujJArl/ydGfuTjb473MGDfN7Zs1ndPMg326i7
	 JuIcPJUAbUxIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963C5D116E6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420837360.24701.9997556325159440298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213f156625d3860f651eda117597944c4bb0bcd53005cf928e2db41dae8a5f99
Date: Thu, 27 Nov 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764208373
