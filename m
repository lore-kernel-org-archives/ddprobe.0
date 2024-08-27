Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EC038B
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724726754; cv=none; b=RTnPLOj6t2XYLNzTr5uA2b0u9tg0luNAkpOLscfo+Eq5czmR8SKUAalDhSLbS/ICldmcvEIQuBFsXJLaSvJfBqMN0rzE+Y/GF1cTZq4njLChQmYhV7jwEnRcXe5dJyBN1FxdHzttC0LIkLpCo48eAqgshUqrdCE0S5RFm5OOtcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724726754; c=relaxed/simple;
	bh=h3+7NYFJkXJvPZToCgBry9v++z6kdoMGZIcrb5fXt14=;
	h=To:Subject:From:Message-Id:Date; b=bbPCZPaahRPDWq9tJ0jnIXz0x1NDyGqF4WafTXTSn9ZPFuHk6/kU9MnAYwe68qbZGTiUsZTVQRZJInkDzmdYMqau+7EDvauk6U1Mb6f6pWJ7QFpqtQnRbb+Xd8/7e6QG1cxKPD1Z/zBpLdLr2kL/mLt46MgsUutIfgpr/q7os2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwLndbXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwLndbXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66ADC8B7A7
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724726753;
	bh=h3+7NYFJkXJvPZToCgBry9v++z6kdoMGZIcrb5fXt14=;
	h=To:Subject:From:Date:From;
	b=pwLndbXKJ54/EAp97m52e3K4VtrhQjSvZtICRGPSNLVaOByYf6l76U6rOwI36ETuV
	 yRg1guF2nWfWKTlUw8SDk51HjPtWEy00uTW7QQ1VUzdjuUDeVl82wQJyWHrcUl+eTy
	 fn/VdGoF1NP1m8MRBu9TgzASKdeKNO8jmQZRHFTtcejPpOUragjTaxXZFiUcoASPLd
	 sAYfvQFdi8sX1vOfZ9FpyRIznlX/MISHPepWzX/Hg5b16prNLYdMb0USr+D7B3AN5n
	 ipfoyhEK3pcvvNEmk4lW/JS1lBqyqNZPQdj5V8MUlKWL3QnU//Tp9JNJO1bN9UtVUq
	 O1q5S0+Kkx9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D880C5472D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472675362.10607.14565498462735626644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d065536f804125d2ada2327d31180589ac73ee3c18eca7e451e1650580b11743
Date: Tue, 27 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724726753
