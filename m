Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45086632
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736658954; cv=none; b=Qrw8JADuz0bUbJbmtVgjVtmP5Vg/0n8Fu+lvD+ILom2BczNe43oP+nyanQP8WFaq+TC0ogjaWIGJ27EAQ8u2wITaJpOZMZbXCGD4c2T8YbPEpysPmDqiKILqYV/HaedRAVRcVtXSIsJzZj12CsPUFbNJOFFRuBGZcJFnAjlL0dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736658954; c=relaxed/simple;
	bh=eyZZlQGAF0odWNhgY5OhWFUqttDkeHxvgRDxvPkdUz4=;
	h=To:Subject:From:Message-Id:Date; b=jFl7/taL2EBzCID87IrVGzVJ4C6PJdGjY9gAlbXy1J2i0kjqlAIZ3ilcUwTXpaljNG9HxmLyX5xdGuoRMrhfONV3LBjOvclAkkhKz15UGEDiTnO3NR6qTllPsKNdtvV2WYOYsqf+8yM+Tghxm2IpI8aR75mbh5713lMMo3sPvno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZzzJNJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZzzJNJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3033C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736658953;
	bh=eyZZlQGAF0odWNhgY5OhWFUqttDkeHxvgRDxvPkdUz4=;
	h=To:Subject:From:Date:From;
	b=bZzzJNJKFmU16WFq3m9rRc2Tm+LNW5JWpSRTJZMcwpFEtuaWTz83hXx29lB+vJo7Q
	 mEfH/JTV6wGOKOt86xH4lKJ8jCkfIk0WmrtUsaLQqUA0OmMOrtNs0goEnAJ4sriMrr
	 tNbDZgvD5v5MJqX6kWET5sTsYzz+g5WRuDZE98nbxLdjzN3X9krg92Dm0+nmg0wmSK
	 GEgI6DMl/tJdIFp7oUK0YAY/6aU4NOnga18I0UkJyFNlh8RJZxsIW6kn1RJR8+rlH+
	 DaORvL0Aqw/sV1vhzet1UqblEK6IehChQFq/lOmlLmEaH3Ieal41GZuFs0cVIq9JZF
	 0ntM1ifUQNqIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADDEE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173665895360.27854.16323481173718492670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195b5a9c4624073805f3465eb06fd4f2372cc278d20446f8f47801e096862a8d
Date: Sun, 12 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736658953
