Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED8017BB21
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781928394; cv=none; b=GExeqxt9CFKAbCUiJdxv7zhPynRsp+gz9ngGj02XCUyXa9XzuKv8vf+pDpYA9ZkACQliDrV7IQ/7bjoC6HXk6DkWkEqGN2Opzg125+pd3GzynesL0sNtniNX03c4B4EfuT3C6iuBno4dudzfL7gxs6OBELiu2lb2fJXZdAyhdZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781928394; c=relaxed/simple;
	bh=lScNnSMRYjXbI2jcCS0ZZ2ZZC1Mwymq2ECL8E9vCkOo=;
	h=To:Subject:From:Message-Id:Date; b=ghm40cR0OL3BpUf3zfzinSmMX/06ClEfNRHanPlMh5ctZjFj3APflNdHqp5JpDj/JJqsW/piRRwfi2hzhq+kzP1Js4HVY798TiKQTQi5qACRGugnSAFkbwhW/yvu3Yryn6OCJl51TaIefqIA/d2e53RBTFDEu3PKA+tcQy+d8g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7tqiRJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7tqiRJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E799FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781928393;
	bh=lScNnSMRYjXbI2jcCS0ZZ2ZZC1Mwymq2ECL8E9vCkOo=;
	h=To:Subject:From:Date:From;
	b=C7tqiRJ/V1fML3Z5iA+jc+CWDfJfRK6TOR1ZPTfsWRm4rGMWTXLVUHFMMWbGqexZO
	 k+pZmTdWpryTNcCP818x4MR8Pwg5GuPR9oDbJnGx2CVaaSrcsen7e7CPSfirjcMkPv
	 ZdYlS8JH9tVZUMh9GLRgwcRdnodwbCpzg2g0/UZmI2tFDkDNaidbjF8mStHE3Owxx+
	 uOvCAP+QVAa9aIsBS3WqVt06UKXOyN9ZQyMdsuCgd9u3iJy/RF/UcOZ7egoza7RK+E
	 07aSIGBUKajbTU/cKZwsl42Y2iaLGVOrlmyEXsxgutCZuQO65ZkOBW+hW7pnPgqT8t
	 NzrdgOA1kKmHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF17CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192839372.23095.16941859973808817135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f5071284c5f0b3ec0f2819852c6caf7e4e0304c7fdf35ed41538bdc385131b
Date: Sat, 20 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781928393
