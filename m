Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443FA2940F
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745044794; cv=none; b=eFP+SDPkOsL0Fl6qBMSYjkpcp5Q2z7GmaoYzyuZzbCvaQ3m5urXoQrtdRYJiJjxvs93FEKd3v9yN9qqwtJ7cop1Y5/qyBf8gYeKC+123LhlsrF46HR/iJLXdOT0Xqdz25AiRGeVmZE2+0aHNSIKEQc8wPiHY0utWqDolz/vl9pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745044794; c=relaxed/simple;
	bh=B1oMqOewJW2chFlraihCcNhTKx/dFaVagQ0rsz+NMsA=;
	h=To:Subject:From:Message-Id:Date; b=sd0HbdDD7iUmFUjTjEN5MCSF036fJxADYN7SsybOclUUVN6J/w0CPfnIrQrpT3xJNCjSq4VlyDXP9J2sff1f2p55LDiIvLojl1HCjGv0kH8TiN06/UQtoS35gj58ac8Vz5MiuxidMP71uRGi8oh4ag6Z6Fm8Xmz2NwtsTYlYPO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qttbnV4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qttbnV4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF661C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745044793;
	bh=B1oMqOewJW2chFlraihCcNhTKx/dFaVagQ0rsz+NMsA=;
	h=To:Subject:From:Date:From;
	b=qttbnV4pr0nXZzjqxCha6cGXFyBJBJsl7BuWv5xtdw9tr2Si9GNLSkBjkgnlaZY6A
	 oSm7Dpkk8tAKlTtXGCOF1u8IlTN12zb9fod82Cn7XQOwQZJbQpDNPmFvkdrWGE2Lwo
	 lqEQM9258k8sG86Tu8IcdM2+1Fan6JJp/NZTZ0yzeDDWhuBXotZyac2He2mcWL8lra
	 6vcXsTazl8QQ6/SeAMMZveRco5oWByW77KBIUpgd3er8Lz0rZ3nrhLlvUcqWCo4L+I
	 ly2PJx/ptA2gKQWRJ7kjuzKX0OLVnjCrxHIcsenmfFAtQttw152QTfbpyOsnpfo6VD
	 uALWCIVyNpRKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E72C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504479359.12877.14416696632148708852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87e087310f3ccac869b88b5e5f9a35491669929198114a0a6bd0e92b0634915
Date: Sat, 19 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745044793
