Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5CA31F9A3
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782066994; cv=none; b=AOAQLT1D/SZHTVEm2kMmQiaHQfTWI//Lq67AxvGcJzsUtU1AZQOUmCWYO/mn15PCU+8fhQlE7/ZArfKHWkPkyS1M5OUVnfZS97Q0fwTQhh3v7xRLqiScJduEva6IK9QHzYB/aS5MmGfDpyCnmt0Qfax340A7kNBW9HZIfG7RxMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782066994; c=relaxed/simple;
	bh=2to7kaZfD1SCXntgknM14+P8lTk1au2eCKQhXfIIqyE=;
	h=To:Subject:From:Message-Id:Date; b=jTc4viQYGZGmqL3Ex47Amvq0Ohwi7eIsnqsLm0NXbKxZ0NxTWK0+ApSgbCEO4Mx31fNSIRLPsK2Plksz7IDPpCio3SItVGZsjcugAKz5E4balfNqb3+iFEW4HYbpcoc8LM59LVADAsmGVY+vPi8GL08ZSOcFF7dXo7ShDmODYYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvgCWntl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvgCWntl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9702C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782066993;
	bh=2to7kaZfD1SCXntgknM14+P8lTk1au2eCKQhXfIIqyE=;
	h=To:Subject:From:Date:From;
	b=pvgCWntlJPHpRwGEpgf1ccjj7NYKlWHjA9TgCvAIdDu1YWHs6kypU/kfveqwUwY3c
	 MRs01xh94fIodWVnTahaViMNrEy2C4FJgKrGnbkddIchWDXhJMCLub3yl3uAW7iWKA
	 FE2mgCFdFEB9mBMYcwgztTkglqAVPfjIsKPBxyvUWprCzcdf37+5DA4jyl8l68gvWx
	 Zoz5GfAhv3jBu8FgQoIlEW2lbwl8vUbzBFhtHNcFp/UfW386uc8fVSdZfSEsPUX4pN
	 Kc33bws4NvZxAb2PVT6zeALr+2ifuX607K1bpImgLbIGpVREipoPrdQ/t2GTCbbOLz
	 SXQIs/wHqjbEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEEBCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206699368.21524.2937046870551810044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea9f1cc5c6204993c8df5fb69e889c7403b57431bd0667d3125746d43bc32d02
Date: Sun, 21 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782066993
