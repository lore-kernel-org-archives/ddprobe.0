Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFA32EA17A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750266593; cv=none; b=Tz+aIdQqKf1e3mW2uv/Exd01rYyUmUuKASziUdpsx0i7jqBCRnnFJ4qEXV3xinQjkXlk63PsHEb99H351a3p6pQdBkdFP/Nlz3N+hBY+8cQsEqtbUzXKLF/BUKYDQu7QUf/72A+wT1nzNWJpdwUYnoi1991fhhNqvemOjGS/Gfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750266593; c=relaxed/simple;
	bh=NVc0B8gpzJ6P0Jyye6u3Vbikg3bGNtPdUYyJnWPwrtM=;
	h=To:Subject:From:Message-Id:Date; b=ZyajqtqsYDxEebRbfUTRHWxdfrMxAKPtKG6rNgmU409L5AqtaEbfoinu1Nymo3wbxEqWzVdI1YyNGxjxCUS3x3OFSYJa8mLQmAEcFk59YUVqjIPic5rntPc1wS+8TN72ltc8pLVApsVzWegTaABJEEkXoXyokdE24xrmu200OdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLSdNilb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLSdNilb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750266593;
	bh=NVc0B8gpzJ6P0Jyye6u3Vbikg3bGNtPdUYyJnWPwrtM=;
	h=To:Subject:From:Date:From;
	b=kLSdNilbWzP4+dQwwn+yM7z8HEMRg/zx57C7rc7cM0HeHCI34Mu/a5F3ARF7sbhXS
	 ntNs5Gs2EJ3UHuUXT9u1OLt+Y+ByHlM2CbuPDXB9D3vGHEL1ZSTPiB3cZ6zCPFpX8Y
	 iaiWocOpzkmBzdNqvHd7XegLLDykc2+e7BNBhDtT6YlK1th/SAg7abUhB7/+eXxAx2
	 aMKR9P74GMoq78mMiODu6c//CyTpkh5TTACQgHE2GJXz21PuuwmUfdSsTBIk6WiR/M
	 Z3xKx2fH+H2LGvfaWfAJWuMmbSBKsJi5G91PLlZphczPCy6/rUZNY0cK25+ZzJtXvS
	 e47V+9e8g1AAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F44BC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026659357.16605.1993638929421317324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f88d1d1d793afabb88cc3568bfcd4632d0dc658c65aff851ae76c0b0de2f231
Date: Wed, 18 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750266593
