Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233E81ABEAF
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722627354; cv=none; b=XZ4G2lCgDJ7mBPnoVd3rIxQOp2OeJWigVTDSK6Hu2Az+05oc8gWVgPRuf46/e7qSbhKZhbnoej3g6dRv6sJgGKe0yy69da6R1by3VxPFCNl7+QVY44Sb2ExuhPJgoW1RB8e6YapKrJFFIRS+MQMw9Wn0QNzcNuHdflqc4jMNm54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722627354; c=relaxed/simple;
	bh=ZBSLqU0OO4w8LRCoSTRJeeV+HgbL/mvQkhiareu7Zaw=;
	h=To:Subject:From:Message-Id:Date; b=AkE9C2U3txR5e5kjdYE++pZ9ram47akOe2k+BsTbsbnT0A0nrGy8A6A/V1FolbxaaJw8V1sJw49WOkbhjqVE4eAM5mp1Ayhnwr/yD1D8oWxf5noYr/kkWfhSRQeTrxZKThRZNK0/9JBL0NtlelKTN4JPVkkK6m/CWLMppLrh994=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHPDR0Kr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHPDR0Kr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D72C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722627353;
	bh=ZBSLqU0OO4w8LRCoSTRJeeV+HgbL/mvQkhiareu7Zaw=;
	h=To:Subject:From:Date:From;
	b=rHPDR0KrUtmEozmBWnZXIWPC/bQkoVrtZruJqnxL+CV5UpzUpmmDmfqVPzerXa9TK
	 H81v73sIufvV1UFC5hy7rTujKht4ITpSzWtPfo7gz6mIhDsEjsAUTazpvgvNKkge6f
	 GvNAGgjHtI7C/4+rYl3DjDISeSCmjgNXeWg81fef3VvkULP7OmpXgFVdnrbjTtzPqB
	 sJH1jevnR1eGRmgwEFtJTXj6fgGQ8LzHY7zWcnLz535KpJ4C6xK2YmHAVy+4AeQh0t
	 MbTKA7BR8DhRcoW2cvFUqVmUZPBrx4I3bD1+pYppL9A1kwy8keiNGl7OTxwdjWaBJL
	 CgwsL0Ue8VpLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A962C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172262735362.24559.4064739058481507488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e8db435d1b0fc469e753e5a1dca5351612523162c7ef11319070d6cc4d1861
Date: Fri, 02 Aug 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722627353
