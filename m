Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402363CB55B
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785627634; cv=none; b=I/IiGuGl1nZIaTuHuCEhT3CXCMKtfw4sSyWDBWntZ/L0a0rfUI/KxaUo+KO69moatoZfsYU2z/LJf/BQTr6M8e5X9gOgjLVV2hrOXmbDs/fRTEDLHQ5PQDcrFCEiFRa6aOfUx4rAEZtF3Zno4Dos5x3GdNdMgQIZHpU2Aif5C9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785627634; c=relaxed/simple;
	bh=PnSzbdEL4+5llS+3BNCXfs3K6sgrltchiTxigizs/IQ=;
	h=To:Subject:From:Message-Id:Date; b=jb5FblLMa4d0sOtGHl/SKBp3Gq9maqR6pTTwMq8gjJRl7ywM3WUKzA9f1EAx5EwnrbzZBpxCGYAyFpCL7tV4czwk4vQTGGDCT9VnbKL/Qc6dUVzGDML00kz3sFxqsbeWhIocBxeWeaDmsMISBgu+yQIXPiJF3l9HOkpYSIqmb1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fID8wm5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fID8wm5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFB3C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785627633;
	bh=PnSzbdEL4+5llS+3BNCXfs3K6sgrltchiTxigizs/IQ=;
	h=To:Subject:From:Date:From;
	b=fID8wm5w+++qEPhO66zStFgY/NBbCWQmLQVNJI2I4DKPIOp3bzJOPebyVU/JHb1PD
	 4pE32XqRwHaAvIjhWZFxLnQMiw5+P5I1Yjq20cCainerLhqBFYX7pDM4U4M9MOamAT
	 MheyiVWGs1svfzn4OHYuveKlgLsthnVS1v7gbim13sk9guitQrQSBAhHw8AD78ztWv
	 VVjXYM6LELZj7PJPgd5F2bCy7B5AzqPOPNB1NJwLD7RIfBZE71JAvnX+g054VARPwK
	 G+0ZGOGzN1Q3BxSKOscusfW/7SCkTOf3JKQbvtJC3ejNXpmOFZuAHDMb8NNTloZrQL
	 0zEDdhnqQ1Ehw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADED4C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562763368.13133.12911628605982628176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4be32e1fd4a194b1f11a34b48b7c527a761092bb5b0fb828bd29be384af10f
Date: Sat, 01 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785627633
