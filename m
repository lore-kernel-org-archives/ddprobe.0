Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D255A2FE04D
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755623993; cv=none; b=JhUwsWrxgW98lUayGI0YWqMG0IhClnMtT4PG6kVqkc0rgsY8rbNz/EXxQ+Dw/LdMgJvbyr717X05NDYhmCW9vTtrDroZJyPiCV3mQIUqiFN4CuPYIIy77zz6zzsPyAOb6hRs9s4tkoyfmaoP2yVryVDIOeyNNntJGQR47dWn55I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755623993; c=relaxed/simple;
	bh=qYNfyxbg5n7o/NfSplTqty1EZQZM2LwY0FxkyC0uCP4=;
	h=To:Subject:From:Message-Id:Date; b=DV5xHnN98Ky+rSgmTKZS+txQZYJUXeqEtowIpROiba1qC8AMuuPS2KBTStyHWgvBmEsOIWGFeQWeZHMpP9Q2wZ50ayydMTGPSPtsshdjFTwv4VziVNHO0OrSbQtu4ylf42E61t+iisn6/ckGOE0F7cre7LAW32pcP3rg8VhBCps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbg0EvWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbg0EvWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F93BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755623993;
	bh=qYNfyxbg5n7o/NfSplTqty1EZQZM2LwY0FxkyC0uCP4=;
	h=To:Subject:From:Date:From;
	b=fbg0EvWG6qxJhhhMtYrVqUum7jnuXAhfpQ4SxYkiUBMRkYfivo1A3a8sbCHftG4Mz
	 vkaNtToF1CgA61rQMszqgqozHN+oVUgSBAWtO085kOC+nEGskcmAfnSiCSmQNbyU9s
	 zIXJAQUMCCogNvvEpDGVtnXl/VHgZrj4vslrfllIFWgEBlpPlyGTg5ez1c5XAAzzwA
	 KE5au8u4G53bQ6k4wZdziSt9ZEM2pIAiGrVhSX6jRt3bZzV2IMI/XdYJKsCtP98c/l
	 hCU9eGdAsmVTt7XK1pdd1PKae1hsT6YLcJHJIzMypjz666SfS+puSYW6uSGVuXYoIr
	 m+QCnKlp+qfhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004DCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562399358.18300.10603050341111287809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2cab822be4bbe2dcec41151fdd25b52afd93a5821c23625a9a90eed30c0cae
Date: Tue, 19 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755623993
