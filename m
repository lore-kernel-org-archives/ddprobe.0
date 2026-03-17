Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0351C33A03A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773741894; cv=none; b=MuLrYcOfHS2Mf1P6UypCij+k3qizdUwqVM1i4mckOlpGgde9X1aKoq9YWCrPv8S03FxM0hnfi5ECncNsn+tKBBCzFeypE63Jkuuz5Uo2jQXsJ8u4+WUvJyCylhacupzQ7uBykybEJsCvijTEoQQ1buMTO5iV5UBICNL6myC0yzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773741894; c=relaxed/simple;
	bh=DJqytmm8SfKpTnMVJEtYXbq21BJy3lWbTU8tL2uCV/I=;
	h=To:Subject:From:Message-Id:Date; b=PaTsYxAbQU9jHGLYWza2gO+1c8sBli3IxBVF7xdX0smemsHa/JfDFFlf1ybZPrPJByXksEL6q3MXjlSGAN6KptwC1rLfqdBBR1qNgNltj43wcXnBxBKSrpvbCvdDhT30g0viZF771Svjl+vJcoKPt1iNRLHiUkvPKAN2AfXFV3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbArLwSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbArLwSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A722BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773741893;
	bh=DJqytmm8SfKpTnMVJEtYXbq21BJy3lWbTU8tL2uCV/I=;
	h=To:Subject:From:Date:From;
	b=QbArLwSVYnvLs75ePEPsa923Mi+zr98rPEwPtLrVDEGczeSgQ5u/ufC0X5c8r9hoh
	 AZfMG3uS6Rfeye0G4JgpqF+k4NP2rENY/yk4yXCS/hJhPxIfVfixAJlMgLuO4469Cl
	 3emDO0xbw/4AoUFG9vGG/6oUElOY6fadSmbJWHlgxa8FfTMGgyrqBtEu8esYvqKWNS
	 VnsgOwZdDv0jUszR3anYmsviNssOvmXz/k694qE3Je90zShBFs1XMUdcQFi9vUif8z
	 Bu+5CZ/aqG/jyWyznCFOmavH3uuqSRb5y5EwlLEQQuX6zXgjT+KP7VBL6RUO0NIDKI
	 1B9QP8XIHpOew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B4F33833
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374189359.5664.13670999007009743134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1607d912432490f6d7e49fca39721e5ef46dcce55c42e01ea9f67ec808e2bee1
Date: Tue, 17 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773741893
