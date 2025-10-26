Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9A2186E2E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761518994; cv=none; b=UYWixAhX3IYwDvn+Y3URzfp/Q14rFfsfCJ3oHmYAlYyNv9BuMqzloIlpzqRoUru1+pY2/z03BKk94+UGuMMZF0V49MOjgacNXgXtbr1Zhi7f+n1Mp98Bzm/DwJjy93phBSVIC+gZ+Q4dTD5oxCgnnyw1YkmITq4eHMDLYZJ0WdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761518994; c=relaxed/simple;
	bh=jaTNTU7vDK4TJALHlAt//TiN/qSnkHO7QY9KLnpsCnQ=;
	h=To:Subject:From:Message-Id:Date; b=XeHXJ/uc2QjcmWpfxHl+kwhXkLa1PY0hkGj304zny2xoxmQUMF1s7N7RswCNrH+3E6TiV3kyuexKhzCUO1jzE+tFrpGesTX1tVYkkJHM8fcOqc8P/NuOmwnWF68xFPPjg1jwbxu8mC5c+rn/ou+zEQKq53XN2oaRhLUQnSD3v5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOOcW+pH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOOcW+pH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5419C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761518993;
	bh=jaTNTU7vDK4TJALHlAt//TiN/qSnkHO7QY9KLnpsCnQ=;
	h=To:Subject:From:Date:From;
	b=SOOcW+pHv5BFv/yHVkabd6RbQYu5l5H33vi1PnOx5eqgO53FsMqMnesI0rPxrqUEg
	 4+eO3bP6sk1Pke/75pOdjInfrrgca2T8L3zNbz/JU/4nV1iDrm5KpP8RPqd6gRHnpr
	 6NntqUH33pEYyiXxip/sBwwi9g8pz4o94MttWp27xLzJezRXpilO3J7nXle0QFvNNI
	 PnL16A6zdJw0tp/al2koMFfe/bUy0+h7tXwTNOHiUwJE1/jV14IcszsrKKhp92MAzQ
	 4Q6WWUKDLX9uameX0Vb5CK2pLbQyMRIqmpbH/AYrHlp0/0ex9K5S980Im5TSUI0Jt1
	 MB0nw/NfKflWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B06CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151899358.7079.12708181792821613246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4f6f5d8b47b9fe8b3eb765d9aa80a7894929f8382cab2dcf7e0a20ca9c7ab8
Date: Sun, 26 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761518993
