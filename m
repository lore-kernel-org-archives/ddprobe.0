Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E06063AE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717915643; cv=none; b=XQWlub7RX3TejE9ieEiauyB5ZPd5Lo0QtSHvIja9MeRpXsLgDPsbjlvsNqWOKrn7PjC+44lxzO/OTmsdIPWN+wuR+6w5VLSJZFN86WcmiKAJ6xJx6/yUp9TPHkEsTNrXWCUeS2G8c+B+FJi1MX+l46/rhEyuCiAHsSXtZXQ/d/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717915643; c=relaxed/simple;
	bh=v1z23xbPDHQYjSeSAgrYZ5/wb0NrareQEZg69KaRpw8=;
	h=To:Subject:From:Message-Id:Date; b=XnCsI5jnX/wXTXHfeOeUW5SyXJy414E/L5lOjPHxeXGrzqTRxxKQxYxJP4XrRDQ4tvz77DqUonMwMOEZhQfRdZnoVNz7bjAHY6a5DZOwgbQUa3S3wtpUbTXhU+G6VPXprKxGvNFBTxnzICdDSrrpu979tgwn5S8+gU3nKwx6hTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5FAgngk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5FAgngk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD82AC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717915642;
	bh=v1z23xbPDHQYjSeSAgrYZ5/wb0NrareQEZg69KaRpw8=;
	h=To:Subject:From:Date:From;
	b=a5FAgngkOtqLEfkbUPOgeNQKWssS9go4w/YWaAakWdDaxiM5gl3DEeu9Vfc8d531g
	 Obq+3+XTzo8HuNL6jiHf2UIt1mfsYWF0FrOE2OfLUiFYibSBiBDjWuVtEUpUdDrxpH
	 /QoRdEVgzCHZqGHkOODKMRohXOyiFtJlqSvWq/mMnwzfoiukKKJBvTdlYmDRrB7nLm
	 McLO8pyBYUp5PWvfw4z01+OkjXyLZNE72PvZwZ1TAGmdkSBvkNy/k9dtpA9niMRToz
	 nkkGOcoVdfJTSRzIkJYkeHgmIzaH0gnGaP6/mDMorn8pJqn7DnECtebps4hauXg34K
	 X13vfZ11Qvyzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E81C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791564281.7054.13572969586532370700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79904b50e2a4797b9ce1b1fe1f6bc3644c1194d3f4b4fb71ae84e3a6e870093a
Date: Sun, 09 Jun 2024 06:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717915642
