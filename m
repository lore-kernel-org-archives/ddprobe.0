Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282542D0637
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757864394; cv=none; b=rF4/3qaBfSMoz53XQ1ij6c53eGZoFZeNd20br4m4eWAWN5MRm6vHTXCWOOI57/19B0nc40Bh3MRtG87g2SAWlQAoKcDvBw8kC+2UWw37bIco8ASDJlxo5dvJbRxhLZPf5jkJOljwDaLT19Qlx/wRqQPfrGYgRC/6j5M70DqOEOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757864394; c=relaxed/simple;
	bh=G2l36BEMuOr5IAvnVonTgiQhMLM2vvaHmmsJSNybloE=;
	h=To:Subject:From:Message-Id:Date; b=Hnj8P3Ao15/bW31OJIh6XhHE0+CJBfrV8rzdvGOpGHZMoAFMv7AZTHZmXBH8yL8BvvatVtJGenrR2k8KsbHDazgDuhQAsh0di6Brn/IMtTt8MNnXKyf21Y3UUNFaywJzU+d/atkflnOBpwoqwcjXFL4NTlX4tJbgqFmjg84VZs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqiIN96C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqiIN96C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3208C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757864393;
	bh=G2l36BEMuOr5IAvnVonTgiQhMLM2vvaHmmsJSNybloE=;
	h=To:Subject:From:Date:From;
	b=UqiIN96CkuNsumLWZdHeqX1ZFiIRKl4WZYkFCSJ7RmlDAQ4HKiAWKE5EqZSrnJmF+
	 kRYYQk8R/9CtEXcnU58ITiPTAmSJxCpu7rfBECcuFaEOgbPB92BCy9rwkbVt5jAq4o
	 I8FlGCMWfVev/SnHgTPRqhGKXu4U0DMdkkzm7kR/cLFZGosGaA36XFHT8JuA/AZ3L3
	 Zxz4jlFgMVrbLbES76/izzUaj8gYJdMNn2HaquqsQdFJXv4D8wwhEqK2gkb6wvPL1u
	 XEGGI8sF1WhDOzGxTPhj+pDFDXwsRjX0lq+rfkX0sTAadH5JwjioINatWjqYXfvAcP
	 aVpGeNhKaG6gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93655CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786439358.10258.9270660353249972449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d44eb4a22a40d76384f2973af2a8f776bcc39c3d9ad1bcbdf2c341a0e46a95b
Date: Sun, 14 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757864393
