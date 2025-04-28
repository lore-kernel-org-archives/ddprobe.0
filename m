Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8997082F
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745864394; cv=none; b=IDDi0oLoehTsqF2jk3lWZkLokkLUl39Cg+UfIorFWb/gGiFsu2zqRswsSyOMzoJ8gKhPvDi66qmwk/6Rq5+LPOw1evLpEQzML6g1dDfN0tpMPv1fNB1IPCern9oktxqxkk/6Fowlal3wxe26fjzKpdqE0TB4G+HpFLC1qLeC8yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745864394; c=relaxed/simple;
	bh=u6WXzRNF//GDusjEf+UsEDLWqLBDSmMDt1VV7gC+mjU=;
	h=To:Subject:From:Message-Id:Date; b=BjekirAzjM/M/KYqCi2HHoxpBoiMFOvGkNJZ+5aBLGop5pnQwbIOH2TZ6Kx32iWOwbsQW1/nC22si/d6bdX1D4AOjYMdBf/hpI4hIhN44WzulsSEYgEbVq7qw99V/+zRJtO7vMKKz2itccbA91Hg1Fj4mCNc1NlDdlOCFREE3oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujz9D3PH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujz9D3PH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0DEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745864393;
	bh=u6WXzRNF//GDusjEf+UsEDLWqLBDSmMDt1VV7gC+mjU=;
	h=To:Subject:From:Date:From;
	b=ujz9D3PHWYD97hfRbckgtq9g9GiUKKC5mE/jSyWbOqsQlLSQyQUVtZ3LbbwUvbxTW
	 zE3VEft6VAqmc9UJw5pSJSJY6v5CnbA5tVbWmIZoLVJq0PRoJCkh7/U+A5UZ9sqWDx
	 nGAXEUoObP2svcN3ZVH2E4+PbTGf9AWUczHMEcvV6WqIbwqDIyV/86Vb7fH45CYJGh
	 l4VEbcNqlRuwD0G76Cn1K8tuOKyyRHhSptFM3rJSbRdK3SE8B4C207Fj2ZHN3XlJS7
	 ETEEkcWz3PiGDqA3lobgwqVudOZFAEJutUCHgaI7QGjiwEMuGU592YoLZfQJaqBaqZ
	 NhPXOB10s0tkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F745C369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586439357.24403.1351950964546715339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5973df2dc3edbddb187bb49017fe4364ceab2e8e180022749c0c752e92ffa9c2
Date: Mon, 28 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745864393
