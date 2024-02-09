Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9F053398
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707500298; cv=none; b=r1dE1XZ5gV47jiihWcvCfLkQWwnZ/1VLMopPq6wfVCJB4G0O/ot4wA1JGE7DLP4M/1+GQBeSKfeRjj1N3pire1dWKwTW/Oo5sg1qL4gsrtZSzy7wwvsNQzPJGtYLkRZbP83AJGwfajRHeS7UwAu8W8ntktW3a4eZ01DWKjAzJzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707500298; c=relaxed/simple;
	bh=OnvZkKDRG0bN7+vRy9RMI0VsMg7ghsDFbdp3Yv8rT60=;
	h=To:Subject:From:Message-Id:Date; b=eWbP845A3gfETqxMJtJOFrBW7XP867gnFtALPGXDzKAj3Kn2VZQAoZ+PMHCMazKdRiiadmvd3MSbf0wDAXMylZmpguW3zKMqr2Map09OukcWNElWXnN9SjOaSbhwzbLyJGvXig82VSkkyVkzoe4xVymq9Z7F2DWmBG2H1KBuLD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I32rs7Be; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I32rs7Be"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1B6C43390
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707500296;
	bh=OnvZkKDRG0bN7+vRy9RMI0VsMg7ghsDFbdp3Yv8rT60=;
	h=To:Subject:From:Date:From;
	b=I32rs7Be2GYY1nJHa2bGNN5ytFwi5rZqVE2PGaS7z8ZOg3cpEyQAcS4CSaNR82+M+
	 kaN3kpj7vQL3y7I0HhXNHjdjuc8YXkkzxewCVL7o0NDn9OkO6uckLnQM67v60nUQvx
	 +Qk20ja7sizb5mVHfisJAnyN9crrgjWeGRQNL+pUhUFIntA4ZoO1nUgpHYQRqEsQzw
	 TrdUMPYtU4NAcvVwUp593DI5FD1MzbSCSl6tKOQpgDLjnt9oA1yO8jgkw71KfSRBnW
	 hEhFrlzc6q7vIlbfu0VWJBD1e9CjRzfc2FDYq/R1b/Ognoe55xf7F7YOLkRQT+5eEt
	 vc/NVLGSoPXsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE04C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170750029637.4327.13954890822961155059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0422498a8d2e06f1ab17ec502c51e82930b267c064e7301245b91c4349843d2d
Date: Fri, 09 Feb 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707500296
