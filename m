Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99DE63D45E6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786914634; cv=none; b=JopaAa9Fv0eZXz2Wg3v0NRhZuy6o4U5WbSS3iyoCc7RnUKUHv/4+yQlJfxu1xEEa9RwoM2gW1CY3gaKFeZ10mfHdNqtyMBztZ1IhMETBA9Lotjca3mBspicm7pAY3j5vdxcG6g4XUzCDhWd69WH+8LIXOjvfvkks9uJJN1CK3yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786914634; c=relaxed/simple;
	bh=VtK+Qa1CBgkYxpNfYdq3gnige4/zZcrrnHIDROd30+s=;
	h=To:Subject:From:Message-Id:Date; b=ixBt+83Xeer/AWGK71h56p5IE++Bs33TlBzjATbIbqih65DNHxw2KtM50Uxz4wTleeFL2HDMHQ36u57N8/eIynTKjPOMJKZQ7ZGCXNmsHosxPxQHZzB+EV4mPu9ee66iZQQSiF7Fx6kYKXpLuT1QhcSx8a9n6W7TK7oQC841340=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWh7fmQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWh7fmQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4224C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786914633;
	bh=VtK+Qa1CBgkYxpNfYdq3gnige4/zZcrrnHIDROd30+s=;
	h=To:Subject:From:Date:From;
	b=bWh7fmQexuQAoC+mkDGSdFMLDbcWbyQeLO/Rn+FAo2v4OIHZwwq4f5PSAZgSm793i
	 TZkuEAxmqp0rF4JbvU+rsz6tfgCskltNId5/qYS+4sPuER3SXKMCtJsVfiXESYa1u/
	 e1qgfKZbpAmyI0XykppQ+wpQeREbkNpTovPGItNrdgeB0UOhBpGWcGDDKZJQNcKoVT
	 hGd9higGFMrqiWnqzvJnPk1sqbAL6ONgghhzw4EoNaSKeIFjReO9QgUP/nbz7tiNs4
	 18N8yz3K2lknsmg2CBSMC/nV6WQXqvzMqlnUaQ2NynX4CG+If9pI7nMxtTeOdwTNQ2
	 KQuULdbjnvxvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD645C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691463368.24585.9668618559886411890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f6c7ad618161810dadd1d23a06eeb4e2c02c79b5a25c323375f9e0516f684a
Date: Sun, 16 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786914633
