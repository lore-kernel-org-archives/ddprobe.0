Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E9021930B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750916994; cv=none; b=bJeJBLGobzUjjev3EDTcjiUCnmVAKWakgOrtO2Eyn9OZ7DXJfANVGyVd5N22V9f6hXBGUlSvNBfDD0FGnAte54e7p4OWoS8ij5d+f5fvw/kcV/wOXAaLjtvTkCDbK9r4w/FKBr+3phNjE1uUN2gPN6fLnPPOwbtZIaVlSaeGzQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750916994; c=relaxed/simple;
	bh=ZlqhdlzLZNtPsazKjXaHks/2FMnnfeLZP7nogzBusm8=;
	h=To:Subject:From:Message-Id:Date; b=ABhj7kH7qN9rZu1uW+egI2a5j6MR6JV5d/Y3DY+j1gBVvw8H/eEv1U2TpggVpFuGsPEgkFRVfEZTwGKNxwXnhV9lFueqIenCh0NX/4hxI1fpZTDj/FKhACkPLF062XZw6np5OHbk60DwXL2EpNsG606P4AbYaleTABubOq1fhQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1UT1ohq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1UT1ohq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5373C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750916993;
	bh=ZlqhdlzLZNtPsazKjXaHks/2FMnnfeLZP7nogzBusm8=;
	h=To:Subject:From:Date:From;
	b=D1UT1ohqSBejLZmyQHGuImmHNo4NgXJDiV9gBH6oKxbLikrugPW+FgjV1vFwNBT4a
	 /xkA/3TFhl7FwVUZzSiY81V7pC8X2aYddhS8O7oUep+UOTg1nj5qOlVVTIrrdmPvHZ
	 asYLB0zvS5KgAD8AhfAXSXnozmkcDEpQq8rLy2/2BjntLk5MPwfjSDKfNcOAdUWrHg
	 nzjblJ57domOF6BQNab/VYTF50VyhwIttfrJKG1C7tTpoVdZabhu62kQL62vWBd/Hs
	 to7uc9u+2OrRvmr6B40t+NkBt+ilqWLBr87tShNRiUUUeEiFfxZMJg1eGc/gaHUzs3
	 jfvcuILVtle3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D9C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091699358.19851.5092074638311925251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca11710b4ffabc624a975f5b645173a712fa4342404f29176624296f109c859d
Date: Thu, 26 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750916993
