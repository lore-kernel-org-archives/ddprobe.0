Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895D43358B0
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791533434; cv=none; b=YMd6nSsXKfhjT2kty5kTMBeH3ZoXr2F0CtqLubL4bt0lDX928ew63o+njelHJJBMk0NfGPqb/kvEcD4xyqff+FC1wp2rExis7SaJXIkL87d4XjhsWKvNwS8PWbkQ/Ip63BJoy1T1+Mkdix35dr8DEqpZAGnetcQU/2qzb3ZPpdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791533434; c=relaxed/simple;
	bh=Aj1QPQeBcsxyrksChFEc4SDru3W7ZVMY+yqf98R5Woo=;
	h=To:Subject:From:Message-Id:Date; b=OtslIIBVT2abSqcVc3s6O1xMvJ7L6/etCjw/4DbsMlSBD95C2YzNpKoUPNpl681s77Xvmu56SqXTbOz5AAP/O+8mXZ+w967pkgk9jECreWgOrnImhTe/G1tnyeZIjItx/6XbLOpFpc568OzkbpR3+JjhKuHuXGAPf+0kOCaOsjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYmCvJBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYmCvJBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4960C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791533433;
	bh=Aj1QPQeBcsxyrksChFEc4SDru3W7ZVMY+yqf98R5Woo=;
	h=To:Subject:From:Date:From;
	b=AYmCvJButk+drJnPoZrWNhefbfR2O6fHnZ6pt6sNzQKIfYJLR/pwPHc/hJl1w7yXb
	 pcH8W4CftDOY0lt3RhPRoPv7HoN9A/AzW/5TInJjJN2RZumaHOZGxITpt6sGe9ZLCC
	 arqiBY+KjmtvH3Khxr3mHEoKErxOXQw1RML9VZaos57otU+sbjEfaCeexmP9HBh1mW
	 lVmQwk6NE7WmUGhky92QVzX5rodTNNdORDPcl6QA1nEMkbI2TIA/mCVg/9QY7k+3Rq
	 h36ZFM5OpFD5cVHkg/S/U2kA37kcUkKioHb3bdHHpQfHwp7lmM1IOOqD5+l1penkIL
	 52a9fMh1aGq9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F7CA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153343369.14187.9995930128948826987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff646da80ec91a57670efea9adfbbf74b12cb559aa7bef2b6498007a13fee30
Date: Fri, 09 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791533433
