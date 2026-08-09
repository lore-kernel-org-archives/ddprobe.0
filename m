Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E01286D60
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786252834; cv=none; b=eGXpXpKXVpP8LgXIbvXyNM22UWh61ntqJjd68aKb9Iv2JJIJ8LV8ZVyjZUhAjVcp970dWJxNH4EswJ6Zb2TTyCVFxW35F/g/xFbza7OJqpXP8i018QwgnNMySR32cN/gzj4lmEUDVdcBilP9GYSxSpbyYFjSmOFvADeQOoFcwtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786252834; c=relaxed/simple;
	bh=K09KdqAUhnNFyUX+7c78uTcbeYE8Qf84WvprBZ5SWLg=;
	h=To:Subject:From:Message-Id:Date; b=Vb39djr848SUfGtjM+kcJAYaEJGRRq5dO5ib2CaQp6ylAhln/QTe9Hz9VfOVzspANsBBO+CzUCo/i+OW/5wJylun8pTatvta9RWHT/sgEp6tLrvSjYYPkMNWLhxewqD435H2T8QapyN+A3Fr9zQXBmONkB+TTCBRVUl5Z47nccM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBEGTGM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBEGTGM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2489C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786252833;
	bh=K09KdqAUhnNFyUX+7c78uTcbeYE8Qf84WvprBZ5SWLg=;
	h=To:Subject:From:Date:From;
	b=TBEGTGM6wFj6T1hG+aWqO41hOjJdZRghw3dGE9Wwohg345b7nZmn91qyQBtV/i7hk
	 5lTTvQ6LA//uvVtWtnlPwnPeotrd8FXLgXyhmKB3454uTZYHpU705/iVwHkmey2tOm
	 dweujjsSRrRvoOyRsKNkUjnOXBRiUyySe58sSZCW7sDO8QAA1BgNYGBqnHb4Qe6vvv
	 Uv+WsS0qT96TDkzAhmk8kxkhXsn4wRCh5EjLo0xmjd937TYLlb6jv8Rv0b1HQsJ5dc
	 O6e9TL6+xnZlmzrxvsIPBwsRvHKHMHyGOwQiEnco16ARHcpU256f6AGVqqyriHbc1r
	 2FmTz0jqeRpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0141C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625283368.23698.6245893838452051731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893404905c3e5f14127a8fcace6c2f3df57797d3f4b785bb83f9fafaa1eb0410
Date: Sun, 09 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786252833
