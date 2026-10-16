Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F99A54CF6E
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792171234; cv=none; b=RVO7SotiZfhgNJGLIVrixTKPnzCe+wRFMNlZvCpYuTmA+IRKEQ/lHTnCnomDjnmRgqLwjdDnKYGB/MI9iDmi7/PhNAHHutUZfLSVT50zuafsG5qHShaz8VzUPfiOP19GKwg5iGRfbdJsFYPMIJuopffs4imw2LPauKJwKpTSi1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792171234; c=relaxed/simple;
	bh=mdhiIm26gfg+pd176QjjuvJb5dEdO6PGKBc6PKRGR48=;
	h=To:Subject:From:Message-Id:Date; b=F6T81de4o4Gxu9taL9UiB18rJ88LaHcfbpKH/z7Q63xRpBZYCijwUMsoeyG5PsX2hsfB5UVhvFp76wJa/ANwQ8F81GLGjHe03uhYdmbMdJge11YCyPRTRplJIVPfc9eHIza4l+AbEXUVvuTPSrqfqx5kqJhUqJG8s9tkMqhpuLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oywDAoGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oywDAoGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE050C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792171233;
	bh=mdhiIm26gfg+pd176QjjuvJb5dEdO6PGKBc6PKRGR48=;
	h=To:Subject:From:Date:From;
	b=oywDAoGI+JzdF0QmBMuX7g15GyWZxkWiOuOtdGMbvw1CiseoFvGZqBv9mhLqUVL9C
	 05AMoPBgjsibBXRjLfboLF/iccFXFHobZXJlZTpWWxQ5OGzIrPuDvy9e1MoWgcOTN6
	 9W5+eSrBIOhkGORLVWa0yRs/beX1cyZjw0SUe53sV3hdELGVEIMWyTQh3dB2AEap3m
	 /o2uk2fs2/wpBgTbPAtRy6STlsNOSH+HQfwBM1AQISunbmpqOI3YtzsoNPYc/lAAci
	 2kacSemicWrP+zxzxa+Odq8pmCaqAtyQquqhU9XyV6m4qj7GVNKEPGU6KV9xx7npoI
	 tMThyTs2a5naw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB232CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217123373.14735.4580204108741534211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cba03e68ef386b44e504c50fe8bcdee5bd55c35716c4eeee889cc76f41d6f8a
Date: Fri, 16 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792171233
