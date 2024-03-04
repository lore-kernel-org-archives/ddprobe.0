Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A2817C9
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709521097; cv=none; b=ck1lXOjpUeIJUjBHFUwllko33bDOhSIoBLvmxeff5FpoVYY2jXa1CB0PBbrrNoLvfaZhHAbXtJqXPX0f17WTSP2Saaiir/xdJj6YrSx17FRToawkQaErZR+xUJWxeywOwbDKdKDhTsqTwd5X6rlZ7Ldp+HfHZxVpSiPxk1LvRCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709521097; c=relaxed/simple;
	bh=JGHcvVAeUcxfDJPK4A5mwEbycHL+C7oEpsaXG3KhUyU=;
	h=To:Subject:From:Message-Id:Date; b=tqQj/L9qvLHJIukZQ+YNsXYBBWFRad9ybvwBl0NiuiYBmaifXtkgPc3tVnCiKWPwiHqhcwjKfTbroWNj1Cn9Qp5paBIjI8jE+cniIP1voKu1xBicOCD2GCpJA0NEno8H8fIh/z3yGpcgr3j+Ei2N5oKpj+Rr+tZox5FTdQrJBtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlP6pu7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlP6pu7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86C51C433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709521096;
	bh=JGHcvVAeUcxfDJPK4A5mwEbycHL+C7oEpsaXG3KhUyU=;
	h=To:Subject:From:Date:From;
	b=tlP6pu7iq4hWbvFO0PK9yZ/EI996zTm4kD5Ue+I1PPMVf3v5d9NSy754HEdadnpKM
	 MoSADgzh+ofbi/9YsHOgJ7TtFCiC6KlNH7iSiXqEZbkesdmXAqYlvwxIY55XxLcuFF
	 HAa1fcN+b7+Uaq8pxzEHQCBRoXpkqhbTt0e70SSujhZQgEM8YhrkmkW9wylbsyNhUz
	 d6AP/MIkfp2Zd0+Stam1KGc81n6hP/tRPzWO/N0O8V1NpUTSo4kKcfyqVZb+GGMcUx
	 omiMobvuzIggaOjpMkDm8FZ3XGPy1xuSyG/6gf/gS5uFCY7HBwztBJmCFcybOlGt/y
	 jpoTSSu6NHoYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657A9C48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170952109639.301.7585886714798366983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52da244f397b9a7227948d4a8bf78c656fe2c344b960451a7e0d938e41b016e9
Date: Mon, 04 Mar 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709521096
