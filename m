Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38181230264
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748554194; cv=none; b=CWM+fVVyepQNR8T7WM7Ap+9+iwOkfoaDTxivifHQQ+XfoiTUEQXKHjfhBo27gMdfX/WkFI5JmLPCtd3BYQ6vmKEVvz2BhItdZCr6GwwUuceC2yoIDA0r8b9Ffo7pne7JCo+4e5jSJGwgnoQ4ZWtbHnc/S+6DEziC1UIIZS8AUl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748554194; c=relaxed/simple;
	bh=C175f2gceXSbku5c2Rfsi7sNAZl9JmxsCn7af6/TIRQ=;
	h=To:Subject:From:Message-Id:Date; b=Euk7U3vL6F51hCIR85zdC/JoPZPjV3Sj8PHCdfoZ9Y8qN3t++fQUHsiCi8p/wLz2mNZ+NsiLJ/8TwqlqoDtq+4CoulXWbazunAMUoGv73tKgAxomwjkip5gTy29KvZLep9OozW2spIm5x0RLCth/iJzm7ymOrRtX+FnulGod2I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8JJ9Qo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8JJ9Qo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA68C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748554193;
	bh=C175f2gceXSbku5c2Rfsi7sNAZl9JmxsCn7af6/TIRQ=;
	h=To:Subject:From:Date:From;
	b=M8JJ9Qo1MeqZ68hAerTYqUoktq8H9o0/B1HPqvaRvmwIrAzEjwJhXeqz1Jg8w0Q2B
	 cEFVcRcJd3uDN8w7voIuewsA8D4QdpLYH0+A3Bctv9IZC295Fupdp3MzQ1Dn7vS1hy
	 px18/LgsZVnM9TOyMI//6aiP7j3eTn6KkKUVJimEU5CgpHuSF0SnPWTNz8EOauCihi
	 4NS+++n0meLkhx3dfANy/kxaRcaM5FHVarGZs30jjqEdyGzFTNwne1oUZ5pRxZkCDe
	 6VzTOG/cyDxtdk2XwnJ+jJs7SNJmhiv9oo+O7/dLeH561DF2FTWcGrB0pE6E0Vpt+i
	 6DMt14kE9dJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10FC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855419357.31162.291599563711418405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0380615630583889d5be6ae8acc25dbf95d7ec778fdf3e90e989c592777e4c
Date: Thu, 29 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748554193
