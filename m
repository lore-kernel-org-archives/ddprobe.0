Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C793379C40
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785190234; cv=none; b=W/rzMngYkOuUi8ofy7KaQGagCEcT5UG1p2kCvgKQSAgyHaSBaeie+4c/6G1kLfPPkiXONlkYC3mG9l6LcAlVLrNQiSJYBCxXTRQqP79TU3XKtSsHzZdai91coRR0/6tWxgvP6iXxHyoKEtEvdiDB+5zYa2Vva9cSAK58l+I71F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785190234; c=relaxed/simple;
	bh=eJKsZpde8+GDryidaFyrXKQgYXSQozvMafH0uatUIHs=;
	h=To:Subject:From:Message-Id:Date; b=Gk2K6ALaQPOULx7RC+q249x7PKG060S7Y2wM8RJMEtD3WNgchUa42/+xlZcimaEaz34qdh1J2s4zgcjSIJhzmJ2cOXWZ/+sDj7g8PGFdZxVIVe0Ec87elUK983pntFJOZj7AWTAb8S++csHtJJuBvJCg54kscAzxVdYPubKC5/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrYpUe1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrYpUe1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49F3C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785190233;
	bh=eJKsZpde8+GDryidaFyrXKQgYXSQozvMafH0uatUIHs=;
	h=To:Subject:From:Date:From;
	b=qrYpUe1Etc+pfu5J9brioX394lpbk5y9g4O09aaW6WBTiOtaWBh/kaDRPH32Z+sks
	 pDMmtAfv2PkBaw9MA/3gjuq9dfg999xBYeSbWkfhcGZ22uxRtPZu730LRUmhDRW/OP
	 UD8S9fm+kaheEHbnBnOzw7k8KQ017lrhzx0IzBLePOuns4EZOnB+Wn7zblXDFo7v+U
	 PZzb5wa0+TPusB7YP4b6AsPdWQRPqB6dIcsKiQXNLawMoipMi6wssapf69PZTZKFPu
	 KcAKLVo3+XOKg7uvP8Hv2cZFciDv+bCXGin/Kv96x1E60/HVaUD+LYfhp/qtigyEIS
	 oy0KDkRdFFLHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EF7C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519023368.19128.10733704247670605782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7013b46b892745ac06c9909dd2ba26f941b4ce394cefefbbb93ef167b1d4376
Date: Mon, 27 Jul 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785190233
