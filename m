Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CF92DB7AD
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769834034; cv=none; b=RWZl6ic+IzeiftdCBC2WcJ01Ulfa5y8Hwjsin4lFCf3hBvP2Vl01B9rnQsT3jKV7JLgZwKmpkWBboh8N596bbO9IYDJebtOuK89K6ttbg31AFdju8k6MfssyNnt3icqdVMpbR9wCh7z3yJj1Vz2ezoFPQPUdTrmfBS3uy/U+0mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769834034; c=relaxed/simple;
	bh=pAmk+qxSkVsYe+x+HCaO5gbzjk1RR7Py6CF+tmtghbk=;
	h=To:Subject:From:Message-Id:Date; b=mLgK96ALEi0yst1nxj6POwl1zsivc9NyGabea/e+6vUxagwdz6TEFSR4+51v9tXOCmddJ+i+QlKvxzMrXige1ldC1g0eszGN5JB24u5jgjHaPTWGSG4VMqoxh7SYdRKFhi29u2B0MOaTpLiRPGU9s0JGaGQOiwPe+7SsIqa1JXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYhaQPjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYhaQPjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4447C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769834033;
	bh=pAmk+qxSkVsYe+x+HCaO5gbzjk1RR7Py6CF+tmtghbk=;
	h=To:Subject:From:Date:From;
	b=CYhaQPjXhoCwvvQYU95tbQQy8VdMIoBF8DFal8/PHoLyc/oFJA1J/baiBnfe88rPe
	 z7P6sfwuYOZTrkmLKFnyu/rfckY6gkPu8/QWleVNKvG8TKIXyK9JPouh0a33/dWIZa
	 kzCfeuPIdm/O2S1DOtwuQgmyCw9IInFeNXb7RqEsWj/EHIRVGwHREH0066Gv14yJ5a
	 EpBI38EbhoBHEMt9Hnzf2zBADQe6WjjejnsNpTRNCEQ38E3Ut9fGvusc3x9WmJlE5u
	 P4xNdoL+vNIjv5sD00ZY90CKDjgXDFbzH3NbcSYjROzp0RyWCHfEk8WXx3FohJp4hF
	 JcOjQz5Wse5rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89EE6BF13
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983403357.11133.4157516109927426935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0d1dc263781f0c50c64df5b88e7bcc18bf3665375d4fdf31bda4c32fe9861d
Date: Sat, 31 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769834033
