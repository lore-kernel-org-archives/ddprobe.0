Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308BD357CFA
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787991034; cv=none; b=SdQpg78Ob8FLnOix6g5SnuDM5HydnfLvaw4lRsDGPCTz3M2sUe3llAsrkfEBv3ZnMg99WysJ3F9UK9k9Ena+iKoSNTqmTpa3Q2CQqGpQlptgBm2P5IPQkhlleWwF6xvAOYJGk6EShnjOHa17yCZJF5xgcegDJ3CZ8cQ+97HnI4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787991034; c=relaxed/simple;
	bh=gz2ndsn1rg4vw8aRfWuUdOU5rXwlqQiocddN8TY7aTE=;
	h=To:Subject:From:Message-Id:Date; b=IeBjrF190WjSt0D+7Qb8IbbnLlShSC9Q0RampOZUnqcLBqoZcvPPjkyGW3E/TP8kBQgTENkHjs45dyXZfnz2GWX+ySxPEugzO5ZwMcz+OzPDRYpDAEq1zW8kdlLBEN4cyIdRbunlTNuKChWhjil0Y3kR9ggulcwjqjTBfZwHetA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVeFYzYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVeFYzYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC05C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787991033;
	bh=gz2ndsn1rg4vw8aRfWuUdOU5rXwlqQiocddN8TY7aTE=;
	h=To:Subject:From:Date:From;
	b=CVeFYzYeSHipn/UA/qlKKaFBuAsnViN44RWgDRddg98cCRbb/a4d38Qu6cIBy8N6z
	 afCHmLeEObBgSLHkZC5mMg5fnHi8ohM5DHS5fxPyV2wPOPQr0YbGFBxj5qhbSRH+Ny
	 q7KKSlgIh3QyvKcxBQ/xeNlBLbo55MNWGODsOS4K0F0Q/5DOwBDxKDbIY/Ce261wuk
	 R76m59sv0xZoqFDWQjVzGTmovzIZh0wE2zl7/G+Coa3G7SOs9ac1LnBjoPe3zeh2Jm
	 8jN8dE14u8uXiYgb2ahlSntOFnELRNwiZThmsMKRo2ARgxHZWokeqKnKbAQyU9okQ4
	 txRj2f0prNqvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DBAC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799103368.24325.833020384686658245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ea5fbbc498800fe2ed78150bc8c852892ab229a6fed95d7848b512363af2ec
Date: Sat, 29 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787991033
