Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3848F33688F
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791739834; cv=none; b=gMILXSwdgP30sBqFhOEzijoAAu6BMialySqfR8ywiDKae5JzdUTacNORd27KjcMQPO9+cZAV9VRdvfQfsqKmjcnEnHurp0iCCgW9mgzyOHhq22JpPiQQh5TijnusMKuGEzYWsA2kHogkVeufRbfw/jkJX0p6QQtpSfNbhbZGfaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791739834; c=relaxed/simple;
	bh=V/GvIQBH8pX/Y1EKSrQ2exhJGXVlOyC/QeydLzs46AA=;
	h=To:Subject:From:Message-Id:Date; b=SxjSYr5jzXXCGOlWgcLn64BZTjG2mdX8PxaaQdi4lX2UtNRDXpuRfYhrpyaWltjGO/1vSUdTzHgFTLH9SAXE8hcfkAHd0BEqsAT4wrlgoDltp61nhQubicj1k0ADRBj9vlQ3tD4y2RDqXmMfXrYtStbvSh9ljT4C2bMVNpgzOZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ozos9jrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ozos9jrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF651C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791739833;
	bh=V/GvIQBH8pX/Y1EKSrQ2exhJGXVlOyC/QeydLzs46AA=;
	h=To:Subject:From:Date:From;
	b=Ozos9jrdP+uxK0TIFBsQJS81V/LosoLR5o0NPXQfJTDy37MdPYfrfTLwL0DMJGrKd
	 4aAIYuQ/JCrreV9VUmrka14ym+gNNlJjLyzruU3x39KOM8eeGfnEdokpcaVSW2UiFX
	 ZE6cvGRMIod61smvKer/CpSZrI7slQhK/eL1o7QyHaW/FY12d4bElndsz36IDOwXu2
	 XK0PEbDXI3SYA14x89aLvCjLv/bQuZryVttBim53vzgdgL+aJBRHiWbdcTMf/FD7UN
	 mkrI559XrtPJt1k6d+sW3TJlMWVhTgQek+tPjfPJuLoaLx8OlQRBl+AyqZc2nDyo2D
	 KthmPVUIXhFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF4CA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173983368.16523.17895298105346888980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee83a2fd428dbdd46ce072e44763843f2c54d0084234c0fd74d98e4e2d7d46d8
Date: Sun, 11 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791739833
