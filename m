Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D69376E6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719819863; cv=none; b=EKXpeZhHhD5zlF6ksI77D5U47hTIUv2AKbL7JJRQfwkAXn/Dg79R5IxmaxRGXl8DXRw6sKG/oBw5MdqODUSjB2XEIxVKgqzcPNpJBNwShDzVoz5WyMH6jnq0fBQ+kpQ3MV11fsh2Yax85zQ0+FqBOTpxN8oB0iakK2vwifeOFCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719819863; c=relaxed/simple;
	bh=p+T3jZ2MCkdo6JENvZn+3bWIoEGZWuM9g7GvnZNJbbo=;
	h=To:Subject:From:Message-Id:Date; b=XpPKmGKnNQhBQPFnqiDUnoVifG8sbHamaVDWCggyWuGNUgJ/sKFs/WsRgn1VZEMkddz4NuYgKROscNPC4rz31ux5rDFgg4Fn7YBNa7dbHu4MZanb+ZFx5+kgVcqfBzRzuhwBfkvITLggUk8N5U8z2VeX6KalecnRxgSMC8srZGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfrdSD2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfrdSD2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E898FC32781
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719819862;
	bh=p+T3jZ2MCkdo6JENvZn+3bWIoEGZWuM9g7GvnZNJbbo=;
	h=To:Subject:From:Date:From;
	b=sfrdSD2epWxncEAsp1eldo2rvpS1nmLw7tVDME74v5kzc0TQgiekEVf7dDzjXUDS6
	 U1ZiI50ZpkEW5HkkvvIHmaxywE01PUKiJ5umjRLQkjUE0M0pWsF4ecsbt59RABHVXk
	 0DBC9VmdSh2zGKMyl9+XHzRWoDQToJMCwbYYC8BXMdx/4yLAMMrGYh6+jkstlsmakq
	 At/2E7xaJ7H5nOcgzBIYbZUUwW+TZB5HCFCPRA2thUBGR+W/QsU/ZE3bdk6puQ9dmz
	 qmE3eFJ09INOZRHLoMDWctqiWozIgDFuJaEIDxFQG2AB8BcFaexAOE/+rf9XRXhCdW
	 e56R6Mw7b1wPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2458C3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981986285.9052.15413894649017084033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51ee00d8688c1dac9037dcd97106cc99810e03fa0e402fed671ca1a01bd0d6a
Date: Mon, 01 Jul 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719819862
