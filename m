Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B174322B9F
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787674234; cv=none; b=F0dJrjLonMAnVP6h7TXJiuCr+Sdbj6NIeN+PawcGDYi5rnKQgLy8Jha9x/CvacRgLiE6BTa6u/eTtArkmN4pBMRCTJQjDLHIZ/albhZBupCKEangAeum6d+QnwDYUxaCG/5xcCfunVK565sNXUqiEwDxFKgvuGPlg98CXEULPfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787674234; c=relaxed/simple;
	bh=X+PLrsn2AlQmh8UiEeNN/JO36paMG1v8O7l6Soq42cs=;
	h=To:Subject:From:Message-Id:Date; b=UTxi1f8yLoq8/WNnP5DxaUenbuyOCpk1CqjcZ+k0r7ewS/jS8x9ztcDzSje2Ff173Neie9mkAGSU3THGd5/BW+RpMT+haAS3dJGfvnWzficViH7VnrHNvoh+lgXAry6IaqeS3x4fPZoYmtUMNCO/Rcx3G2UtqeWNwhPydBnTDtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEwrBPMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEwrBPMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CE5C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787674233;
	bh=X+PLrsn2AlQmh8UiEeNN/JO36paMG1v8O7l6Soq42cs=;
	h=To:Subject:From:Date:From;
	b=aEwrBPMfwQBycmfAzKUV7HIj3321kT6v2TfT1mdZxPpFKz+TBLw2QLqw17S7tVYWO
	 zwtAaGuQtifoqDCX0FBh1ccM3X4x+/ajR7H/HNsfkilqFWYhhU6lg/7djWCfdDNerY
	 ePoC2WZq8tM9W+fUXKb1nGOryvVunFcwuhA+wRJJ4V/pKtv9O2mF1/SowT8PFN0+7G
	 Alg1YKEwzH2uTIq1hPhDZQGvBANc7F9DXu7decf9SzqbT07Xt9qwBw9sVa5gIaLV5o
	 ZcO+H+wMJcJtQYBW0DtVhvRDdGw+NnooA4iepSTSDouRwKIgRxlVeKVsyD8NEsnwFA
	 dGrDKI7ZwgH7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B3C61DBC
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767423369.26212.7311526712779275626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938f8c49dfd32d157aa52453f4f8766df74f44499d8e4560f1a821d32fa10501
Date: Tue, 25 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787674233
