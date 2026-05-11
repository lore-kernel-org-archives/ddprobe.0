Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EA12F8EB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778459434; cv=none; b=XwxYV04XAXDX2dROAZDfnZiOOvYeVyBlgIEJQQEolCmMVPfIStx7GFwEcF2h1lj679/2YVIvIDVyCbZJpyHRQ/sdmeJ0AkdwArBnQ7noJRtdBkSgSTEtw92yTmBgP/0YmLvnahGIOgqS6D+dfDB6CNJfEVc/qrD5kEeBdLU28WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778459434; c=relaxed/simple;
	bh=iubiSkXkSNCf5LWRS4A9q/phbmONG8CXbsUWXcjqaG8=;
	h=To:Subject:From:Message-Id:Date; b=T3wUxAAKAl57DLVd48tDVB+dBUFfeLUCq1Ro6LFk/rplHIJeQZGsi0AVcxsoZWS1jlB66PXdc5n90dQIhXsfaar6z7qaEhFbZbdaaCRlyVsxB82I+tdRjW/eYE2m05DeW8vC2n+fq+EerXFalWHQNqStjSy1U0WtGgXxy/fHEUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiu7HE9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiu7HE9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5227C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778459433;
	bh=iubiSkXkSNCf5LWRS4A9q/phbmONG8CXbsUWXcjqaG8=;
	h=To:Subject:From:Date:From;
	b=hiu7HE9V0FHQ2S45XM+v8RZRVnRkSPH5ZWRb6sRSa4p8hT/D13twcJXyi2vbPOqx9
	 0QiOTqfp7KJT3dAadW8IPfjGrdMxHKPwNUxK8kusFhg7Klw/Gy6qxMADHgpGRddw2O
	 FVl2Tq79TtfdU8VLKfoQL5kothcmbzX3i6Kwl+kCUz9oX9uGJJINUk6bc9el84r9pp
	 lYsokW5acKXAul/MQhFJcIrd3cuPfqsiBewSqA63wGdFMk7vLEXty+ruIWHenkA34/
	 cSzSOuPv/sjrM501VhVWIp4tfsiPCLM+1fYzC/0ZQw3RGzsWJuQIuUYJRnRB+drsPA
	 VTeO0idu0U9mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A51CD37B2
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845943368.32062.9052012811036160027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a599532f6f57eca7b3e4b0480138875f0eddd594fabd2dcfe9b0ea3e8b9b6c5c
Date: Mon, 11 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778459433
