Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C612E336C
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742749794; cv=none; b=s3bkRApF6YPN3qYcfPfOvSGAwX5EY1gFmegauYrMUL4Kfczmmu+VXmfWYGDg1OR+lPGFagLJCs95IL2dKqgvSzGo1EhAPh55mNPSkNE1Oo8BPF5r4aSWs1cuPmVz2Laaxpv0m4dBA2Rsw2cYIb5pNkwP18o19/p2WnrxRFXlEzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742749794; c=relaxed/simple;
	bh=jFWfE93IMiLrXqB/nkaiwUNQvmADYIrC34xFpYGjm20=;
	h=To:Subject:From:Message-Id:Date; b=IBCeRWIeSKxA1oZ1FYvelSBGImuyBuxEYw8ez2hd+7F5PQOPuvkl8zgzJsc5Ymi8R0HO9jW7SgY96OlT22EH710qvCWhYsiXTcLtGniiOe8itQ7eu2X/IKkbKiJPsm4xnCLSjV9wV+WUcStR+NUxZxVekpMe9MYhoO88wb99wcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p626di6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p626di6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B546FC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742749793;
	bh=jFWfE93IMiLrXqB/nkaiwUNQvmADYIrC34xFpYGjm20=;
	h=To:Subject:From:Date:From;
	b=p626di6mj3GQf/GzY31ESzH4/FAGdA7jj3kx7U6kCQJoY657AZTqvtNwbHgBOdNvU
	 IzWhKs957wlXbY7rCwvnz9IW/9uIWCVIp9CR1hcYrwu5Y8TqNRgGfPGHsRNijOYc6/
	 6yARoQB+eJDOv4sN46Vk3XUkKCZlKSQHCbGuMVxzqvlohPtrLRKLPDwpvSwYATboEV
	 /siqI62+CDLhBzP5s09hc85iuSCpolXTv7QVcvRlfSkJGabYhXEgk6cKB8i+iYjiy5
	 3DzJC+e49dxzd25e0A3Tr/KVqXQh4ICYyfhJstBA5ykpyKuLBeKULeCspL3bA6w1aN
	 3mxTuVVKMTVlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEE8C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274979358.3150.3831642703995528921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841b3e7c4eff224d6bb23c61b91026c32c6a204f335aa7972ffd55f2838034da
Date: Sun, 23 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742749793
