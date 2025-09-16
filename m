Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8B01B85F8
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758060594; cv=none; b=g77hBTXf6FoIJvMeLkoaROvlJQb8qXVLWmaoXW6UN0VgyTe7cJsLJ1J9E9u2TY6AXjUT0l1qBGY79TdDMF93ZFkCOn0a+iTv1Of5b3lqu/HhyJjrDIjKwV+qZj1U/a393lMfMv4AnPVKjbkCzOTbangk1K2hOWOwHCMX9xkLLwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758060594; c=relaxed/simple;
	bh=91EgocGv4dtR5TpZaASVyMhgDsf9m/FecvVcmQqVXsY=;
	h=To:Subject:From:Message-Id:Date; b=WyOT41W3Te+cXi807cTK4NNhMluk/rjZR+N8/cgko6thqFwITbQ8oDkfNEf1Og+Dj57GY/xvDqo9u5iZSIXZ6NXYXccpLe/38ueL3ViTIxhwqCU0PYJrxygFPjaTRZVUP+m6AUrlepeq2X6GDHRmvWXGENeowp3rcuQWQPgyiXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFe6ls0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFe6ls0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61FCC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758060593;
	bh=91EgocGv4dtR5TpZaASVyMhgDsf9m/FecvVcmQqVXsY=;
	h=To:Subject:From:Date:From;
	b=MFe6ls0Qqf5e/8VqYhnVSsPavgQzud07GTozMdb0CFR4n8y2FQAAxTDmvFCxZwVXM
	 6CL2WVmSlOR7Qi7hLOJv3y1gjP8MkTGWLnAve/lVySgiIlMcOuHh45591C2UCk/W2/
	 Xs1SAcwh7FoAnYbVaKVNQOKiz1oogivnsAoXkaAis/ANqCu0U2XwyBSSIh5h5SBloM
	 0gmswxgyxl7zLrxbz6NejnPZGs2bEO8dVudFKYJjETN1/XHo1RhbJ36BxwvLfLKaF3
	 YcgbWhZXPRjGk0EXnXwsX0jAVTCPko/t2w/3f4H3RW5QnJI06RHQ3zBhlpcFinWCqX
	 +3rYY9/hubwgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938B1CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806059358.32326.4540263819168308474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9caac1de3157cd199fe0c6dc3def6e5c65a4d921078a48e0a93a67a930c1bd2d
Date: Tue, 16 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758060593
