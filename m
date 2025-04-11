Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E47C1EFF9C
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744352994; cv=none; b=VQ+QCDWbsvnmI9toGDM/MjMnhBFO/MEwPEklQWdMCIiD9s89py5AvkNUVrrYkyizohk01b3W1SjjpB1dOSJIi5JmmBPhsBNYDY5n0+cRQJ0bI8ixly76WPvi7+2dfcQ2dKH4nUkluDxdU8zWn8lFcV0Nyf9+obe39jQCMv1cxe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744352994; c=relaxed/simple;
	bh=Zo0vCrYbyiY/164Hl9mRAa3KOmVkd55zH80xMouvPR8=;
	h=To:Subject:From:Message-Id:Date; b=kZOybzD/p5RsxXQTDoBmos7/rM/NC1la0t3Ox0CU4nyN/4ke8VuqkP3x4R6+0GseAHhksWo3SU7QsanfPmFGt5NCjK4Sh2oEOmwPfnweP6e8pM5ssjLcfEDnyupYJmpBrL2rMrtT7ILtMglOYx8aoSPhyW1Q17qEPSlfYYMRrfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/U2K85P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/U2K85P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15A5C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744352993;
	bh=Zo0vCrYbyiY/164Hl9mRAa3KOmVkd55zH80xMouvPR8=;
	h=To:Subject:From:Date:From;
	b=N/U2K85PG2XzYChoQoU/zgCNvmo9OmdW21SoIXDnFWvKLauuanmr5k9onc+Sqn6OJ
	 lVQIy5FAAVWb+pZwuFmpQLh85cuNs2RAP3Gs9OmsDqkW9KeEjjUZN9D3wugzCLOzCs
	 VDUTLYwPQu2c2FWv9hwtR/r7I9vWP2q7rJyNP8zNR5glxFV4mrBifltyEAbq6VvfAc
	 GJbOxolpO0SOBCbEWpTummwpx5PTDvCLOkNN5PtXXeYKBxas+L8BOjqq9e6KoqvZAQ
	 PRJhRSDn47hFN+F9+xr2+PIWLjQGeQxiXgiVBl88tdh4g0oyHkd8/BZePdfCUqCQsh
	 MDx4jEh6NB9tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95911C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435299360.22533.1852807576253669053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c06d5231f57d65ab5b03f7b3c3c550353c239418f4e3972669fdaee35cf790
Date: Fri, 11 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744352993
