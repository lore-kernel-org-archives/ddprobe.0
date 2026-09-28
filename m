Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4632D4E3251
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790611234; cv=none; b=TFozDP7UiiwxNDhOewSjRX7GZT2HCs0YrrKf/FTscJiBydXHFX5PsxWjZs5cbv4Q1Wkat3aO3B//r+PPdlgNSSxioQJD0e7Cgyn6tXjTuR+Yv8RlyP83/7Hw8rAYy5QVtyqE7V1vB50Wc+40Ul0n+YERI5kIMBQFzruhDhJkTnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790611234; c=relaxed/simple;
	bh=qudz/LQgvKjo24wdiuyidOToUux0Iz/DcZ6mxeiM8Z8=;
	h=To:Subject:From:Message-Id:Date; b=lxpU1MP9dPZbNujmIH8qfhq+b4a3q9YZanbz6Ixw2yRLf3ar5gFtm1tHvz6ETOJZIo4a93GnQC23WAAu8C+47NbgI8vdJGvJLQSJ+RAR+2o0mJtNGK4DfOgY9Isao54mBZgl7hEP2sGNOO5wN7V2VKXNMSxtGjjbHuUzhyzG3+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpDn4ElP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpDn4ElP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB51AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790611233;
	bh=qudz/LQgvKjo24wdiuyidOToUux0Iz/DcZ6mxeiM8Z8=;
	h=To:Subject:From:Date:From;
	b=WpDn4ElPOGJ7dzbYMlDGd3/FmYs70ddozkDnb++3tD1k6nrFK2EAeblQuqGqQFzzJ
	 Wgs4lZu+X7w53xBu32wqThF69g4uqwmbgnS3jI6ILN2jM17sYkYmnLmMX/G3alaOJN
	 KKodg1rJ/No0vK2MCd2NggBZ2tRoV049lrI6xU0wg2AP3E1RSgKp1ZSaHRN1KgRKmw
	 b09jzBtLmfInq2IQB50lF5IvOodn76pqyatK6YR8M9rNjt+lGYxFc6+DpZ7xbSjUzP
	 t66Z7D9FY/fvyiIRmClEzhF4SVLwoun/ayeqhMx6lX0CnjPFQweabqM6ySSYjtUcrj
	 JZnwaQiF8B1PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1B8CA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061123368.17685.15991754648856760085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc15384a3f588639de95595a5b2aa8d06d9020d8892534b3f8c3fea571c4e92
Date: Mon, 28 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790611233
