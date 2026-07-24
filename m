Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499E430DD3C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784922634; cv=none; b=GdkSpNwL6QjQlqjVRzGlr+pCv8idt1H6Vb2YguVkMRl2lDxxg2lXg1I+pBh3/KnZc1zZzlW8OThFH4o/eJHDQlWXV9b309w1Nb0zDX3zczZsCbnYTo1Ozt6Udg77pe6K8Cj4VO5223uPr81ZwqNVI0kUF8ER+lx+LzCj81PN9X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784922634; c=relaxed/simple;
	bh=mSd9cHlLfBOIiG0umy8iJFPfXKjO/kc7sxx/nlWDGkI=;
	h=To:Subject:From:Message-Id:Date; b=NmdJ1g+baC9W0mqPucU5EzC/kZcPhs87b/9vKmegrZWhKaNESPSTbhFRnePLq+a+17TjF9smPl27t6m3Lt0L1HtbE2O9zzRGv+yXd71GcSYvfsroNSMKCJqZSRnVOwAmLMd2unxizw38xZL76JYVawddZbcl5ssjqrnckOCBVQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0PH1PXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0PH1PXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FF9C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784922633;
	bh=mSd9cHlLfBOIiG0umy8iJFPfXKjO/kc7sxx/nlWDGkI=;
	h=To:Subject:From:Date:From;
	b=i0PH1PXN32MjzAhyOuZp6CIYXkTuYia4XmDSu9d8AChuN47e4hHWfpst3AXy+VQvL
	 HFlmOaP+Z67qrAvqXrYizAVFGbLXGrYMKIxbvbEY73SB5o35cnryzCzw540w25hsro
	 L3ZggiVp69wASKE5S58t1x/PbMKHwha7MiM/PkxOT73nwpAKxCsVRCdimmC12dLHsX
	 PhezPPb3QRpou4cMK+PY42XunyDy8YzST8nhQGJLs/pWAwJUZjWDQDXSKWfmVWiX8X
	 xFTp7dIxychj+t+ObPmRCUf7d3RiMUTXsHtOwZcDAjLDlhWaF2cnVGKpxXDxTXePMy
	 hz4sBwpip9BLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE33FC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492263368.490.12614913456593796502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1a00252a2ac67f1c2496aac6e7fb24deaa3eb0363931e8b6bd5a0149880578
Date: Fri, 24 Jul 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784922633
