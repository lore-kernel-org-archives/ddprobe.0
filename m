Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF4A22173F
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762807794; cv=none; b=p9A8axw0aarTY7SdnZ61kB6Avnng5f9NVxatxROHYDh1BIW4knyIsaVUa/8f+Qgpjt+U/1ti9JCUa1vI3zkGSjVZQq3I5La5V6/OutlEJsyxxiufVX9Ieaxo7mmvMuRxGXbrjUvhnCzteK1q8gHxdw40SEczYCh23RntNJ/FC70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762807794; c=relaxed/simple;
	bh=Qb3OrVhq/YuJ1zyqSmce0iGLWnDXR9Pdo5vzoMdPssM=;
	h=To:Subject:From:Message-Id:Date; b=jAP3w1XCsZK9DA8XAvz5VVba/VmOUYIGDFxtXaPFW9VKA+8NtMs+C6YTO2u6JbABTksmOQgnwlyY3mAYygW4TNJ+PPLb9yp3aocotSRT9flg21gMLC0HUSC11eXle4ZEnV8abwJk8xeSPQJ8OS9G8/dIbJQM/zHi1Zo2/Q+dPvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAQNPj45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAQNPj45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F07AC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762807793;
	bh=Qb3OrVhq/YuJ1zyqSmce0iGLWnDXR9Pdo5vzoMdPssM=;
	h=To:Subject:From:Date:From;
	b=UAQNPj45LjvmuOD3swyoO75+mOfNPbh+l+1MAE3z0lvrI8i2thkRh058Lq8tWcABr
	 iEJmZ4lyN/cBnp1JpQSpxF0lJjl8zpT9bUTQlkyP7D+R7l99xTbVymL7UfwSKf34Er
	 0aHoi9jHSgEvh9Syb/3tU1RZIetjTxVSZwVDHGS/2X5CSUhag/BWuAit11pAMZfVB6
	 D3NgcEyZwRhjR/HJOZp8fmqXeTLY3sRF1n1r0Tj29RQdw2OJ8VuS9CQme5D9QIjS02
	 iGGnCz0CZZekjBkUhE3DgIKjM+p/Cv4LITFOLIZW0SmMguS90sfiWZaYX2SBRxG5h/
	 dWD0zwwp3K1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D89CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280779358.12251.7150412887381059511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5273f34f0076b024f9532b0dd1223b4613ee7773db5435008ea7db2af9de8db
Date: Mon, 10 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762807793
