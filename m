Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A97284B4F
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788583834; cv=none; b=OTIif6pK19nwyQFqKvz/cz52E9aiELIeJ81HA43zJDM0Ru7dgODJ5VVV47Cq5ucbR6T62qk+HfZM0B6QdWVg2ImdGZ0Qd5kH3yTpzoc3kfwQoSQFn8wi4VUwyQt5qILB4O+0FnK73Pcd7EwXqVmSOZmM9YMFeh+EslUkm/BWJoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788583834; c=relaxed/simple;
	bh=ZwQhsYYnRd8WVoOjZkSxb1jJXsOyDN4fVaND4s44yTE=;
	h=To:Subject:From:Message-Id:Date; b=Z4Mz3hnhgyCIWAZSCNYDTCoUMX8ZkJf5fkRh62kYJMZlbSPSrAqws+2x9hXri/eoXMTPYhpYR5ggIuXLAsvkElk7EiJA3REPS+MUeJqLQhAyEz0sAVmyRhq0t0qxHTbBTKRu59pNDm+soy4HovNCRIrp7yHpakPxRc/6byS09o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9n5jBZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9n5jBZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31FCC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788583833;
	bh=ZwQhsYYnRd8WVoOjZkSxb1jJXsOyDN4fVaND4s44yTE=;
	h=To:Subject:From:Date:From;
	b=I9n5jBZLUCyc3NR9Go/kEYIiCfh1zb7QTWuAsCfFHyOoR2cxm/j52DEuXWIB7e/5x
	 ren88G1PkghuAsmKmZ2awKEQ7e8rvfQ0evpUSmrc4Cneqt4MYdlWf79CIztVbevVIK
	 VXxqI1iX4CKVgAteIkRmOxZR6xta90ogKnlD1sK6cdmTQcar2AVRKwii4jf4LVEQxD
	 Mscb2UeJAovwLeMCafvWzFIOvlORHvF/ct2GkfTRS6CH13aiE+4Eae/qQZM1t4nX/E
	 PkMqtkMl+CrPpE0gzmSp+RlZMNN3jrQnUkoz+SsFPv23QtHi/WyqTF/ErUn8jJVVG5
	 dmrFPmHr7sfhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9B6C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858383369.18444.2038198575871072803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16519ef7047bd101627c69b85f05fb6d81e6fe13bf2de9d025c54f248e25fc65
Date: Sat, 05 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788583833
