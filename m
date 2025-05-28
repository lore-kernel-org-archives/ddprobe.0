Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B762199939
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748456394; cv=none; b=h+PtBETXnRTXRtER5ZUeq9lMCG99Tsa2r7aTNo1i93uq/pj7em3LtXJmd50jv8w3puf7cFBV85VvMIIqNwgIrPSdVKJy64sZWuS5CEboFUGMUG01mJxYjszW0ZfYoVfvdrLrXWx595jqjVWkxdgD8eQXj9THfgiAOIDXt1IIFMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748456394; c=relaxed/simple;
	bh=rGkU3gNTsFP0ojAiF2oiy6/EWS/DyJb32fqhgj7M4kg=;
	h=To:Subject:From:Message-Id:Date; b=SH3N7ARiBuJGMaUXJnuKX9E+dztOXTf21Y2a894TF1HmQSBg+DWDCJDLlqXmHDsBViJHEWxzzsTHC9ZY8METAH/+mpUU+GUal4ktRjoxaqMYmPq87xf6m0Hcztj0SGym9ZuzeQhnO1LNPYfLSs4t3/HcnZX6Rvv8Pa/taT/AcsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etLGDeC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etLGDeC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748456393;
	bh=rGkU3gNTsFP0ojAiF2oiy6/EWS/DyJb32fqhgj7M4kg=;
	h=To:Subject:From:Date:From;
	b=etLGDeC7MHlOIwa7KXTQUKCQCRZL6Qclr5kMl19f/m07RtS676U8m51n+xgJPQYXw
	 hsmKcdKrIAV8LIyKh4pqnExosai/9iQEKoPUqzP2YywFmoNgF0nbVMzYzTCNt8PNqG
	 rIi8ef5uOYj4zLqLzCcBsgwVkJRMOtZ0qvygfB7henRW0lr3uvw1zdDEc1GCWBJidB
	 Zttj8kKtWFMoNuVo1fZQ8CrOe+hwfoIMR7DYIi7NH+bEGEjfn9a9wIu1G6LvoCXDoH
	 XX36t+gGAZv7FEc5g/Wbwqhpe4WgJkiSbbFwWQfrIJItcB28QA4o7vOuOC+BjDzUQL
	 16UN0NHuphDEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92996C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845639357.13313.16855207219224018601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91ae4da720f5e1916887ddd5c6ce43336ffb76ebb3806589790950eff7960df
Date: Wed, 28 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748456393
