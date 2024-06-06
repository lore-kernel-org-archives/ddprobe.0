Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8721E507
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717688243; cv=none; b=Qw8mxJHfC/ZIMugEaEcnD5bIrV12FhQ3pqYTjhWjjcxX397YF9UynFECRMadA1bCNGMKolYfGBRvtwfM7wEGfKhSFUOeRKa8OKu/gxY98p2jZXnStCNbOp4JgZrN1qTXIpnReSYll5R0AEDKJWhLgdWCWoYvhC1eq7AxE/yiAOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717688243; c=relaxed/simple;
	bh=1XxU//sd0j7IsTdRJLwgJKk2zCsom//+aW8T1nW7UeM=;
	h=To:Subject:From:Message-Id:Date; b=sepTauFumbUiNMcAfXMRJoksrmb9fbwg2xBLUrkExharNC2kbyfJaSjHRCfmjCFLM4Wf5Fdoh/yySiGI/o1psekaY9veMCI2i9vIctgi/4xCPugEUfEiTc9/zGNzw7aq9sayg9KooXZxuwQ3ZtK07pCPSX/LJ75zk3tS6kfcb48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmrkdfhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmrkdfhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD076C32782
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717688242;
	bh=1XxU//sd0j7IsTdRJLwgJKk2zCsom//+aW8T1nW7UeM=;
	h=To:Subject:From:Date:From;
	b=UmrkdfhYJPvVgN1CPqvk+ZuGEDHQOLCy+mwpwpsDQDaegtmRRZPYxH0d2nyZhRC0h
	 S5Q/MRJYj3vMN734mAvohAgaRJ6AwGR9WUNCX4dO+rcDZcCpJqHfX87QJiQoAmYwyk
	 JfV0gTru6r2pxCesLt+0EKKg0JZ3GCFbaonsJ6xZnjm/atl/uaqit2w5TTA02zvQuY
	 uj26NecCqSCAg6I8wgz3WQT7yS+YvY5+S3/EWSOt77CT4kLVZYwVTi26vIXwtYUoDU
	 c7PHXCvbDGq/oDWTcT+Yw981nJ3fP3Zw5q8Huj3WXVMvWw9HD9nvSmfqkX2ApyPmkP
	 8w1WQMq9QJ2lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C040DC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768824277.23197.911860753713221658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdb760787a31743a287bad248b3299635d2b75a4caf58be91e3e44304c27672
Date: Thu, 06 Jun 2024 15:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717688242
