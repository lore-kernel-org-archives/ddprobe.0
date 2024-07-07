Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D63EDC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720319783; cv=none; b=kzrQ6Fq3NbJEsJhWWfRBRKiOD8LD/XEIaKESCKsU5eIlommgnLHcp0pWfGvvvQOg3fnb6wtqxkKkoV9xYCrtjaQaWmiuGAbKjc/5An/D9xjzWsjif7LGSoFRJrY3On7r8WkrijSIP+n1kS0J/eqCJga8PhH2YK7LheTWUEz4egk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720319783; c=relaxed/simple;
	bh=tvo+ysfXDxe/2JfoseTaPX6cuM3CiHuKlNY1jPETfnw=;
	h=To:Subject:From:Message-Id:Date; b=ZF9YLBz0V4TAPVMcsemrqS/7+ULIBBMRR2+eUp3/vo3uqLihbOGkG/gN78nSX2lbFCvZjCVCKqdv9mobbq2pix+Gus8Vm9FSSVxeMGIFovt9eujxXGS/nrfw7Sei7scgEtjCPzlsSd0qkw18O/FwAsfYdeNPJd4gji+AU+C2tbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onSVRPEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onSVRPEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5B8C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720319782;
	bh=tvo+ysfXDxe/2JfoseTaPX6cuM3CiHuKlNY1jPETfnw=;
	h=To:Subject:From:Date:From;
	b=onSVRPECPDHKrl3gbjrR48Vq03V9l3+n9lL3guGVALneelxAWLBEYTV8zLAMQk52o
	 M4aMxJKtLzgYe6tzU9WCBl/GTE2RGHeyOHfamAbIC7MaJlYIsQzemOOmeHYXeTy3N4
	 UN60z+jq6M3UTXpn56unrLFc0vTcbU9gsznRJgY0pVstf9B8zP1M/45zRgf/wY9f3t
	 lc3GsYT0APNUSR1iSYanHABP0/n6yf7Sf607KBvTGqndXsqEwspQmWsnjBatRu4vq+
	 TEwDTPLuCD8BxMmwgiJMf9LmxRriwkQnFeqocjfPc99HciKtfymNltcJ8widGwKx7j
	 rhaGLYoaZm0nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DB4C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031978277.28730.13016442229884747153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba9541743f464f7656f3a3f68c9435515b463cdbee287db52270f9262ae9d3d
Date: Sun, 07 Jul 2024 02:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720319782
