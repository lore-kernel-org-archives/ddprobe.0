Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0853B38B0
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777283254; cv=none; b=L1Ln8Uzih5HU1Co1ORBeY/S4e6w2v4A06uRMnq2FGdVbGwJXAp097F5Hk7Oz2G/u+7mCJqdBXMrF8o0ysIFvbwJ+3YSqKNnV5Z3gfrJgrXh/J8uTCwsWZ7ja1n9MobnRM2pjKQTUGlzCfHvtfAvg+TvR8NCIiccIoevdewcCrlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777283254; c=relaxed/simple;
	bh=orNkCLH31HjGVk8itWhKl2LmH+yBx3CgeOa8nziMLUs=;
	h=To:Subject:From:Message-Id:Date; b=sOmrTku8H2VCgdtO99lNPSpqbhbaGCv5Nv/QI2JDc4EDYnm/abFobrOlR1Bpnkdkjs9a4s/XCPDkzR7qzX21e1ypE9WC7zlXpxfN1p0Vf1/wA4bpdezcDbeTc6YcoeghdZcfl218AwFscY5PhEG/kuvT3ugYjGP9gWQAoYsCIhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=he41yggP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="he41yggP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEB9C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777283253;
	bh=orNkCLH31HjGVk8itWhKl2LmH+yBx3CgeOa8nziMLUs=;
	h=To:Subject:From:Date:From;
	b=he41yggPthei7Tc98cnuE+KdvfLDB41eI3EFgRKwDJcKf9gIOP/CmbgK8EFAPPAsW
	 NQ2Zqul99eP3Rz2BVLl1XeJeIy8y4F5UTZnRPMsOkkMTlWUj7KZqPvAhP8oXhFpvb6
	 40gUKzotoaAYoD5bGV98vY9YyHwiNXvaz28ye6Z+k0MPiJIQoUuVfQR/n6IJv16NnD
	 lUc++9SEQOSExr2YS6QvaoNU9V/Gg2wGJQXIyoWOxcOSe1amnMzEajdGtaLkTv40Rc
	 sQWPkYHzFAXpJzy1E+d97Qk7xumg6KbyiZjf/3dOXiY/rZoqhUPB3aWEuLnZ0LJNFj
	 ZSDSjCFKbP3Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC404FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728325369.23998.11190556802921500717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551bfdeec11fad9aa30dfdd8280be61711c9c5e19d80197526bd361929d4505d
Date: Mon, 27 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777283253
