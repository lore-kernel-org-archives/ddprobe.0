Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D06194AD5
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748572195; cv=none; b=CY1kYO/rtXT3hrWkuS0z07MpiJJRfYq9jixc3FXxoEo27NhN9jdSJkTAxF4CfNImt0aBvJZVx5IhCMK/KLiV/gWTqLWTDlwzZH8VKH8Tp20clzLokbn7AhSjmhLOTmHKx9IHsuygJkYmuu1LLqyOqyhSu3+8oudwKxrWWhETmXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748572195; c=relaxed/simple;
	bh=t7MyBWhy4pIp0uTT6heDoxOMtQeVUqlrPRk83rm792o=;
	h=To:Subject:From:Message-Id:Date; b=oeYMDjEBcOgLUPqrkZOP76nycYne+/H7PcUaOw5J1pe6aHJM4ZyrWqMFirNBInLW0JaWhy4ks4xiOICHCJtEuwqJeffXlQyc1BIkb0v7xqTX5wsl4HzbyzCQ8smXtfXbEFv7KKdMMemPBc5WKLooU35kzPSfdaLsSOEPVqNSQbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=so2PDEK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="so2PDEK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5994C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748572193;
	bh=t7MyBWhy4pIp0uTT6heDoxOMtQeVUqlrPRk83rm792o=;
	h=To:Subject:From:Date:From;
	b=so2PDEK/P+tfyusLPI3rdCLObPmjofQmSWiL+Yz+LEoqo/v8g0d5L2HIFIyPoKppB
	 ZQL1llceIf48mAv5x3vKFDdPrx850SX/Zo0s+CThQV5FVEGAYdgI4puuhIWsdt0lm+
	 mrAYl4AGA6RUe1RsZDIpMoUuTOTl53QSTQV3h+QItSRCd8MAYNf7zr7k1/LWzjU836
	 vTGJKlhQ38WLAX4DcQvDbjLbyB3bOY3uFLGNsylt6rTq7cwg+fgCekCofPVeCKf/LK
	 u+9W9yuWfLEryvNjiuoG079aS/1scimx9P/eut+nQXDGr9vZ3akGUZg7ZzvF11awHh
	 ji2ntcDgXIX0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AB4C54FB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857219357.5375.14083675787750103039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b1422fd7929c5100ed38427f08dd20ec7cc5cf73eda1d664c9c5e17733f74d
Date: Fri, 30 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748572193
