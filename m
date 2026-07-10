Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4743672BA
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783657114; cv=none; b=Ez7CMDHsLErez2rFlK3nlXZIzi1SHalVGxTZMljlu4JqADO3hnXuCahkNCeQ4Hk+lqQqE0T1KZr0A4mpEq6FJ1zc6cQ241qp7VcAKSRYtsZZHqWvHnaW2zXsIDewJLjc7Oi1knCnKX2iaAC04xvc5VIN9UCMFfHxa3wrqtptcPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783657114; c=relaxed/simple;
	bh=qLpN1HrofXAzZ7lvgK3LrplSmziIx9rZrowCufRNuzw=;
	h=To:Subject:From:Message-Id:Date; b=LAZ5tDZScZwZwkmrrNuYCzZiClw0z0hzOv0zkcLJX6yKUiFlvMKjqYG7bXf7ubY7M48R7lnWj6/Od/I/0Tjg7XlM2EUwu90DaYUeCUi0ua5ABdGnHrYtJeceVTJZJwaSd8WhOtvw4fauO7IIY4LV5EXSLR270UnTaPXHCDtKyoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shMRC+u5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shMRC+u5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE87C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783657113;
	bh=qLpN1HrofXAzZ7lvgK3LrplSmziIx9rZrowCufRNuzw=;
	h=To:Subject:From:Date:From;
	b=shMRC+u52243sKWhkqD2GQim5gqaFod26dlQr3gOh1bcGhsaEOiSbcYuLlF+lKQ18
	 +KlYVsj5if7pm91wj2gXiZ6Ejwn0dKLZfQz9Wtuir6C/C8RCbFp7zlNpSlYm9ne/Tm
	 OBuJkVRhuyJ+/kUd6cd+YCDOAnVRgDosUjtvyF33E80DMVCpzuVxPnkwIR0t3grsjo
	 bZUTn/EVvRQW+FIoN66hqYgrx0sYayDdgs8QXd1t9/7ZQURXF0TLtV9+prJN7pXgkb
	 fOYdG6k/VcFyfCz6S3goFAiZwsfDxRrqDDJITQ5eEgvi3Xbks23N84F5d/TnvtbC3t
	 SrBsBzzhh1YkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB8C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365711369.14257.6133322845364608253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e6af52dc97d6baa9a91486d4581e12dce114d1d693a207ae3639493a34059c
Date: Fri, 10 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783657113
