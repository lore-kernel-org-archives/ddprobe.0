Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2302FB0A3
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776601053; cv=none; b=Do1LEaOZtx+KQrcvUwr6sNhzJX8Ly32WddmoVBRJd2z6AcgNWsgT201znQAZkWHDpcKmZlmv462eMQL8xL1vll2cN2d91ks3vzBNHtKPYHOhiWh4rULDnjMn2RVP7hTKl6WgMktR7f2qi3MZEtC0R98V5rvv1Un6ggnDT2bemUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776601053; c=relaxed/simple;
	bh=fjGYPf1DHC3RDs3cNl7mFOGrcZbzWXEN6Pn7zEWwfGU=;
	h=To:Subject:From:Message-Id:Date; b=oTWwPUPcxEW/hi4UQ1PRy5XVykrbO2mdxdbNZuV9v4xC/+upn8m5HZnM/xtdCN/6N1b9gmxQD+6p4kDNiwlDQUNfEp5uyvJDGsG0/hNB+HKIigTAULa71Kjxqg6dZaYKul9E63/gtCqnEXsl1+xr4jI2psB3kbsTBwJFLwopLBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhU+FKQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhU+FKQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF994C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776601053;
	bh=fjGYPf1DHC3RDs3cNl7mFOGrcZbzWXEN6Pn7zEWwfGU=;
	h=To:Subject:From:Date:From;
	b=bhU+FKQwqiH5zJ23Pt3203nrlRiJRT3ACE5Jp9ZsF/H6E2i18LxBPFosyoLVIHPZH
	 PeLZIdtmft7LZDhrlW3Y+eG7oFV0MiNK+yUKzuxR6Ph2X3UVnfohU0b8B9B35LN3Sp
	 zl8BZ1Yw3j56CgnHS7/PWINy/kCp12M2AmnflNxifsh3B3A4ArgiBITvGRZaYiFv3k
	 dxiolMpnlMRc9Fwx6URnulsh7LFcSE5sYPZW4tSAlLJi2FM7yCbDwVVsg4Kj1wfNgI
	 44Gr8I5zw7xhp7fvSLG8ixP1Fxjl20qby7Iu+rbcJdYHSDNmMpMADuUTf5tKqOIRE+
	 86F5JPF/22ZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1097EA7196
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660105369.30988.12254856732163063376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3b93542d15a822f91feaeebb2a36563b42d6b13346be12fb2e36ae3ca960a4
Date: Sun, 19 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776601053
