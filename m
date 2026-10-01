Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C14388E72
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790817034; cv=none; b=TA4TfS5khP3F3MI6mT3ebQR5v3WBRUUnKnwKX5BTDFJ8pKatFEBTTfU4/rELm30IwcqzdZUiHeQIxZkUOu27EIHrHowrtAxqx4v8BmOOqdpfu0Jw86aO5upPmRIPaNwefinppwL5s2erkdh9OGGAjX3SG3qn4QIOBdM7eJ1Qksg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790817034; c=relaxed/simple;
	bh=kVWCUg4kCSDq56TnUssBvK7q2/BzRwKPfSTRAE78He4=;
	h=To:Subject:From:Message-Id:Date; b=gNTddBo6fKrHDGvfTVscO4We7gJsH3mde9M9t3JLXgYOfN+fcRjthTbM5f0IuRC73nH0Q1FGk97WUFlKm5SUZet01pDiMfozECeHWAAznZNdmTt4LKCv3K4YG56Sj15ufRaeX311bOawkiUIDb0XxyaQ/TwX8c994E5SNUgi/Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blqyhTsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blqyhTsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D84C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790817033;
	bh=kVWCUg4kCSDq56TnUssBvK7q2/BzRwKPfSTRAE78He4=;
	h=To:Subject:From:Date:From;
	b=blqyhTsbR6AamGAE2VqPHzxgG6dqah0ljyr3GBkPQigK1GvDwptqPxPtl2Q765S3/
	 zq9tzHGku/fmDbjmOs/gzuskf2qB2X4eQC8IQgSdx2Q6qav25gtEUGfmJia6U8f/6t
	 Tttk/A3EQxIrEShwWeGg7/KFVMhoyYibrJjxUrazZXeXWSaPfAfnauS3z4uuv0MITW
	 1Ta8Sm77gbIiqS86N+y1nT13c6NgOEymdxdRnXLdCCYQ9AfzGc+10AjNCN5wtpUf+v
	 VHJCqfWdpjHm4FIMsPdQoxfYIOganKIYabyR5DNF1kfZj17qSkYabls2L43f49RMFv
	 6kL5C1YtJwfQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA78CCA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081703368.13357.3656053688495353236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b7ac3c4990163b2a579fd4256a377b4131f91c3988467f2dc8d55dbd2cae3b
Date: Thu, 01 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790817033
