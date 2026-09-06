Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3AC35028C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788716434; cv=none; b=l90RnhvgTQu+WFlx6Koa8ntizJ5/sJLY24a39UuO68LUaYFfQbn697o5uCXoGsDT37Kjk9KWE8rCwa0DriTmbjF5XZGff1Xo9xa1u8jW8vUpAGJ7SgFWyQHTgIhnyhHpPHJlZ0EWtH1h50keGjBEVhTysX4c36kR93cfYzJgaIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788716434; c=relaxed/simple;
	bh=PO4UvnQdP+wCYxAlKjjqRhvinyeC0HCuxs7o26SxyZM=;
	h=To:Subject:From:Message-Id:Date; b=cXmzbCdFV4crHqXy8EcWF79XxNb0jlYFStzu8K5YFXj9CUVInJG5X0h1ReZqmxBDSo7QRuMq6qwuoGeMDlpzHEKfx0Hz2x6DCGtwCNdQrz4a5exeQkMwrPQsZYY/m38FU7Nk/ftNKm3r6jMdBlqAg1rnvxRxYsjUA75FMMCIbgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldT2ocz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldT2ocz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1799C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788716433;
	bh=PO4UvnQdP+wCYxAlKjjqRhvinyeC0HCuxs7o26SxyZM=;
	h=To:Subject:From:Date:From;
	b=ldT2ocz6XsxnOsKY+cj5xMobDV1WWOLN+YDeDZ0N+A8th0HFMS+wonfP7C992gR6G
	 8MqJtZGsTqjjYFtSXMDypIsqgtq57HVNzRKVKGmd2rVItxajwz7Ttu4O7cE7L/pP8y
	 z4gyeyepW7BTs3TXhe9ye3QKl4J/OzIuOf7ptbOzbWNTJZBkBWvXKJZS8TG7C0cNVW
	 /2q5uPtgGwcKt825g8O9oUfhe5dB0GaPcCyccW8zwIRpJeTDRdJx0/wo5V1ihVlR9H
	 fnPGylfsYMc3HafpVSivb6CUASZ8VvHSJ4ktpB5sKMHUxor2CpEeTyphVblY7/TXjy
	 NRH5ItijaLPIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBD6C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871643370.1228.3537620951908962306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea85ad1583e53ac9fbfbe40d79783e3dd01cdbed0aa469dabdba19889097963
Date: Sun, 06 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788716433
