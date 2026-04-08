Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225BE3502A9
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775669734; cv=none; b=vGLL+c62WM+xyMB5TRlcPBYGANVoyCm21SJCdWQZqzI69Ulr5EW0NEGS5SnxDBMewqccfUUdcIAh8I6MCWMTSE7PiqOvIw/5IwG8Pk30CpCh4+uHOR6Kz1Xnk73wgRC/kRhVRl2rI2tzHgktyR/8GyQOXaCTqdBn1OnaFPULbFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775669734; c=relaxed/simple;
	bh=WOPMjbSgoQLQfGsQcmxSxNsTIIJ1sRdv/EiFTpZtP/4=;
	h=To:Subject:From:Message-Id:Date; b=W5ukD7CpuF/FQAVbXSWslpSFCzhs7VhHs2idW7tJEi9cQGd+kNIYXYJn2jTWdJG1muCwS0KEqyfH/6EFiLRDLkv6yHNd/it1oD2HrArhgeFoGHx7aCBWeVo5tQuNqGYQGbyfysVDcFy4Lt3qMNZf1mTssBqODiGpvFNcNPsaa2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TU9pqKEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU9pqKEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46FAC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775669733;
	bh=WOPMjbSgoQLQfGsQcmxSxNsTIIJ1sRdv/EiFTpZtP/4=;
	h=To:Subject:From:Date:From;
	b=TU9pqKEb48mUdXumjjo/lQjT1hhuxgjlfpgqApe855BVcNVLfp5728J4TQliQSShC
	 Vo1a7hzJW2NVdDzqzw1cXWaPV9Hei22urBjwed+w9c5JeRkGuiCm2OVeCbJEXC6MNh
	 /bm70/spgCsKdeQF4TXf6MxVZJbl3XuToBW6yhlM9KEFk0zrUCtbtmorxiwBy27naB
	 bGSzTwjGhvaTLkInIFrciHTu7zD3Q/nNqx1x+zTd7mBgM20dt5ia7QfmjsxzMOardS
	 APjuHhap5YXiBwITy/ce+lcNoQM5nSbynb/wyFC+F26ga14zgJCF4eqzmCcTga81cf
	 nC/amkFQozxCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8AE10F9963
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566973370.12566.2146633148816186201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c52a96af0e374c1252b8bdbdbfc884ab1def20f15f0ce08550c853092da769
Date: Wed, 08 Apr 2026 17:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775669733
