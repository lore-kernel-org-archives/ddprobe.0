Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA14126C02
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754879994; cv=none; b=cSvvngluGaJCO6Hf/XsylbuSvdZ4BydrQ3eJELvvXJKgbFKhP37OhhgBY9KSS0GDiyG0J08eSr602o2zRz8YpzfqvbASY+ON6qdcCvebEBbU/8uUeSF2qUbsn+xGKOTR3HQB24y+NCJkt8IW+dfruNxCYM5rWbUXvrebbSrgq+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754879994; c=relaxed/simple;
	bh=A6IPEQbuA4e6ViqKqtrCeS1MoROnOGWgIu2nwFI6dXY=;
	h=To:Subject:From:Message-Id:Date; b=kmnW5SB7PihlC7ENewKnV87plrPcbP+iQZN2xImPdD0uyiSvvwjjxwuYE5yWVAjdv7AQkx8cchq+rD9DqQxe5tzPluL/M1FRzVqKJypptF4p+Jxq07RBhc0OGSZhmKhqcWdaFh0fQrOTF6HFQw8QYaWH8lppKQp3WnFmROYmtGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ue+APk3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ue+APk3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F942C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754879993;
	bh=A6IPEQbuA4e6ViqKqtrCeS1MoROnOGWgIu2nwFI6dXY=;
	h=To:Subject:From:Date:From;
	b=ue+APk3IwCUDFq+MceYT+ixCRrwqAl1mdHr7jwc16oTqnd4cx1+L1Qz4rWQpul3mx
	 czwYqRHSxpMBuZYAKi4/bmY661xT1kPOIyTtAw//Bbuykc+F6vB3Irv7Z4HDrBnDyc
	 CyoSnRwxlXBrQs0nGHNkSNszA3Oi8TlmCwlVkaK+Bm3Vc/GwjSJ+JYTqvf9uwhe2su
	 MHsuHfcYytfKaZS8Qbg1Mw93nhVlkHVtqSMrvRx8JaRnNde+o0WDkV/zfEtGuJ3f8H
	 UalkURi9iOBJ8BBRc/eqQIa1NTevv619jecjhub2KiTUFYl6mdyZvonlMfFqdrEAOG
	 4Op45K6iyPBtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA9AC87FCF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487999357.9398.14045073455558917983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b6e3fb328f1ea33888110f2d4c315e37d590fc3ac2c0afd572003649b99c9a
Date: Mon, 11 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754879993
