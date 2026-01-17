Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A30B308F1D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768614834; cv=none; b=slNE1bFtl7HpSp5/W/ATN+52SVhl9XdEmWJfPQz7kewq3BQBaOskKj1nMsfjHtRGWCRm6DkjeF5E6E+JPofP8G9/nlDYqfo1qCKdcMmVFebpFkhRtV5uxOco+9MLQxjYyCNibzcNHI8vUK0Zo5io3uls9H1rHqFIFaSAbivy5Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768614834; c=relaxed/simple;
	bh=2+w8ZlIvVbcUZTo5n3rMsBS9tbNHzbAO0qlZZ1QOugU=;
	h=To:Subject:From:Message-Id:Date; b=YyhoqvqLiuRCWqsAwimFTxxYkYuMJWIWAvGdTfVm1NKH+syGMbQxU67LX55wFtLD13u8xFHNlTARy31tnaUdjyXtOQqQZtQ/+B9jJ8U5JzrZoCUj6iOEQXkICyHg95hZ+umPcUhCZ+/MaUenX3nCbZ/o/WcgHGPpCI4k+ch/JE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLUVYk5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLUVYk5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C0FC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768614833;
	bh=2+w8ZlIvVbcUZTo5n3rMsBS9tbNHzbAO0qlZZ1QOugU=;
	h=To:Subject:From:Date:From;
	b=aLUVYk5xdFye+ZtCKRyzE0vuvQwoEL+fhshx0NV687O+BiBqWqCC4iAuqgxqve2a4
	 0BegqstJXKJryNZbFKG4gsk2GkXsbuzY1H0DL+Ms1XKuHx1TsguaBvMmYTjK0js6my
	 knnPE8ItqSt4PcEbZwR9SU7D7NaUS7573BLUyTdF3rRW6cO9/fdK3mmG892UGb586u
	 u/Ke/bpsbDgcmy6CyyfBonZweahLnnkLdwX/ceaSvNnqbiwGf/9Wj0ucnyEDDDARW8
	 yp0zGsMb6N4fcP4WRY+WmjECt8IMNRa3xbeD2PC7P4syqN3bmGDbqu78G2P2sDMcx0
	 LaVpQEL0Hmtgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9203CC9830E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861483357.6613.5547430550703051589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47cb997def9a2fb1c999c5f360ee0dfdde593ed8492f7600de64926acae0965e
Date: Sat, 17 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768614833
