Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5D8192B74
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745791794; cv=none; b=OJ5MOmrQWprfb73VZfZyCIW+Tu8iURdax1oGEk9zxgPl12SoAFXg8B3cUuPCjNXRzghxE5WZgktn7ugVGXnD9kQJPn4KGeSbn53tLKYQBe20f6TnNIWPDkVhG8KhBUXQA9rSi9wOWe9RraehAI08TE4DCbPuZ96lTKR+M0EVP2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745791794; c=relaxed/simple;
	bh=wUBCBvFMT6r0OXPJTr78ye8p9uXoD85zEaE63xVhmUY=;
	h=To:Subject:From:Message-Id:Date; b=Aq8QKw6N/AwTbEomcX7mRIdmt3Tjkrl4bh98oYur/6pnAMV1dy8jlbjC5J82NGjweqRedgaQRY5NoAqwX5nCrJ7y1WitfBJ3xTiWrP85kcmWlD7Hv4vbjekrXRKDTkH+xeHO1t2XhtYbVVqMoTgXUjMa53CUPEVEZXDbnY2PvaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiuhV6EV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiuhV6EV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5674C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745791793;
	bh=wUBCBvFMT6r0OXPJTr78ye8p9uXoD85zEaE63xVhmUY=;
	h=To:Subject:From:Date:From;
	b=OiuhV6EVgQJzJAwPSz77/Ufygxl9LjAvSCy6yd+lvcwfqTtD1ZkgwH6BWB4KJeGuf
	 JwCS03JojOoO/oSXlM0eD51vkvZlnDd7Xxk6CCIjhQt9meKyPSiUg0xYFZmZgkBFMt
	 6IiUB7n3Y0clJ53mGtZ3y/zylhuTVx7XFDiRJrcE5V+voSL+9eES21T+lydu1pKatH
	 oHLAYa+uZ7Sx7Gn9JlSRH/37T6d51i7EsCCFvpSG7zINOA3oi8xwRAyk8n0Zly83E8
	 q6lthml+CdkPgeGiMo+vLTIymocmygTFSUbYATWtBPLZ2329b33vz56UaqiG38Lj6h
	 wN00PDjzVZDlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938CCC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579179357.18029.7382018215720127836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49dde83cef8b8d0a91aa5bfe11c3b7ec35061a425f18b111700e412429b420d
Date: Sun, 27 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745791793
