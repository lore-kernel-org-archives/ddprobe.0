Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190811DE4C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750592394; cv=none; b=o5u5xhtUAps5L8DDRc92jWiSQ9ichAG54XPA4cHHaawy/pI/xplhXbgLwA+rbWieHqPJ1BOr9AyiiL2dQ3st8Kv0e7vCewvj5qH/i5CRdffegcva7pAUlU07VzwpSt5d/7YyeCyqkbHOjU2ftFTLgJjTNraqx2/GEuOlYKcuTAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750592394; c=relaxed/simple;
	bh=AwTgjicj3m4SC8ffHCmlvGO7a22UDYpb9ewntYmwva8=;
	h=To:Subject:From:Message-Id:Date; b=eHglM/9fKZBt+DS53vaxL/rwubCnAqNuLqIoXpV8bHumGaE9mZBEV22zaqOsykIzPcPmy1X0UeE8FweUzbBAVFUhLId8+I00WdCtrzrNM4MLvsNjO2yKMaJ7uSdp1d/HNij9IPiXg2jmS7MLtFskA3bunAq0sLPxFI9gAumYoR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfZTNK72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfZTNK72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ACAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750592393;
	bh=AwTgjicj3m4SC8ffHCmlvGO7a22UDYpb9ewntYmwva8=;
	h=To:Subject:From:Date:From;
	b=QfZTNK721xMJSqHmFxvLDWcawGGaqPfFvHXC/X7YX+6cLPwqDS2Iy9lHThvZFWAXH
	 /0lxHuesdf/BdiTWTs3n2Eq+kQ6HXWm+KXXRDAbAh9pkUNfg3BB0z1VpK82ovoyAlk
	 NzdaG6+Y/XMdPa8awBOSPmU4TOSQATLnAhBPCv1Bi2kN9S3dbw55/IbIkvq30EQKc8
	 nJ2BJoqqaD6f2J1r5pdku7lu193iJqLUCMwhKoa6clrCWgW5AVRw2273Q4Bp95xTNg
	 6UZM5HlubmtYlFz73ItgKb5mHu5P27YglUh3MC5URCAhqTMY5teCQbu9HhsSlstkzE
	 98XzsC3rWQ3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF00C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059239357.14602.14438772879053785257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d1492176a0d8a570fd509e7a1909859aee671324d8e97c258c499cd4ede002b
Date: Sun, 22 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750592393
