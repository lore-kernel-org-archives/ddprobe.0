Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0396826ED31
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771185894; cv=none; b=OUstFCp3RBQKLpYE0PP1yfX92ya2MyKfnnFjdap/Fok9L/XHY57Jk69bQ6GI9mROs1ypTwjQ00YhoQe9PDRzySHu7ZvI2RUfoJKGA2Rb4VH4uCMqQpY0zE8ayTaqlxle1FtuVVjhVcKgo/PrKwK0MxkHsBx1PNPk8pXwt7vBDlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771185894; c=relaxed/simple;
	bh=JfOpwB7bZbHZNNLY6ToV3zhFRKUroHhM8QHzU3IMGN0=;
	h=To:Subject:From:Message-Id:Date; b=Fxt8QMQHs9fOAMjIOxOfakIFxs81u4HYU1xgl5C7L5Xik8rjoUnrfpBa065QZweQB7tlpJ1Q+PL+3l7yfktmPt8t2odbP5zS8XoLvdoHyZphQ/Q4Q4yKxDgz3d0RlnMsg05+Iv4juAO5T2J19K3vF3Lq5GjMIx7+lo/Bl1r2RLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnN5ss7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnN5ss7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771185893;
	bh=JfOpwB7bZbHZNNLY6ToV3zhFRKUroHhM8QHzU3IMGN0=;
	h=To:Subject:From:Date:From;
	b=WnN5ss7CWmRrA7RGmCbbpAFHPLQcjA0SYKpYW48/3Wfowcolojd4LDfCQXME7tku8
	 7WvRskR2OSRYQ4g7phIxIF0ri+GYC/mma/QemTCxvcRDqSJJsoFWk5eqeqsTPhp7n1
	 UfCchPOSR3/wgpiAZ/U7oVHbHTJUTxw7pxfdtYL9ysaGQDToIpmXTrPvwnfMpZp+AV
	 OAyydBR6hi59PTwc/25bNMGzhDO2uk+1cmhoTuG0/qpLX3DdYUPOCrdU9XL+/G6l08
	 VmUa2GrSakA2UjX7nhssPW3eB44LNQRrJ17BDUhMclxr/AmGFGC9N+tO0frqO9Hod9
	 utCGijel5ptwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9935CE63F11
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118589361.28060.6436938983724548292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b080932060d83022d5750e3617e1064695830143e19cd9e742050fb490829cf4
Date: Sun, 15 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771185893
