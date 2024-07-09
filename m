Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AC015688E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720520183; cv=none; b=m/6xEY/M/0q3+YbOjEMkfHe0L5sqKREnKcqnHULBi0cv2lQlOCsyCzuImwDNv/QpHhdtvrCE4l/24VmX050yLRsky8of1XNZJfmGiQFPN58PaP5pxd4GT5wLAS0A8p0qUowU9N+bJiqezm6feQ4spuS1a+C17FUq0TUjTe3pung=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720520183; c=relaxed/simple;
	bh=A/mrOAlgYbUurADATyI1R5qXJgfop4cqIJzK8Zef6Xw=;
	h=To:Subject:From:Message-Id:Date; b=scba0iMC76LUrEGthvWEqTv4O3OuBoVFtBw6q6cbsKtPe1XdyjGcon8rT5g9DTpzOl29tph30OwgJn+/BXeUvmY2jM0gi9NJu5ZYV1/uLRx82wats2FvIbd3rVfhCdy+Z0V4u05s2aLS0kFPtOB/A4caE3lerqk+6/+86ejnXTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1cgvD0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1cgvD0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD6FC32786
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720520182;
	bh=A/mrOAlgYbUurADATyI1R5qXJgfop4cqIJzK8Zef6Xw=;
	h=To:Subject:From:Date:From;
	b=u1cgvD0fjuwu59ifVhJ3zYA9LFSxiYJ2d2qVnjjDht1tkI1fT6FaedaLqnXXfcoRq
	 0FdNXX4GSYsfZuWYR6heqMqMhIpomcWAqKb/dIEV/CmPZfh+Ho5Cwt17T4OLnza1K3
	 H0hGVu2ACQVC70ckW/zycrybJrkkIrde7ySd9z37f8BfPaz7vaMIfvX04Y2SQaQVkW
	 CP/xRuq749vL8Z/ygFah/1pH17rjpa8W8MNpZkh/ahfnmJwSI66DBT5ODVAZkMAkCP
	 jhUGrtVTt2UhATiUaNNlB4D/tYWbAZntbZ8c4IaQjCONdtahHm+uTxqTU2DfD+gCHN
	 VIYEU/YK6mxGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4F9C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052018276.28731.12054657094123345863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e520fa73cdde09bd87affe1148438822eda2bdb33d6450e7b45a1e9731b0d499
Date: Tue, 09 Jul 2024 10:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720520182
