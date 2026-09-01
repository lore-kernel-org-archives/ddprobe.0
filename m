Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89CAD1A6809
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788226836; cv=none; b=ielBFqnoJDnvRymcaLPCfRomEBWwvloTN1FCUVH3tC+afZpo9WFn7v5lJoDTIKRTZB85nBFSR+scJVXyt+8YCK4fVwAWDT8T3/5YS2jGpH152kfMrI2Hd54lyySdZd29PRiRIWq3T1r9sh9UlFkzC9qOF38ELQVqERbZ9n/6VoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788226836; c=relaxed/simple;
	bh=exgeOp73+p3/rQQCd7kzbbcSQitAXpahRZ6u0m7imMA=;
	h=To:Subject:From:Message-Id:Date; b=n6jDlJx/l73uFWCBSFF6fq/kpOenFPHvpap1WLduEqjXV2pnq3lcq5dbnTzIUuCAYpdDVOYEOb3+Ra47KWkXkceutipXrxBdXj/Il2rgXkMkOdmntP8YQcQxNTpRN9860kMS+KQAx3ilCrUzIp73e5ELlWNX7veBtKLGQudut8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBG/mLeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBG/mLeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA44C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788226833;
	bh=exgeOp73+p3/rQQCd7kzbbcSQitAXpahRZ6u0m7imMA=;
	h=To:Subject:From:Date:From;
	b=UBG/mLeT1Z1YlCieUMaxu/1k0I7oeMrhVfHPRHCZaPoAa+UynxTYrcx9MeAE/vkr3
	 3gNbKqQO1Q7bhCHDlgoZAE4F325y/QMKvEB8VQtbwOdBmk541B9rVa3ZIUDC0F84ZF
	 nSIY+1q0yOLxrfWUIQLF/jTL4dpA4r1s7mJsNFO3xUrn7gp+wF+DCLPTIjg6oBSb23
	 pFiobLvXWM/PLyysO1sUJOWkCou1UQ+S2NqQxavmXBl//y2cp9M1Z9lU9njomSt6W4
	 uF8kvdKAKWfnYKLvTHN9p2xLERsq8wKt7Cjap2qbzc8hqoumaUpKycx5RZGvZcL8k/
	 Xi4LV17CNRIqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE71C61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822683368.13712.14296705375465258298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f76ed6cd759048e2350f994607b8db01af24dcca74d47e7dba971c63227aab
Date: Tue, 01 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788226833
