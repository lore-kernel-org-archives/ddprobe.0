Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BCD20C006
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742306994; cv=none; b=qVreZyjKevwfMF1KroLOUXKktx1gmhLUjcYROAr/f4OShRYSqyfjSn3BQiHHbkDbv31XwYSuvtOdeOr/guTEHqRTeTzvImiarxenhyhNyZd1PRs/mi+JBNDB0MIyvvCEJ0SgM7lwPbw3gMCaZKYnPBDO2OrjpmQjwa6aI/IKcuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742306994; c=relaxed/simple;
	bh=rMZQlZhlnxmd9khzwJU7UbnwCDd5fxvTkYXEhSmSWoA=;
	h=To:Subject:From:Message-Id:Date; b=OUTnNJTtc4qqcEYSmQC5ozbCBAtSHwf9siC/ruI+fFCTc8GPqQtRj7w/igmSWVpNaY7g/z/umRn5JcBSVSnrvBrfGDoyOiHpvId3+IfNnlBskjkbxPOBztn0tczEujdF6YU9XmcpfMPpYXm/mmQPNWFx4+SUFbj7cI5FGiKgN4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMMDdbr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMMDdbr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D69C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742306993;
	bh=rMZQlZhlnxmd9khzwJU7UbnwCDd5fxvTkYXEhSmSWoA=;
	h=To:Subject:From:Date:From;
	b=NMMDdbr+sHTuw3CD8wpB7aD7VlTbEe5rvTcoD5+xBNR1R8N1PKSD89JF/ETyXuhGY
	 a5cmuxSYcJNbqEQDAnrG/VC6CLRvQK3WT4ebODg7CG+SF9Oql9n9ca3MDub5GDUDUA
	 oxXJ/tRW1M/KLrgX9A5reaxvJdcBgmrqsXLShV/gaIbPyazZ7b7dkCcwdpYLfUtq4G
	 uCoDX33eAr7p37aYtmnTM5Fgv46xiscMaEKs0BQPSMFRsFCDWw/w1Jap2ppqeZ+Otc
	 ytz8ITSbNfY+34nBkDWvk0KaudQBmKW5lKNR61wA35rcEoYj3SNtQrEYsBobCU/RWi
	 HizI8SDL7hyLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E250C28B28
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174230699363.5367.3864520113091076176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f1f079e3071f927419539a30650fd11e5f05f0e0d3359b05801b011fccfc31
Date: Tue, 18 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742306993
