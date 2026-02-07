Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9252745C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770478434; cv=none; b=dCrjn4uHhyqfFKEoSxD1Y0ht4+L6MqVYGJn0AomksU5U6wqcZ6H7N+ziVPPBooO8c5Q6iGO+fRvcOGQvAn9JD50DFrKC/OySg0CEhPI/HVQfaELmflWBjHbpb6g9gyxIuTwKwoyU+WKyD4c9O8+LnmgBlbRj3w2apcrBe9M+7W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770478434; c=relaxed/simple;
	bh=WtUZAb9Gr+gY2AvS3cg8ShXdMKH7SY29mmkAjqHmdtM=;
	h=To:Subject:From:Message-Id:Date; b=ZkWfp0e1s2HFroRyKq0nzskZvK2UrmjJO/UbDamZyG5gWziJiXpvduB6o8vEod9A79hyZm3DEGfW0k25jmueoMmPfUKVaKExQnXu8E3aZxHg17eJl4R4Scckn/segtyQgm1j49xugokFDmMUhmrCBGuyOKY6afLKdAZvnyIT3co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mlx5Y3wP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mlx5Y3wP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AE7C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770478433;
	bh=WtUZAb9Gr+gY2AvS3cg8ShXdMKH7SY29mmkAjqHmdtM=;
	h=To:Subject:From:Date:From;
	b=Mlx5Y3wPAUsM3Q+3LGiAZ/fOHmk+5089WEAVG6GKKLFljaWiGgJxvnjXOLFQ2bLe2
	 T5lj4zmf6N7d/DApWggWIdOwW+5lIt7gPtQgavQgCsEKiLCg25ztREcA7ZP1Tbp84a
	 I4GcGtgyHbFvfU4xy8UKFQRIRvaUIVWi0n8I5SVls22j63tNOlwk91kk2JDhXHYtsf
	 G95zBzJFbMLHIygEopk9rwgRG0aRkEZ6/N+QWRO0YWe/UcIR84iWLEYd5b/VuUGXh+
	 dQyyQA3775YG51BA0llKS/z5wRbl+o5VfudSzkYIVZhYM4iO/U02td9910l4hyvnSr
	 1IQIdIsyeUE7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5ABEE0AE9
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047843360.9094.3035723511444866483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4e32e9d767b5a3e2b9301f868a90106ae00033704a7f93df978ada374f9afd
Date: Sat, 07 Feb 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770478433
