Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DA02E739A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784231914; cv=none; b=qwil+ig02x7R3bGJtuMO6s/uwlI1WtCgwMwbv+KqaGk8FIhovyqx0ykOJVlEzexEW/SYMlF2tpKOeMQ+H/7pChlpDwc+tfsd5KcRakNHLnMdNNXt55TWd8etNA0pmA3CPmZJ7K7CO8cXkbs7DDf0nH7eIG/QOLdo3ZmsHv3g1xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784231914; c=relaxed/simple;
	bh=SChWrZUkioTDdI/Sj2p40B90BXR0TsQRmis5TXU5APs=;
	h=To:Subject:From:Message-Id:Date; b=r5LMHU3S7A8AfnrS9FGtWIDWbwZGnlijVvaqht0qoz5YxZcHo/++A2unfOpA0X2+MNwHtDHsCnhw06C9CGV2Qu/yqKJUtZZ8VgN1hPNbdIQ51PiCpd3ciRa+3azUZbx02mUxL1tBct8pNsSDg0amaSvItDbtVV7f0JU6eDsI+t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg7Hohw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg7Hohw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD59C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784231913;
	bh=SChWrZUkioTDdI/Sj2p40B90BXR0TsQRmis5TXU5APs=;
	h=To:Subject:From:Date:From;
	b=fg7Hohw9OGDtPIFAUVaHTWb6D0u7Oo8LX8Bqvf+v1aFA2P5Rxak+9qzknAEgqszgr
	 U8SUXD9Zo8beubM/1yz3sBtGeI3jMyfEFUVsmU58uRQgy9VTQ+A0i0UXoJV5jud0Ln
	 Roquf6DsssJd7AaZliTaeF5QmzDersWJyfiNCPyxyMJsvRaS4K+opWcXzTERTDelER
	 70jcPIONnBsbJjey6Gv8DkIFipkUhAfu1Vw0wojwv+fXnY4a/ObR8UCr9E4RNgVJBN
	 xgUCQHaTrvt+ytch9ipjp0tStY4wR3BlWiKA7yCpCP7HvImG+5efwp9FQF8WYy9CJb
	 rpiBZ9EGBrq1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7A4C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423191368.8162.886804084048705513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baafdc99136a437f2173f68efbe036f7a4d0a13cd6b4f7efde8ceded99608a99
Date: Thu, 16 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784231913
