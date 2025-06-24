Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC497B3E1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750730994; cv=none; b=BqNZrxMqCbvIj77U/fHexSc2gmyzyrDoT7zo3BwBaE8PoEmhdkw2ULYQgbvF5YCzBG9LTY6EOreA1f3vMk50QmdrrrG6Wo9Ib1VNV47hj799Sp4UKULs05dyay6jlVXTl4vdX99mDPSK4XWkT7qKmXHhphPgzZVtA3zqxP/3BQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750730994; c=relaxed/simple;
	bh=0JEuY0FlCtsWoVoSShVyTsOQEqZbHy0zLfVYlgUNt3o=;
	h=To:Subject:From:Message-Id:Date; b=L3pwmxqg7svEQkcYQAvv2WJZ0KOW0MroJDDOCfUJpR9yp5e74jBQCcYD0hA6KXePihpN4+fDvnFNb1Pggy9Mks9qSj66KSJ1kZd+vErcrZCoRQnt4U7BJwgZBDlzrFflnJgawUZqKRUjVF4B9iuU9nPe6AlY88tq/M+HV61hnEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1avau9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1avau9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7D2C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750730993;
	bh=0JEuY0FlCtsWoVoSShVyTsOQEqZbHy0zLfVYlgUNt3o=;
	h=To:Subject:From:Date:From;
	b=o1avau9SGdBfcaJYVL16gzgPXDOqdUK1Pp685oyN9VbIztjOlh1jAZNj3cNS25Kfj
	 YO95nTsleYbEvNgBcPwf7KenXQEAoIhcfQS2aPuV3gP9tsWLUfxVXrVKJc1T1vOLNp
	 6HmffO57dwqlhLjmL3l/uuLiTYctv4DeuYbueJ4IUNaw5kQmHzxY1o/a8zTZlTj6S3
	 DnFaFDDflvcXpdbj4Z8Gk9HAFoNkcgldXXfGpB8jOIIXeZRp/F6953/POcHD2p64ip
	 1vP96pVrQlMDX+9JY1RN588GZVJgPKo4INNlAV3tgPWI8D2PILPhJZSGXzPnAvf3Ta
	 4SrjC+MZeXzQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F542C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073099357.4735.3696287726356941673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507865fef312a5869ec726caa790e7d710ceeae2e4b5e6546e1c9fc63043c0a0
Date: Tue, 24 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750730993
