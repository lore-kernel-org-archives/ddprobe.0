Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158AE30B51A
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763992314; cv=none; b=h9MB0vA40kjXpAuNZEBH7v5VXapwmXn3UJNUscLHxJCb7RG+3dRSLGbxw+h5X4V421GLDz7/ihOut9dQjOLQyHTkmAVthrnWL5d6KugoIwaDoj/GQVJgjes9AvMWST8OemOXLtrmUUnqckOBp0ggOrnEZZnuZXblTpxZugbwQWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763992314; c=relaxed/simple;
	bh=IPPsobNJ+aNdWgFVDGOadBDwx6jdHosaN4aaYLjfJh4=;
	h=To:Subject:From:Message-Id:Date; b=uIwTTwGQbD26kmAkakYQwInryjrBe9s59Kimmmk+ck5c4VJ2WUhGXC0IAY17xgOfg4k1fHRofGIbN+8AN21HhRvoMPdF9P53MvFBPh9GthfKxnJaiPCVwFLn7p++vLQVAWu3Zwwkpx1v+ktY2s9pgc1EXzPNN+PZNqHxY+i6Mpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tADSjgUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tADSjgUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EAEC116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763992313;
	bh=IPPsobNJ+aNdWgFVDGOadBDwx6jdHosaN4aaYLjfJh4=;
	h=To:Subject:From:Date:From;
	b=tADSjgUqXG3liHUbh3s/bd1M7OPbmOShO8nURXCVN2JySa2c/LD5PonWxCKAPDTaf
	 229oNSBit07glOLBBgMYLf6CE7PLmV9IWKJiCw9oSQtY+DmkksYd7SiTuzGgJPegc5
	 W0GCfKtxiHhbISZP+qCe3CtsPZYYiCm3r7illUfi1VNsc6o/g2uTLIAoZf0V/HawAu
	 xjw1OiKiZEVneYDU6AzE8I4woq7+dT4J/becVX7QznfdTOxL/j3i4mzH9YlNvZksLv
	 M+HqTFrQUz3jhV2CMYnL04DUhovo6owAEj0FOo8wm0/TQtMexglxkKewn24f6U5Y0Q
	 shktusMxzHBIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C50CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399231358.1049.5651462612938228565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946f574281a0851c6c67fefc0e332af0e2b4e333e80f7ca5a63a54a10c0f9663
Date: Mon, 24 Nov 2025 13:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763992313
