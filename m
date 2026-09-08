Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A42524B08
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788865234; cv=none; b=LDqpMM3gyRMe2/xeMikZ/mqwIy+Vxtxry6NtRQpP5wdcAwLUyXLPwJs9F10g2k2V0xUGcnvoo+17sMv2tq9x9QChk6KiYhBE8+tCDV3LUVgx5576HIc0zMpJWp3Mb44tXDgGgUIHi6uekYEfbHALrFov+/IhiNp9tUNFPaIyxo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788865234; c=relaxed/simple;
	bh=Za+kBQI87fZgJ8hHG6Sa4Fn3XRgNIIQvz7FbSttEMxU=;
	h=To:Subject:From:Message-Id:Date; b=fCkcjSr3WN8zRHwWaVaffBlvNY3B1cpZJi87jlMeADQ3PrwA131tVIdEpYMuDb+zSKb4UQUkuu27hZ2kOgYjy1y5+3qRxPD5j3ysQtoCPGwQ4xNHqYSOocCnznLcfXpujOgwOrXVVs8JH1qvbR25IkHJ/5bfVO7ntbbkb9q1VYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF8fwZXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF8fwZXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A16C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788865233;
	bh=Za+kBQI87fZgJ8hHG6Sa4Fn3XRgNIIQvz7FbSttEMxU=;
	h=To:Subject:From:Date:From;
	b=KF8fwZXe7bMjG9T9DJrJBMrPISX6XPP+p7rMiVm0CKAlvZOEGdVa+fIJRa3Ys6TmY
	 1QISb+JWoa2NrOQBnnAfEHGvqEodVEDt93u2BUzkAPn8CyzzYgROWw1wZrGlGBYHdJ
	 XWnVS/8loIeCTd1DUP7U9E4yMeEWhNocsSY/Rz6D33sFy0DmPNpo/VxrkNQmM27ONZ
	 +kOO587QmMecrXbLMHj4JehzCeqp72z+uMkg0G5AUEqjxMqHpP/HQ18bL++IBBn6qm
	 MKOHBEHCnUEOZV2ZQjP791cc2Lj8are/JvOveQtsH2EN2ev9DqOSwFbujQ8lkGGDT4
	 saF0xz3NJfaYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46ACC79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886523378.12941.11130552139679886926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb89b731b58b333a8ebdd954ef2fe3e6b8ac1057e750bbb2b92af44baf51a2a2
Date: Tue, 08 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788865233
