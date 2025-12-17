Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2160F18DB2A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765951434; cv=none; b=IqnURzISzObFY8hoVWyTek/qecrd5LxtxgX2lMPzjHF8bSwtxN/AgrkD80v7aahZFX+s7FocJI0LJ87eiKLPyRS1Ow+iEUHQga5RaTii91BGGObu0TGL8pVDOZoka/Hjg2BJ4skp1Z18WKMRrG3CZ6gBOeQpP6WIcEiolrdkxfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765951434; c=relaxed/simple;
	bh=1hLsAh4KZzchByx/lp7QS06o2uTlw2jXH9Am50b+6uo=;
	h=To:Subject:From:Message-Id:Date; b=i4ztsJGixtIqGeO7TuNS0nvRrGFU9Eem5mLeHlHVTud/kktR6T3n36yyrB7vcifORxCgsDDNQk1YjipW5MHXr2sVLJk1Vy0mpMLbHWbaItd3rT7NXwgo0nPpRB9Z1kiBQDxrjMlYUp6/X+WhySDUmbhOkab3HprFyHQaWP+BgCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KL6fAtZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KL6fAtZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10BFC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765951433;
	bh=1hLsAh4KZzchByx/lp7QS06o2uTlw2jXH9Am50b+6uo=;
	h=To:Subject:From:Date:From;
	b=KL6fAtZS4rVZRFcN6vSq2XR6Qdp+UzjhtOlOavhC8St7cG0540hX0Nfs5xB074eI2
	 mFDpMHuCb4hIHQjAAXT1QEk8q+vBpyx4D/NsObw9dHXGq7y7yVMP5OBLiCKm/ofXlG
	 tdhfFzSfCQzsN8jH0g9soVPNNxI6e/hLFUcfyf1K0PSgEASI+Sr4l03YKol8Cowuoq
	 u+FBKWa+5Nz3RsuxZhHiFRBmfFtjxmNJWbA9m1gIegF2S8OYkqXD6B2vvo5fsFL+EX
	 tw7ggKSAG0BqxKKDsN/3O0sW2Mmdo/7zBqw71XqPhQJBxynWbJsKVadoTyLqy3pfTd
	 foz/mg0sC011A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E198D64076
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595143363.6733.15091104198575779636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42117328d11f1b667064cc73c3a2ca63c9be76991696f70fc6b3627584fe4958
Date: Wed, 17 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765951433
