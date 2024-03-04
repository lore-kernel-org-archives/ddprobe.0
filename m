Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D4D4654E
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709566097; cv=none; b=qFg8fMVrL0cg72qSqXf+5iTVAWsx+PkI29aMm37xgy6YRMPDHSK0Y3zweYWVDhTYL832JT1LaVU1vnliOAbLbAml1u+w/W8flZIdM72DUUzcvmuiKv7b/CSi/NNsD1Rzsm2GFF+uiQi9Ksyx3IGEcAv6FFT9fpa1B7HN5pF9ujA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709566097; c=relaxed/simple;
	bh=U8LphY//D8maD0jBwGDesKiRx8mFFO/h+XXYKCP5I/Y=;
	h=To:Subject:From:Message-Id:Date; b=uPjR+o/PZ+JtgSzQvo6nzBoaGVd+rAaLlj9vd4rJTTxuE6YYwY0Gb7cDS4CeFUqlLLog2DNq6FV+RQ3Atmix4u2JzQpek85spG/xrbfS8x0SEnTcWU4OU3Hm+Jr95twvol0g3ImMzi8WrPY7FvbWfDGzwMmdpoFJsOLi7BrpDMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZSwo83h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZSwo83h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77747C433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709566096;
	bh=U8LphY//D8maD0jBwGDesKiRx8mFFO/h+XXYKCP5I/Y=;
	h=To:Subject:From:Date:From;
	b=nZSwo83hLH7QaQcgkp+D2dEddXc0bZCUlHjt2BZRMp6m6CqcqnCefVUqnlmyv6LIx
	 5+XBodYd1B8xbIZu1FEiS3nLMPD+6OJpcjInhwzJtWg/+ziWVIASlc//LTC53VcClK
	 R4WK9A7LCs0L40ArMxyfJYx6ExQyznlcJCzgW90ae6exx5MVh4o5fPyCQ8N0AJ1N4X
	 KaOumCji9AOEmB7jSDB8BXng6LV0XThm+x+N1YKSFa6KO6t5+b4IruTPpXzevQ+RBq
	 Rrz4jdZrKCzHN9FKhPFmFJmrkNzJ+yheiyLQsE7TrWa3BhvvSBQZgh6tOtxVsppcOV
	 qd1doOiDDnbMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C8CDC48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170956609637.25947.9803506499013873363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84325169b8c057a10aae84827925e5047879b528139973485746570f4f6af208
Date: Mon, 04 Mar 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709566096
