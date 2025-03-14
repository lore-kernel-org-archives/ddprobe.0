Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F87192B65
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741985936; cv=none; b=A13gEMioBN921C7MXARQOJZ2XUHkJfU+giQsHSMxFh3VfMkCrqNbb1/dlXsO8itojU9av89G4bygU2Z04O+mo4pAiZaQJm7AbZTjM8UyaDWBlX9m7SoX+P9DNrLba/CY29VvdsjPLG9dxKZAx7OF2qZb1Pi8Kcuj1qGRwE/wI9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741985936; c=relaxed/simple;
	bh=Z7IOu4jCLKD3rniNbu4UVyLIn84Q5jmvCw8xdH8bslE=;
	h=To:Subject:From:Message-Id:Date; b=e21soCsY7XvlatAGIBAIINtavXcPg1k1io4HNFo8hSpDU7E0X044gqUOPI7adF3j0lmo5Rrwx9HqAqnTK/OCSAkw+PmPQzc9NfITts8942EEUypnMOrY5EdHt2qwrvi6LWz1jqQF67wF4InrnzimwYvz+0qlEEiv3H91RD9FdKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyLBG+as; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyLBG+as"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF346C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741985933;
	bh=Z7IOu4jCLKD3rniNbu4UVyLIn84Q5jmvCw8xdH8bslE=;
	h=To:Subject:From:Date:From;
	b=HyLBG+asB+Vre5ZTGUIT87OVdx6CCbCcPFAvPdNFDC7P6mEFxMFo6lOrItyVNjMiv
	 +SXAPPhIUdWaYR5tv8rJ2xUgDn2IYOWc9ljUm8COFNKTR38HZthkEyl66tkjxdEPHX
	 axjzabtkgxo6Kg7HcJfR5iy3Pm+zSryXvpzd/LihAy5s583BGambltdSPr9rii7OEM
	 ZAqdqt+wqa693MGqPRVydkIrg1+SBZNDWmKH6NfFNhSG4XB3nKjvQcn2IHKFE5YF06
	 Ny5JA+bh9whsWm4ncoc7R5C/kqsolyiVehHs4/Xcn2g9c61z7x5+WoL9VKyJEZrm7r
	 Ozs1qpVU3cgpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC92C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198593365.27766.1227031539343810747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6d85ca0f3c992d5d5669b7fafcd25d67851ceb9573afd6d3deb23327901424
Date: Fri, 14 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741985933
