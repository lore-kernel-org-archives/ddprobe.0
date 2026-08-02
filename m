Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3E12836E
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785630634; cv=none; b=meKFL0CUgEwfyRf2Zl7OMvG2AjEyfAX0owX+z8af/5C9qyPdtLDUeyiydnXh5NVlIezX8Mg5Wnft+XKmcRfdeWP9260opWpt7U+EjRGs+7v+9C7osDpo3hdaY3SwSKaimAN1opTXXUwW034NVD1y1XXchhDKccFl0CZbuEfF2E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785630634; c=relaxed/simple;
	bh=AZdifBl9Ap4y2iGxzpAj/M9WOXV1xe7X6kvanAoY4vE=;
	h=To:Subject:From:Message-Id:Date; b=tERu6LCs7EZKFzs/fPS6GbqYC/DUoz/B1uFf/4l7GXK1qQ7AyR52ulF/o6CjZkMgIY82UaNmtOnRDG4dXBSsLSQEkrzl7JAvSaMB9mu+0IZvVi7t6cwZZnKQ1LYHvKSt3C5N5kG0u0ILARwakOEf1rrngWbPXcQ/eLGzoFwECXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJANJ1lX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJANJ1lX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6156C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785630633;
	bh=AZdifBl9Ap4y2iGxzpAj/M9WOXV1xe7X6kvanAoY4vE=;
	h=To:Subject:From:Date:From;
	b=hJANJ1lX9jLs7icq0S0kwk5MnRgjQQnVPpaBoKSm1qTO1EcjvnQPhxMA80go23mzB
	 kZUqlEp8AF/tvo4rMri0oupHt7P7Ah/ColNgO9To3vtGPgxxU/z+Xaqev2AZm0pwv0
	 OySZyCPNi3KDLlDhmL8Ewe3Unl5nu+F9LG7rYBSfYlz/zMQeVLkTFim7M50v1Tm7X2
	 NfLZI5N5wDYt7hRv+ERd/UAdJvqiOulvSiN8ND0+26G2/ZFCBNhlKZRrABZIYO+diM
	 QlLFsLb1YKKyp3QdQjxuxjsZEBpO1FXi70V1GYpBZYKK3CuhqGnqVYY7jnSWFsIQO0
	 Df5GOrrKbYRRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD827C55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563063368.13694.2528956640036727470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e082d02d05f58a3b2ba2853cc60aa667c666879ff7833e3bee45391165bce2c7
Date: Sun, 02 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785630633
