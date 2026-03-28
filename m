Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042A833688E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774663494; cv=none; b=gJPjwHCmd8XSES/lv6/dAcLK6pSsAvFeqE7xY0nn8OueNf9kzPqrPKu0b6uSu015XNT0gDVrijkPRXwWfTW8+V0xoL+chbRo8vtTlUk/f9lX4e5B8SQDWcY5C21/TZgtF2Z4dTTrTC51InjoMbNtHrAtdNmV7Er2QIM680x6bPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774663494; c=relaxed/simple;
	bh=wtwmLPaY16nV1EQDC5kNFAmRzJtKAniG/SmZP2w8l6M=;
	h=To:Subject:From:Message-Id:Date; b=OD9f4mwz1wpNZT701Fl7nGBlExofQLBSK9sc0xWOg3gncgZiW5AN65KzC2YsRp32LurRPiMvG7EH/vW9BTMG5N9cF/pxskfn1FCP3WcxqP8gHYZ7hTv/B0jjSKOIZuQFhjVoTCH7lxhkBkxGIxe/V2jtyDLCTGTkh65V54b99EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fj4nLifj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fj4nLifj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CAFC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774663493;
	bh=wtwmLPaY16nV1EQDC5kNFAmRzJtKAniG/SmZP2w8l6M=;
	h=To:Subject:From:Date:From;
	b=Fj4nLifjBYwH9i1J08ulGuAlU9eIPfKe4q487GZcf+HdFt8hbSd5qQuytEqpt8/PI
	 IWNcQ4X4gzE0f1/4tYo9AP6/CGUNFJfUeGL6S4MWjm6c9COYGH7upwTC00Li4G1Py9
	 Sp7lNNwhyL0H/EBtyvJBFPpkD54WdWP/dwB2Xz/bJrDhiM81pgDFInJtVMMa4r+DIp
	 DC7ekDaJGtWxpRT6R2zyXQuABd6OSkbsP5W4nI/971XVEhvq7gk9hA4na7DAT3hIUC
	 CCdGLg8lmRK0XBeiq1pf98R/L+Qm9GnQRI0lMI5E6tpu5xhwvNwTCYWqyVZrurEow+
	 f7v2ANCR1WYug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E2710F3DC7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466349358.19606.13786174548410177342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed8bf6a2b82a3573954366f577e08a3d6d42327cf6726b0ca4a38883f98d0c5
Date: Sat, 28 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774663493
