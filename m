Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA453433D1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706038697; cv=none; b=fhxgNE91EbTAz429tFFUsCyDzvb/k2dNCGTOrxRo253wX2WI1bZd+O4TU/2kn1N8BR2Ix4O+rBCMC/65SGufkRvjlDzjpvbXJLlb3+Nn8XkaHacHRpgAAlZ4mbnqZ38u5Y7pIgpgBU/2OVA8ShB25znRGrDre62lyaLnCaPWNpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706038697; c=relaxed/simple;
	bh=UVAUZcRwIoXQdlwhSN4pC0lDzzm67uv4Gny5gp353ZU=;
	h=To:Subject:From:Message-Id:Date; b=B/NEf1tPsH5hO+Yz4txodBrVnPSQg7IBNE38qp3/FgMbgf0rLD2da77uvl/2F7s6bX5HXb+2mrGhd1EE1jFmomkfDUSGjTEDcxvvPKR5pYSIoGrgB8q7pv/XZ0Dh5TYF1Qj8dd8D0amC6dahBIwAVdBIKDW6hAVVJnaHHlB3+BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKZV+Kvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKZV+Kvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70605C43394
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706038696;
	bh=UVAUZcRwIoXQdlwhSN4pC0lDzzm67uv4Gny5gp353ZU=;
	h=To:Subject:From:Date:From;
	b=EKZV+KvlBY1FF+GK3u792OzNANt38VI0o3HKpYvEcJCwfjuRUj1HAlmt2D+HErAOr
	 zXAZFGwuXvqSsNCwY3380WCGGEdbTCi8UyZltLc8rPf2n0nLBOrOZ31Cse3bYwDOO0
	 BQVzoa9DCRybDJ78rWGaMHK4S/kKy2dThE3CB6XF7jqAnA8ARnjK/OfDdwNPwyLvWv
	 B/7F0OxUqrNbebLHTbFOomRAKLSTTtb36DB8KzQciQbSvI4ajSH+aDe86K5F7h5oFN
	 ZwJ35gDcllRwwknt2Qs32pYaM5AcoCV8eHFzC/GrVlEB6STiXprbWOn2K/dDRftBUk
	 qZ5fu7mebWQUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB9CC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170603869636.22956.9948301096848222134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629f0291c4d97837c38bfc1bff02f527f9a8ee615b7abdb213a9b0c81865aa9a
Date: Tue, 23 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706038696
