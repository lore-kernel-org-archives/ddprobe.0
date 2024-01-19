Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176BA54BDA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705701497; cv=none; b=f9wr4h2Ql8e7fpMKkolcl5iwOvom4jfMEytNMYa8BGz1EXp2fsbe5w4iJGhHs5xR+ylmLfCgdFSS7rV9x9Oai28JCAz0FgEzgak7+BomP/1pZ105jN1hK2RRBREZoqQVjnqELlWAGI1ryy+4BpbdsuDcIaZFafH5GUJYsQfxL1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705701497; c=relaxed/simple;
	bh=b5dEghlotoqCS9u5ba5ROf5QrxBc4he4DOBBdFZJXHE=;
	h=To:Subject:From:Message-Id:Date; b=b9yeqi0cir6AMa4sN43x+fDv2h++vQTepj0i5UQ/QRGwsfksCnFJ1E9c2FPx1bcC4r8wxIeI7JWD9SincqDXBI6B0kJTiW21kSGWLHD1XeZAiWgD9WL2dXIe6dHKztnMgN6TioYPZIzs7ppnRmoeMEp/mWfWVXPkdTwEMwrfY7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAY26ggy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAY26ggy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E80AC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705701496;
	bh=b5dEghlotoqCS9u5ba5ROf5QrxBc4he4DOBBdFZJXHE=;
	h=To:Subject:From:Date:From;
	b=oAY26ggyCOrMk55e4YUeaT68oFmpj2FD3laH7aiBz+ayTIVbjTfWJfsHXARrMZy1y
	 bjiloOBhj+GcT7Kah1atBm109u3L4H3JGFbIKqVwQZqw0zpJgX3zgHsDaLxXZkxjVj
	 W0cm5/sTIQ2VYmBMNojLSaejGAHQ6zYgBs1n13Kk9dR1JBynwIVrbJbdEXQ6f86qcP
	 52Crs0e86Apj6rpksWbBj53C//yNPus2bMdVh539zcS4Y5DxIQTmlRTugyy8G8DsHJ
	 2bCP8L/DG7v9qQbHYANjHQAJ94ucP2TybzrrXzojN+RExmdE2AJhSbcSyu0LjKVOvc
	 ax6TAcNFJV0Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B800C47DAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170570149636.22181.1532084837434510818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3739d14d25df1d9632c16ca8bf7b8f8687f47c3b7390fbc0807ed31094c4f966
Date: Fri, 19 Jan 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705701496
