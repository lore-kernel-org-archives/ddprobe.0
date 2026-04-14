Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DFE282F1B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776142654; cv=none; b=XlsDc6kL/JLAVV0iNRTmDYTR20H2CaUsF8vXNyzd873VsGpXYH71X3ylVLOUMdx2JHiAHwIDxs3LzJ6j7xbq6ko2WEyhI64lJ+JU1V8fimqo3QZs2gAC49ko31T9ymGJWyaj4818+ruMTLxfFaYIGDo5sylyy89321E8Uv1DRgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776142654; c=relaxed/simple;
	bh=Qz8e+ApJvKvTOu7gCiOKQXNy42JN9Fm2U8W05MAZbfo=;
	h=To:Subject:From:Message-Id:Date; b=KOWJSANzVdX5zXpRT+/ueVhNJG4VBqoNb52chELA0p4OaXkgdcqTtkGpnCtwWrUfOk9a2E0Hg8gydpKN27Qkk8zi7SOhciqDAPYZuoffQQvm9zmvYzxVzor+Nq/KJa55CvyHm1CSlGu1SdWEg9ZQ/iFqGPnYsSqppun22oy+JWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XW9MucEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XW9MucEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF220C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776142653;
	bh=Qz8e+ApJvKvTOu7gCiOKQXNy42JN9Fm2U8W05MAZbfo=;
	h=To:Subject:From:Date:From;
	b=XW9MucEY9ZaBIerXDt339c0bpRL160PbzMuLo6kAB35xEQC8nBgKGU32qXQg9Pr/h
	 XmoUz8/gEW3DRvGrpyCAcxu82IF4tKldzoZONquv8R+ocgFukfWtPAkFIEsXHRwSSh
	 4Z3WCq+HpBEfR2TPZe1gddWjdb3ArRgSxQ9H9fPUtU5W6yinq7Sx4if13pHMQEgW1g
	 V/F4TVg5P/NUD3DUcmVIIizjLaeqXJM35vRpAwLt3+JIxXx9ibZYZRyDgIIEAS+vJu
	 AriVx37RUKGLpnNSIfMPz0Mn2R0hiE9KxL7b2KI/wXrrYa2J9Ev9ljeCU47skT9MvW
	 M2degsUKwUqHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D91F34C7E
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614265368.10764.2300525358999453004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2109661822c0c2d518eee34cadca98b7f2a2fcdc65d8999f9a602a3c682ff8f6
Date: Tue, 14 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776142653
