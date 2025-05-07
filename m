Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B31329009B
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746653395; cv=none; b=pe1DTUOldCJX63ZQVlneczQIVVyqcbQYbe2CZKXRUjX5JGKfB9lis6Zhky/ZCRIb3RM2AphItwx289+BToGCcP/lnko0DccCQz16q1n2Kk6T+NI8C2G05MRMZUAJzr/of2x7bsKv7S7C8FLbOeQDkSeeF9oi56BfqUf5Q1GoqTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746653395; c=relaxed/simple;
	bh=oSqLefUC0z/8YXZFrEgwe5nH4HqbOe8eJuDyW310yIA=;
	h=To:Subject:From:Message-Id:Date; b=ZNWUWgD57bBqQXi8rTDevXEe3UrtMnN/EykBVV8TbRBh/VTrw9oyVZb+PQnGTlkEIOFyDEQJ6rmnmrunpnlQxSNrX39Ar2LXLvqCqUUcmuBLkgTfPx50pT4DCBpOgGUn0W01j9lt+PwwdA1Z8mydMsdjz4aR5MGRi9LQ/0yZM/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIQiTICc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIQiTICc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9CBC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746653393;
	bh=oSqLefUC0z/8YXZFrEgwe5nH4HqbOe8eJuDyW310yIA=;
	h=To:Subject:From:Date:From;
	b=cIQiTICcbyw07OQxt/VxoEzTj2N+cUP53fMFFWF/IsEF4nd14Cww6R+sLS8escpyl
	 U7FkCDeXkeY8NFx+1r0Jq2AeZYKws7cSYYloqylo3/ymgpsegy28wXSiShrz4LyZB7
	 A0KhV36ePFDY58dchK25RqZcpiCXYopZFNaowtJIcXjk/tSwjCreIf8qHMLJ0X2JaN
	 xnxknObCrTAdrHXu4Ayz+rfUSEHagOjtcvJIdseJ3xFNsxhRHGPxkgsmHnkzN67E2k
	 Om2gXvjKiwzTd6p3qfKx6T7fPF9SK3KKbPLehSw/sD4pNSmQ0hRKEXNHcYPQcF5soR
	 hylYlCxc7Rqqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E06EC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665339357.12588.16431455458993475602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeef252d73599db25ef6126ca473ebeb913384f67335ad3f2ada875c85016d58
Date: Wed, 07 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746653393
