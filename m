Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A56F23EAB7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765378374; cv=none; b=Iu4UhfXiwp7Mc9aV2Jl+Km2quhXkJQ42WKfyvJ5j41F+Xc/WDulM4C4D9qscWxjPCXvkQa9eXXbiC+yu3jIJ9C+WXCj7Op43yAxcextVSxArYeAfVZSeQw3t515bkt7nhE0Rpp5UiDLKF8oMp0k+rEyhYme+2ZeQdS7NC6/p0qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765378374; c=relaxed/simple;
	bh=9QNcV7tyZq1C4P7QncwyENu0DVPam6Za4NmrpIUEU8I=;
	h=To:Subject:From:Message-Id:Date; b=KCeVucgRU++fX7KNuBmnzO1aAToHNFLt8rLC6resnDl1cZrv5t0AW4iR8MyaH1CdjB5lF3tkBLpfhCSKTOA2aMH3iX9qZSXCbsCwtFCJ/pHJXvQtTW3HiOSI8dp58Oi5WzRIid9W6562SbJq/+FEKX3Q9VCtag0O7LjIEYQygSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzoQS0yC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzoQS0yC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A224AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765378373;
	bh=9QNcV7tyZq1C4P7QncwyENu0DVPam6Za4NmrpIUEU8I=;
	h=To:Subject:From:Date:From;
	b=YzoQS0yC/kdWABXQICvzhmIz5hyRfet9oT9LJW21mVAh6pjP9fssHS5aN7yKZ0CMX
	 GpE4y6i4xXH2N8F0JtaObH8DTcHy9NlP/2amdwtFwPIY4lBXHy8eMIsQPm4LuDt8IK
	 mtjdy9k21rja3nG9d17HDbOKaiFqnR1ltKYFLnTAXtJHrcQM7La+GMdLVnyq9Mnx64
	 yu2lVmRoi1zGjgTIUnaxj6UOOk8XYbRc6irEv36Cy4WSXWvJAB/H6ltnCS59pcG7qT
	 tLYdyM91VCBcreluixfpPG2yMwCrr41C5/7z3FLfvqH3dQveW+WoVXNmMv854udXkh
	 MKhy/JvPt2PWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914DCD3C91A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537837358.23834.1079556678945363415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc56cdb33061b85eb7e5ce4f69fff661163a437d6e861d1961bdba050bc5a56
Date: Wed, 10 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765378373
