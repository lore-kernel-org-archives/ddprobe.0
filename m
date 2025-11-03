Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255732874E4
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762149594; cv=none; b=ZlUQHdBSfmkVUGWidi0YPGB2B96qqjhKuBeQlkeHKPfMLPIgHaqCHx+vOd1v83d4U7KFpFTu+xSlWQemjP4u0L897qp+AZ881BwgUkTKyUC/pYDYd4X9sHV7ysGSuLePrmrqw4Zf3vRJ0NijqZd/SPkWadDI090CyATZGf+sNt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762149594; c=relaxed/simple;
	bh=MgVAmhqEU+SeJTWcOnLJ8Pc6xvx1MnRObLfDpDlzhm4=;
	h=To:Subject:From:Message-Id:Date; b=EtA0MFpOC+RaXnH/hMftVFFaF4u1d7tEMRZzOWNCYNTYWGhwg/jvBz2t+Ix7yRUGDpW8AEp0Y7i8hIB1JA2bZskQJqEGlUwukwIHZsFDBxpJBNtqbYnw4LsVBZntB15yT8+ZtP8XaqP4Gem5RMxqBDySlYcZrSxUPj6Vjc8yjNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fF5UXT8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fF5UXT8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A766CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762149593;
	bh=MgVAmhqEU+SeJTWcOnLJ8Pc6xvx1MnRObLfDpDlzhm4=;
	h=To:Subject:From:Date:From;
	b=fF5UXT8gHhzdZoQKuORz1vprC+wLTkkaWJVcHFh4A+nxq2W6Tug8YmN9Snlb7aLyC
	 UPIv82RM2PUTz7nKziIArXhCctQOcBk2BbKGR83YXjSt3jfoZL1Hx7Tb/j+HHYMTAT
	 NFhuf3r4fTODd32yXra+W85mp7Ruh+BG0KrqO7AJJAdxeTTbcth5stkZzKwnaB6pI6
	 JhEYYKwPLmBUJtaO9EOq8suWxetaFBz0CvV4bgLmA8BCrOIN/zFqAL7wKj7T0IxVB6
	 3lZ9eshRkCBLahMMFrWRxEYIDk36bNeS1z9bKde34/z6b+8VQLsSX6HqjtoWvXnj8C
	 s3duW5s96hkBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A4CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214959357.3891.15045728897293011960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15da02cdbbb62c0c4e38d32fb0992478e5c6c60890895196ab15561a8922c24
Date: Mon, 03 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762149593
