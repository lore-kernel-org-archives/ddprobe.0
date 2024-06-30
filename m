Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5453617C
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719706463; cv=none; b=k4ykitRH0DlW49492MHpIfQc669X1wafd5FVOkUrqUF9uHOUTt52anwblbHnQecBNBP+qM8JWsgLOfUuVww6ZdahXJWJM8SLiJnhJnC1PTdj7KUqcDroc7sTup/EBb3IwpgIvX0I8OpFkcfUM09pBOyHAGJKDg7/uKF+27IF0ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719706463; c=relaxed/simple;
	bh=bu4hWH4oitxFL06g19kLk7ifxieJwzD9ymFC4ZoVMts=;
	h=To:Subject:From:Message-Id:Date; b=sd/6YFN7gcR9L+/XrCdbDVp1ZcaGC9x5IHjlaRLdmTmvA39DdYxMXQWP7DBrekJp4kWwCD5Vt8qJBJBviL4Hsj4E5cdJ1jkffRDhUant3nQg2PQ8aik5lk69S22W77gmCGcTdX7izSWOWV+dlziRN7ssdyZ0cxwJLIwW+kZfjko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhPq7DhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhPq7DhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CB7C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719706462;
	bh=bu4hWH4oitxFL06g19kLk7ifxieJwzD9ymFC4ZoVMts=;
	h=To:Subject:From:Date:From;
	b=JhPq7DhFXnv7z7DFFiiEOEi1qi3lAF0heJZWAVSqfIJgixTP/59zYq18LG7ZVj0Uj
	 IuCDusv1OCveFlR48vTWsi9sDhpcVnadXr2GTPGpTq/L72x73Roc2lk2O/pQuuSFyX
	 TpIyOGN+sIrShOuFE52l5EfIDxABFdOh0YTHDjJLtUyVnI/ihqsFHSooIYJ6x72vJa
	 SFWItpVfHQmeZwBa+qlqQr/+geD65MGLkYUXpmZsNdlAdhqq649fHRjDCIwVgl6O2V
	 dR7tVevszq1akKu58QaTpxoHTgB/35sdwDz4bBM2T4bFFP/R7UWjgH8bbukrBD88eM
	 TGsjmmqT3gBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C015BC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970646276.21064.1112956868563998238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521d3bdb60a7a6382dd07bd231854b8ae48a3289306329acacd3909a5af85f14
Date: Sun, 30 Jun 2024 00:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719706462
