Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37526248F5A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763376114; cv=none; b=YHJZGZ4OtZzlhH6PBBq6viVrNoUnEOdzLGsqtnNkuMxBKKrjmy66OXVVKWhcoxBJ6zmOG6B++tzkP3VMM8Kp5E7v2VoSTjdi2CcGnYVgJcm9UFlfaWN1i212YZs3i4PkDhp8vohrkDspSr8MO91TACgYjF8LqwNXqCs4yp41y+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763376114; c=relaxed/simple;
	bh=I3pmDBcajoE6+Ze99jpCJNEcMk6jMgnCmfFL3RWFg8c=;
	h=To:Subject:From:Message-Id:Date; b=anM3KkdGKyRlvznJZjpZwo1fOijK12N9APMQx1GjVsIL4jlNvYF4O9zqi87Y7DAPFe6WCOgbUkYlwqwDSbFPw0tauAgh/LwwnJmetWcMB4tQp5+iGHQLDGtfirLGiT+v+0KyFUGNYGMnDtAr/XkzLkVeubMAU/MSwQjoiYljatM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl+IP975; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl+IP975"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4986C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763376113;
	bh=I3pmDBcajoE6+Ze99jpCJNEcMk6jMgnCmfFL3RWFg8c=;
	h=To:Subject:From:Date:From;
	b=Dl+IP975SzEOF95p975nPXdzNbon0EjG+V1GrOjghUyGHdX5dLvk13S6zBYrevxvq
	 2Lac8sfpm+j2gLPHZyvJDioIkTM9YWyyRK5CPVtwDbP9PKY3Nn6Bzx+VVhL/vJplnr
	 UxK3pL7AthfYU3pF0/5jn8qi9850WqWSSdjdYgT3Go/Fainhas1RW99+W0e5SJmlyf
	 Iv8dDtHOVGUNrXmD5e1wUvveaRR0iDxaee4Qa51rM64PFHXwwuY+Ymdb94H6Nw4t7E
	 G7AtfjjCZuPorJXtU6ui1Mnc3jKCzWaBSOkLa+32Gs1ZUQjt8BJXZRD7+xoKqwQItu
	 PQUKqwtYzF+hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30B8CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337611365.11759.10338326937213787725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547041b2fc60611c726917e2d85044f5e5a6d9da19d87dd0a50ce6362164ae2c
Date: Mon, 17 Nov 2025 10:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763376113
