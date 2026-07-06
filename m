Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5101BC08F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783375714; cv=none; b=KD7FXwfO/PgmNkQc+5A07mL3RPLfjk4+zqBgatJ3B95c/5Yt1BdLhassOLbfX++NqCtH++8MzCHqZMRgVD6BUMJmg0AWzeZPqV42CFX3jNx4q/0g7kLCfWXBxPSYvI5tqRH8KeVCa9FekXGDs8NMS4ORt282x+LvOWEx/DnKKZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783375714; c=relaxed/simple;
	bh=BDY9/IFnPrvpLdb/ZcnNzSp0q1x0oDVENSEt2hjPOnI=;
	h=To:Subject:From:Message-Id:Date; b=LjeJ1vbS0/7AOtBloHMoxPkV7lIosBLp4me3a51uJYQ9V+Y5C6ItrFZvtgTAKhklERAqUhiydFRxAIKHmH3tQzZVNPnfHRDSQ3EO9Fpjhj3Gne1xn7asJMjdofU+mhOUXQos5RqkG3i7CKbv57d1mV6uGF9U0vaNxxgy1qmQVuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prooZ5wf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prooZ5wf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE70C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783375713;
	bh=BDY9/IFnPrvpLdb/ZcnNzSp0q1x0oDVENSEt2hjPOnI=;
	h=To:Subject:From:Date:From;
	b=prooZ5wfkyRMVsn+ZKKT8jMqyfgilicXLlV8hjE1w3kZ9eimq+BliG7o5X2prDYTZ
	 itTGMoPWV3cfBXLYdh+dO3vGHart2LPjeVMkAOqUWkx1Rvyk8ijYz9fmTj4/A4QVGZ
	 8q4w+yecEJuUzyQ33vCGPomSuJQ13wq0C4kNMKb2vH0vAhhN638ZfOXuAG67+jE2me
	 yJvm2z0y4fBxmaA+HGl6Uo0EFfyJEvioDBzc4SnxE3AkQf8mNTzSk8Miph73wNh5Tw
	 qJwTCadhRbtE61PYzlBFIj46GY9JL9E//KBIFMLZW6v+PVY0ZeGfckhZbnhU0JGpw2
	 NN4TS/r9B5RFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8951C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337571368.11543.11240045283909788128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef645857395728b84ee76a8d4e5b0be4c149e65e8ef5f90b9f3bf443a2ee034f
Date: Mon, 06 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783375713
