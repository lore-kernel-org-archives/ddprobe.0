Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB991194C8B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728632753; cv=none; b=ZsTu74ixL23lLfOFxnbzqCgBJP1bCX5da7bH1lGS5ChdpV3cZC7adLnmrqhdOTY5iH5mXZERHP5M7C4gp7oJGVmNc5vnRZWbxW62Pt3rwcb9vaKRYqn5pvXLW5dK2HAwF9Ry9glwAlrL0oO0EKuMtOg6hSk5WsLVuCbxKfs1G5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728632753; c=relaxed/simple;
	bh=qVDGA6dha6pQDis6GZHa/mBeCzyRzxCNsaGdKt5nwXU=;
	h=To:Subject:From:Message-Id:Date; b=YHhOicF9ngSyUxybzJEye3panok3Obxs9yGJdoE0uUTfvEPjuulUxKXfmFI972f7h/aNqM/JKz92AHr4uBxYoLp0e2nJFE6Cqdg2HwzeQ3orbTPCTUUd+/5WaB5eQ8Uum1MQVfw1mcSKi1TTkkDjhwHigItOo0g5v/JhebGfFfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doZsX93a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doZsX93a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4A1C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728632753;
	bh=qVDGA6dha6pQDis6GZHa/mBeCzyRzxCNsaGdKt5nwXU=;
	h=To:Subject:From:Date:From;
	b=doZsX93aUYB0GKO5syzT59wuuGP++upggzIiS1ATemWUdUT1cy5okvSjqf2CoRiWF
	 RJfAGKxnTq2MC7yzqQ9OAYuwWKL51/ZXlCGYxnoSnJ5GXReJ/FB88ZP6DWQZPnfHh4
	 Ejf7GZxN7biuVat+RZ8zFi0NbqLNoQqCYJ8naaGJo7d5jGRfkkC4oufQuCilxQpulr
	 TTBrkgHiTV3jpCcllc716wj6sxtpaMxbcAJ/UA3lUgpc27UA5vALhGAOTKC0+4MHng
	 sBqe/gvVkA1Zd+UpibnNBZMvdz1pkZdMcf/0a3fq3q91qViZv5Ccntrp85f00043zW
	 A1iHtdm5ZP/kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97152CFC60F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863275360.27894.18137710923858829576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86af49e34715ec2e0e7864fee3441a312df13f03dc3eb2f26dec00044914de3c
Date: Fri, 11 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728632753
