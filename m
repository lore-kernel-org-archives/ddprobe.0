Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D6C38C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723944954; cv=none; b=mKNvHTynoiqHnPsBz99+j8kgslP0nTyT13TL5a95D0dqG5QWIuRMFX1ReBmiTV5TPKpNUVDxnMXy+vkGt/7U5fAoPezVdmUizZWodjA5CarlsMb6Wm+Mt9e6qdr6QzQlSqByFE4BQ+dhAvi6u0gAxKJer0CynTs/aOELXFxWmhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723944954; c=relaxed/simple;
	bh=RcaWpIQ7YDTwLheB2r9l+np2VE1RALIfxlV7Dhwc0Ek=;
	h=To:Subject:From:Message-Id:Date; b=Y2VHGNvr+GnnWD0549wI2B0KVEw4ijMh+db+7rL5s9fZuyGoz7+CDU0aCuyHiYRTQlfdtJfQ3wsHGL+f7pRh7CJjexVDG02gEBRzZqPkkP0///Xkt9MV0gPFWkN/eAdLdI2jK5q4nKkH5QrqhxC4ZJNr49x2ull1Cb+dm4zXl7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dme+ADyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dme+ADyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A982EC116B1
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723944953;
	bh=RcaWpIQ7YDTwLheB2r9l+np2VE1RALIfxlV7Dhwc0Ek=;
	h=To:Subject:From:Date:From;
	b=Dme+ADyqIzILdWnK17bPb0rfoL7ImPOlWBardjj6mfTrGBMNbIhHZKrtIDUmCytIC
	 JFeJ8qw7gIjHDSwYmVz9E00hsoK1zn+khsDoXCHeY1kUdec47bcIl3Pof6y7ThSxY1
	 erlRdAn28dkp2M0nXBKijFW2zbWUXAzVygGXz+ukvdOF4aqkskhNrWhX3Sj2dHBO5F
	 pjHNacwQcMxqqr4Ofcvo376rJOyemrWG8KKXTpuSZcSxX5mLgaPGKBznaFskL1L09D
	 yCWNvoYyUXRhfw2U3ZX1sPIxbRCTLTqLovPVTgre1KgiZHSaV6yBpfvc7Gknz0jUzz
	 4DWd6qFdkEG9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973E3C531DF
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172394495358.5960.8783970686945700124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c067a6411ce1bac647b8bc686b5eea44a14bd414aaeda131dff42b8ffc6d01bd
Date: Sun, 18 Aug 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723944953
