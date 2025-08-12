Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494E5A95C
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754964594; cv=none; b=RCMdZonZE+/IGAtQD7aVfvstrQv/YIJrhZAO4HEPGDgBisfxXtmyBYRG9MDOH3Hd+WUIDuYmmvulbx7tZFG49JtPyU5NCNTsFczFXNjvUTUNzJyyLeK+IgRGNWyleDepeQMyg4bH3BSZC2Kba3u9049rXZxkOvpVwP6xwkhpd0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754964594; c=relaxed/simple;
	bh=o0uPD/0u0gqxQM10u+n73Jo8SRUNc6BlJKocdgPGVxY=;
	h=To:Subject:From:Message-Id:Date; b=NpUnTEqvB/HNQSwqmam//JIeuLlnhyHqUz4UFgmutCT6E6aHUnZ7IsKMer9oIjZFSO3P31ck+hw/k6bL1K4+6mx1f6hre/orNc05HIiunXIXfXfg4MJPRTnbd7JN0cyn8h9udyEEAPdenVJ1+B1f7YXJq5qONzlYQPb+cCenAgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+bzsZDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+bzsZDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A030DC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754964593;
	bh=o0uPD/0u0gqxQM10u+n73Jo8SRUNc6BlJKocdgPGVxY=;
	h=To:Subject:From:Date:From;
	b=Q+bzsZDKj+1LfFWLrdcHQ042CDXBWEaMpoRrqDqSzkZ6loaWci4863M9//fSFeyaC
	 mNeOH46HEc0wsbxmBYxYAL1rukEUZTG9q0BEIkrKfXBkSESqy1hU5TFs6fa0NjFmZQ
	 bwqjjTL1Esug/M0zLgKG/FNss5bIcoEXkjDCiCRJNMVzF+0vfKpjw8piLOfDjaKL5q
	 cnMRdVfoTY0+qQlT/WMZWug14O+Hb8nhrhZ7BV/oTWHK5863ns0EmDau2JBR2CNgXC
	 MjTaDMqvQHBLZV1pIW7GsV8sYqaPEZFGcKJpsmgpURKjWw02IahlfwSLHauojXlM7B
	 9pY+/LRI4KA7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E521CA0ED1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496459357.24846.12884528537096310021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0305209deafbb7d355869bd5c14137c17d35e50ca460dfc028df57a513ec67e7
Date: Tue, 12 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754964593
