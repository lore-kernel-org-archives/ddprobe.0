Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B4032FA1B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780875874; cv=none; b=QkvN7OKBDjAYlen9YcIurO9QvpS3aHsCaTVlHXy6Yuo2WdFsobJqdgjVg/WAM6DPhZaMAwIvlnBnOeu2ERplA0vDXSwc/Il5ITy6kvLpgSljIAC1Q5MGRTaY4h0zPsT/A32oFlExidjUt3k7HtfTta5nJQBQd+f8TCw73lrU+RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780875874; c=relaxed/simple;
	bh=zKEud1SJ1d80uF8NvhHs7OjtXIOUDh+SAaxJjc6+MVY=;
	h=To:Subject:From:Message-Id:Date; b=dDw+2OjYWZ/oNZotmhCRXzVnUrZ3HkG81MTyqFrMrYFElvM9A4eTXBbYywA2AocSXV4z+U9b15TCxJT3AUS8v9aPCX0UVbSwgkZfkS5T53X0jhMBdmft5bez/9zJ+d8nSIeuAdaz8FSaGbWhpfh7Ui8q9FC0w80NXxu7MvyXqhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTszXFfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTszXFfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B1EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780875873;
	bh=zKEud1SJ1d80uF8NvhHs7OjtXIOUDh+SAaxJjc6+MVY=;
	h=To:Subject:From:Date:From;
	b=NTszXFfCwKjMt5R+8SZ2P0fSXE84LKCJCKNWUMgydxCzwwgYSB127CVVGZ13wzqWz
	 WZki63R+IaMveXeY39+V+NDdh66i+6solmfL8s+6q592mRNs2Rn44LLXF+wm66g2JW
	 Drt95xo35wUnJRocNx/ef537Hgx0MJmxsY6a18a8s+Tze70DMy+cafTmxfWvu9fMAv
	 9gkAvAVA+juw82h4TEPaC1k4KLLJUSmcOrJ2sHIGGVktBfZPfkCHgcNjL4BdXLlIim
	 IyBrQpNAC0jZ+zGhoWW+yCiHqX1GbZdxoQ6OOjzFT94QyFA9ri4fWaJsTsBjSgLiXv
	 d9gNMqCrRb/Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC046CD8C90
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087587368.19341.3843607776847933139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b360dffbdadbdc1a6e82756860f0e9fdf05b84c73582312f3f3386e2a6574f
Date: Sun, 07 Jun 2026 23:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780875873
