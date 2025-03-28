Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B62E158535
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743123594; cv=none; b=fZUec6EUud8kUqxkcX6cosRbH+Nz31pKd9Gmmos5Q2ZII3sp0r3QFmioQ/CoWcyX/3FwlfyCwY9GNobFYVmUZmVO1NORYmXUX3ILvgKOv99LU34k+/bqZuIQfjvy2FTRO621TAV9KVyviQFGtIa+leVF/K13/JVzdfsLvpvo4as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743123594; c=relaxed/simple;
	bh=+EoMisv7nLtha/21+5RTjOMXNBP1kUfw/Fku/KxxkyE=;
	h=To:Subject:From:Message-Id:Date; b=AHStbfeOQk/uKDpF1/t3BVcDlAghBrzEdb6zYqx0wx3I7qNdGhtFWQb0H0R8Qba14LehnRGEn3Q9OahF8hrZz9NHF/Sgb7HzhOdCRa5/gYMlkrQog4xsuaiAODKQSbC42x9r6oQ/Oh5745FL1kntgBcN0R6Lrvlz6V7jqdHjTaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksnlEQ16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksnlEQ16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B71C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743123593;
	bh=+EoMisv7nLtha/21+5RTjOMXNBP1kUfw/Fku/KxxkyE=;
	h=To:Subject:From:Date:From;
	b=ksnlEQ16IhKfeE109zmQc7OiQ7Ef2Ir+rwcGzWQM8e7MJnahKGdAP3vc95DdlZP4f
	 e0RXSMB0tETqncYtSuZHFP4kAUFN/6jjbXWaNVX/vPmVWtUiN8QXhmfWOrRF3oHdVR
	 oDUi3AJv9eqxKRL/7bw63TJkkpIUpmk774V2fb0NLU81g2RKDpq/+KXkgjopE6i1K/
	 EHT7mOPnfALsSxfqKpBksLJPiufCiV2JqO77BbZJWq/beIH2itIDzP897CHtZNHL2a
	 ANgC63+HpxwK+9/+yGdJ1otmYO66Ce7Jx0dK5Y5BeCp2GYreVQDxlry9mUOjsN9qAI
	 0VK6nlX+Tbg8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6F7C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312359358.31529.13540248516776473195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651bbfdedacdf4b6538e3f388aab37aab18f9112d8712d4d9a6b0db44948f48a
Date: Fri, 28 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743123593
