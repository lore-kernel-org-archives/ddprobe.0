Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDB025B09C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783100314; cv=none; b=rP3DRzy6TKhdCUhnC6WNOQJ+6atSVg4b3ellokpHdOo+8FFAmgeu0nsw6FMBIGM1RdeIMyPPy1re7v5a39UxzgsiYNAxHRolMLV8LGEMkNrFjWl71/I2YZ+UMJUclLIpC8Lt5S5HmpxEY4LRnCPEAVvEdgS+uAE1YTXB9eL4fs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783100314; c=relaxed/simple;
	bh=uBu/LWeewb/dDvlL41oBLO8vPVrhTPL/OVXHMuSD9Tk=;
	h=To:Subject:From:Message-Id:Date; b=I7aGvp4nOUdOI1sQjsVIF8kPGzH85OgGpvjaz2ZGFtOs5KOv6JEGuoCnFUwS3oYFismfscJrQX2koa1pC+T3VigD87iF2u2gbSXp1WYTyFO5FbSf5IkKeKqLnG/mdEbQVPC/lZxg4Kut/6x/xZQrEIyGEiuU/N+hltQYQclZvbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfMAwM64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfMAwM64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF02C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783100313;
	bh=uBu/LWeewb/dDvlL41oBLO8vPVrhTPL/OVXHMuSD9Tk=;
	h=To:Subject:From:Date:From;
	b=sfMAwM646PbUFLaNkoPXk71M1lxKYaUNxjQM7eBKrBF7L6Q2654435BDq0OvRBiAF
	 R1YwQheAG6pzsYd4dvnYBTvdh023QKRL6QuEJS2WFUHrZG/rcbqAxz81QNk9URjy4k
	 At+xqOPe2BIo4DRJ5em1NHfxrddR/LkxQtT8iLqbLmI5fXBcAOvHA42xu2t6Yu2JMk
	 3bEzcgYDSlpDQBs9QCFW9UprGiY0s78L27Ap+LBXxFonRXFSzgJqBccYOZAm7bboMl
	 fzdcyii0XOm62sBTNFKj5iMxfryoE4GznfbK4DsrJztPQ4EMnLKrEdqgLpRM7ZjPIg
	 Bpmd0shoG0a7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4D6C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310031369.20173.13606791811576176625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8776f40d2a57f35641b4306ccf92914a7075581784b88cd722a6cfc767be7b17
Date: Fri, 03 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783100313
