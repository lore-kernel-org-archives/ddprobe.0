Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504BA17D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788483034; cv=none; b=lZH9uaNVxL/oDxfSmLXWjD8pIW/o5QOw9uEcoCrB0chktcf4Gm+6sFC9VN1jUmq4TcwEseyZvF7ZcD1zmhxFX248g61Wf9Z31QbtHXs9nT7SIL1PyKEbUmjVbuRQ6zoXmD8lsXGCUf4QsnbxKsAPzZREkUrLVx67UsoVv+YRaaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788483034; c=relaxed/simple;
	bh=IZAXdwIUwQ8xSPUggZ8ITX2poqv4rTGtJ1fEHEnTrko=;
	h=To:Subject:From:Message-Id:Date; b=hLC13qYFya1VCjoo8/UFxWCBNOnQctrz+pl5z+oYfujbOHx++B0uD6RkG7heGEbZAvwVo1n4qYvCN6fvvqef6cL7KfO51gDnw9EzW3ZXZpjr60kA8g5UJIPplN9wKKQamQvfOLe7SBiLT/aALawPQV7eQLU9Zb3KB8YiWaD/TuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJXqrwJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJXqrwJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D049CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788483033;
	bh=IZAXdwIUwQ8xSPUggZ8ITX2poqv4rTGtJ1fEHEnTrko=;
	h=To:Subject:From:Date:From;
	b=cJXqrwJPnvQ6xM3SWgNOhpvnclqs8ruQ0zI6LKaizllyXwLtenxzNAMQU44oH3hNC
	 EE2vszazPWkiHi1sGUhndT1wKTmTKshFpF2Tt0FV1klphZF1t0QPuRVR/fFkkGXs/A
	 MOpDZZwi40YPlgXCArfuAMAEchPp3f3GWNwMbmWwFfF62sWssCCSHmr9ovMYEMzrgc
	 AM7PHSO2/ZTSRx+NYHkbAPHULMZ7WosSRQ6NqFEVQzGtjjoURFpQ1r6IgIn34yizju
	 meWRvrWQMDM23Sae2oxrCcKJHGDUWSYiynD23ifmaxD1XckoWQwpCrhsSZV0HzDmPp
	 YyIHhdB1bHFhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF1C61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848303369.29865.13160386736879829513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899f96e8840e7ef22d585f951701e42bdddbce353b4b2ec86e73b493a749326b
Date: Fri, 04 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788483033
