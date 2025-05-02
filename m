Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D35526AD9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746149994; cv=none; b=OMmPIz2ULeSRCO/3btB7eIANeNLv2jApSyn+DpZvLhVgW0Lr+PD3Mf44KxlBp20wnTL7Lz7h3PolOJbKy8J8IGF11Zgh75olE4TlQVblc42zE4s+gmQnlkEfIx93t7xNOb9xVXfVT8IBv3loJKpr5ssZIjG4RgIbEdhZ/20ZDDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746149994; c=relaxed/simple;
	bh=PDBivpcQ1mcSdQHe1inyuEOka/O3EbOVZjaxAJM2myQ=;
	h=To:Subject:From:Message-Id:Date; b=nwrRcNqofVBvaVcKOiAioSifLSEXDa0d9BYhCLxE5TkBjpF8vHFTbW4F2XvIbNN+yqgg1ideJNkFtQB0547e3VMxJXI5AQSmnTTvdyW2H+H/Ced1l0Vu/GqoMGZUQaLnoofR+VjNlApNy8o8AqtqgUMmWzhGeeLND9XCM4E1hvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxVJWSGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxVJWSGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2140C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746149993;
	bh=PDBivpcQ1mcSdQHe1inyuEOka/O3EbOVZjaxAJM2myQ=;
	h=To:Subject:From:Date:From;
	b=kxVJWSGD/YXSmMWCIGLTcrUWgKOCoNUZjxcPvZJz+JB7IW7e+yFT9D6GUtdBfaNVV
	 ibEhCvwjfmgqF3KaMqYwiRtCwVcDh8jhJnl5HR3S2TUulxabeRRUpaOr8aaL1cCKTF
	 5feoyiRMT1EyQeZYkSW1pR+rMVpiue78gzaNHftfOmBYMyDMKX1UgB0mjqAB/+UAC9
	 30VYz8F9BG0dvGgv1jlwwvGczLWda713oTUuoRig5Fw2vpJ+y0SwElXbKoeKFPiyq1
	 WZM1Tzj2WoRDGLYfuPipGRt4wh++lfXYgf9KzLDIx1g2x7NhZhNJ37z16cHsWi5/cy
	 tyTuzvWeVfJ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F025C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614999357.10107.16059552464072437926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f01f63d4767206f493990f4e01cbfbf0fb3430a3d22c48290f65cc50ea0ee4f
Date: Fri, 02 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746149993
