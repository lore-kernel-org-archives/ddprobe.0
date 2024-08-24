Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB4625745
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724472354; cv=none; b=J49AGoavtr43ksZHh9Hy9qaG5VsSvDv1HuGMYusl2M9Kz5ypEbbv5/p0Bs+D+Yp3Yv4wL0wxDVNeAuxClVHMmDKdROwWGAr+tlzvxU8ZP/5OlFZyG7xRk3Tq+PfqRbtBONIbLBU+lvrR+4pr4h+WdFEqukQM3yLDZG/TStNmHis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724472354; c=relaxed/simple;
	bh=IFq45MhGPnxSgFRV3oOeencnS6Y7nLnNMvYylGD9TZA=;
	h=To:Subject:From:Message-Id:Date; b=kf+qbpoAxurikO153I/yEtQ/0pBLFtEiB1tPPPlNScArfjjAvOqkoaXvwha0ex4lQvmYwvEjVSvDLsUUMj3e3o71InKlG2SFZrBI4q70inxE1lKCA1Y1MBNCDbKE3ISke4GgKR9qC/9wD69YuAs+tai1r97lwfza1DKVVeUSTyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4R3tAff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4R3tAff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE550C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724472353;
	bh=IFq45MhGPnxSgFRV3oOeencnS6Y7nLnNMvYylGD9TZA=;
	h=To:Subject:From:Date:From;
	b=f4R3tAffEh7qTcPNtTykG/Ns9mxWnHz+CDG8lPyRtyiW/jgG4ax3cCZY+WB6ykSRx
	 hbmS9gSogfXprpG6QSuKX9cYXLi/h+qjL2YPIecfK6cV/V1o6F6Vhy5SuBe/V6QaS1
	 Q/g/ZY3C2XyT0RhhB6H0hTlByXobVzcPLrQbwyiFqY5Otb0VcHHCi7a77+HLsrch7m
	 S6thLb3Q+VZYChD30mtg/iGFatbhuXDKnMV/t2XJqYpCpHICa52V8dRTOm+sh5+skG
	 L7icbRRJN8nqjfST4TtLKo8fsl73WIyutoLJ0P0Yx499dVa3PUq47om9+U7oRcIF38
	 dWFCYUfqspdcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE6AC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447235360.12850.15344283077877844475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c4b00f3f898ce6c94fee156f8781d022b3c3cac3a361af02519a219055a6bc
Date: Sat, 24 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724472353
