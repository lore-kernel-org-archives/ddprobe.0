Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E6F1922E7
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744463994; cv=none; b=SuGfHTM+qgH7ogsU/WGgup+9XzHNFck4Gezf0kvMkDgMY7Z2t68LIkLZeARAcjbvPoGv44JVw3rj7VURZWRYvkCmRefKdJTMvmnYIc0ZWRsXaItLj/D/lHCqjnBFMQi4CH0RMAM1euLWpKX+/gMwkwqXDSNh+2AyDprO5uwHx1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744463994; c=relaxed/simple;
	bh=7usJwpJyzmT/Gtr5UMaFe01fuk9foOgwtCDoTx0cqZM=;
	h=To:Subject:From:Message-Id:Date; b=TijMu2EKmCgZQG31Uy/sb1+vNMWoJVGki/en0varTKqKUqUWHHwwOwrF3OZcOUA+afS+6sDksiV7lpWsQw5YzbGqXNZFmeiH6RIOSSJWC03342qz/W177mp5WcRkAPFnvdfTCAV075nQTproVx6p5npSAnAWeym87tJ/0yQ2Cyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttobji+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttobji+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2EFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744463993;
	bh=7usJwpJyzmT/Gtr5UMaFe01fuk9foOgwtCDoTx0cqZM=;
	h=To:Subject:From:Date:From;
	b=ttobji+Uh27ahtK4Lpjkc699HWnwqye5WtDR0eCgact/iRw6dgt2OyN3+bKsFIBX9
	 aOuv5YgsqOxX+UPWmv8SeWMiYMdVTvYQq34jkU33mZWJJoLSXWKM0CdoRCpeVqrskL
	 VGrOq22JVF4k3fofRSHBSr9AXQ5LfNiEZ0IUt6288yYOYnpTbZhbc9TG4uk34DsBQF
	 mNnXaeePVJ4nSTO73QHYXFXhzzAntbvNPLEjIUCT0VF7zPqZ6G/F1qJc491UDl0Ifa
	 Kak9LBEpuLPfjEiXCJT8f5dqMcH+R6TXOx/EhCuO11YVLmhRDHigCoqpNXQXdxGsg2
	 ecKTzvPSHu4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9173DC369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446399358.22877.1184767028929152610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445325b4de994de844d4af9a9fc3e764d8caa56d89eb84d0bab1db2a131c44ed
Date: Sat, 12 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744463993
