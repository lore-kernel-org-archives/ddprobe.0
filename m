Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0FE2A1BF
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725426354; cv=none; b=U/pYIDzui1vnzlZhvzCWzhDsaytzKWxFwbx4MMRpuNWgiUdudpni8JlqKOshVRoP4SxJ16Ift5QUmHliZpSoTTi+sZ2Fzz5m75WSrd7+gqzLWz1x3XSaRwcsAokXtuVWKHiM7EsVMLe7c/eBmDT1mVmc4ou6Sj1FX2Al+brO47c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725426354; c=relaxed/simple;
	bh=yaraWD5eiayy5pb9yIj+PDXFMTRqvI3OCggMcuxn7wk=;
	h=To:Subject:From:Message-Id:Date; b=jqEiWWSNfHCJY3VT1ABUbv/M2fOPtoLlxHOl3q10qbFBCcn6ybJWjtafFMcZpRbGKsnFk635bLkj8dGaJ/ZS6DPFS8anIt3phqizJp/rS9JQoIZc90RNuD08JcKGuSgUzD6W+CcuPuzyfdnvUZdAuUuggbWzh42NfHe5kFOfEnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXUd71Rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXUd71Rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8552C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725426353;
	bh=yaraWD5eiayy5pb9yIj+PDXFMTRqvI3OCggMcuxn7wk=;
	h=To:Subject:From:Date:From;
	b=SXUd71RbzUIe7ylchCI4sILo2MmCxqNMfhmiTEMW9vfcW7W/GsF8XYme4U4Hqck41
	 pezvReF5EsewbVx4GtAax6l4e3Qypdsje82cPNdgfRQ3VcKEdoAfNyM2vipsGE5suc
	 xnITXKRCnhjcFTkNxoRZrIscaRRaZgZpAa2wv7A55De7NaL9WATn/oj4VfmSyVMF7k
	 eEsfGCZfvQyV4VvAIKeYCfUZWagl7/4ccRhNctMNNs4ailKKwZx2YnDd9zlChfnRO1
	 R3IHzc/58+BeYQJAZh9Wuh8tGPN67ALJ20uUGA7EhFLkIwFnUsQzndsMI5TNkBFqKw
	 5gIvSaMay0+KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9855CCD37AE
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172542635361.22498.10163766541863026498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04fc41666e37265a718bd6014840b8c108c60269395d99b327ba0dc4a13518b9
Date: Wed, 04 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725426353
