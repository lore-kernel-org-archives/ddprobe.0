Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACD32AE6F
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749482394; cv=none; b=uLQo0bQ4i/hsWJ/T0Lrki07mgyyvK7HAEQeBMe9WOkabH669HTLAutIEmbEj4bMjcshWqYsdJJLToHm7Q2Jfh/1DxBVMUXCyrQEcnloSlFCOaq07+Us1i84r19bMf2WKwcPbW/3Pdx7bKshmdaJU6SMMpPTlDteJC9OWoxY0P4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749482394; c=relaxed/simple;
	bh=IhIK/jYNt9lVlwT3uht31okcq5hwCizUD8/9zxoUtk4=;
	h=To:Subject:From:Message-Id:Date; b=Mwwx3/Y5l3D0fhkCo96GdrNAUBiYO/oUGiL7+JNR9RvvFOPe7HrS2tYSb5tKY93Vi6E6Y9X8XLeRWFfjmLIy1cA7x5QYhepa8kAkRr0x/tzmGMTEvM8lodVTGm/Ooylfd5FI4pyH4C6/xYPob6khcxEJtQevv4kHrRRilsSQZJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQ1eWgeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQ1eWgeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03EEC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749482393;
	bh=IhIK/jYNt9lVlwT3uht31okcq5hwCizUD8/9zxoUtk4=;
	h=To:Subject:From:Date:From;
	b=dQ1eWgeDF0qRnr9FkFFaS7dbfz25YjSJGZGt6icGPQzFQjKAuwesRBKv7hc+tgZ7M
	 NuJ4BUTUCUx6OKUTty4/TPhPzpD5HF0nB5YM3g7ifYx53bLnGo5qCx1VWLsRJ8KufK
	 P7oZ2rESSGGRG4nzs1QHVHEqTXAEL6hl5frAVtCnR6Itl6gjKHveNRzMhtpRHD/0GG
	 qd0PwnbiWRt+WyKkncOR9RfcnOP/KAJWiILy4p0046EWolTnUV7gpgrBL51zGB6U93
	 haTs5oBiL4ixKxzFo3CY40oh42R0M/bmfMySugdzQvajuhv1CnOxqGnA5YpDX/cGyl
	 btwwoYbETB8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BFC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948239357.7465.4501302561079454111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2af10190e029ac41185b97cd7282a7525e40d0e4e3d87d76f5e109f14afbc6
Date: Mon, 09 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749482393
