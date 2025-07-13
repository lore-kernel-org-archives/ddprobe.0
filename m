Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2248120F076
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752449994; cv=none; b=SxnyPjOAXNF8opOynMATA3mbVGA2IAU7dmbycDkCTOGPAVGtfzvb58keQmKpYWOZR72Q5796znR7/5i0C5zm6qWj9bhQ3KG7hAVDWl3RJ3KRHxLKWqLu2SSRg3ZtLwaR835wNb6y0IDo2omNqAN5VLfOzxxzr6qwYc2HfDcM3jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752449994; c=relaxed/simple;
	bh=wNlRE+Yxkp05obeIUC5zQR+HHRHrUyeuu1/6rL5F2lg=;
	h=To:Subject:From:Message-Id:Date; b=qytxteryfoM8DbthBsvaeJZsIls6BGmdpH2useRACZRhFArX5jtzkjgJDHx9ByeZGLK5tlEqU0LgtJJW4z5OOckcekSiKlOBuXw+K5hZ9JOzurDRedW5/KeAsCX1qmSMFxF7bwM8TK66BTwwaxf8mHavtiSvAj8u/NrB4vZDblo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhjeZ4J8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhjeZ4J8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7A8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752449993;
	bh=wNlRE+Yxkp05obeIUC5zQR+HHRHrUyeuu1/6rL5F2lg=;
	h=To:Subject:From:Date:From;
	b=FhjeZ4J8lWqGxul2ugMQBZJ8AZbC9MfRiA3+astCkqrfNjO1DLeE1+/1I5MDtgUiq
	 0v8tqq9p3RuI+bIR1oDDZ0Omr5fwOyDxO89oLnhXd2GGTPmrADBoFDOFGgRbhVaQWF
	 BfggWMwz4zAU1q+hPJVn4vmta+Jvum9R4iJM2Xsx+nrOBFnQbj3aeTBYJCj3OpiGUR
	 2JHET1KI20NAb1r2TrVDvU9D47MSrDKMaJDHujqqswMspI6WzodMEdAWMmyNf6ANuk
	 Cl5ApmuiND0VAarMgIMtpG4aw+3iUm4h33KKaDAf0C/Rb6s9FOUpP+ejmgosp7xkDp
	 jidkMAg7CzzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE81C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244999357.19174.7683686489888365974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d974cd8b81a5489f78f59d96828bae798d0bf42eb3872c775380602c146bc1f
Date: Sun, 13 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752449993
