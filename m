Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5842A23BCED
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786915834; cv=none; b=LN1z15W+Z6PnQvZIRd7j2mTV5+1X2npCfheJxRykL2OCT3ha+OctyNAQdOhirXEDaZoz245ADGf7Pp+zHmDbaWc+c1ufBL1jrNghmpb4QH8BEiBxuFq45BqM2OugQWUUKqHZt6HQpVNphR/9C07Jn8vEtL6+RVkh1N5eZBEPYr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786915834; c=relaxed/simple;
	bh=nLZB6enYkB0J21i9nQSA865lautLIYGpY7wn5Tz1hZY=;
	h=To:Subject:From:Message-Id:Date; b=CD4NHXeYsjavJgiishAZ3SsF/a9idRc16V0PTW/NjABUjqm5zapLDU8D04ERTJyHuf51fnuXCwEDtIMUqqE02z9t5RpHCujg0sMRd2Vp3O3B6WFRtoETJWJQJ05E9iRy4IoLaZrebj4kiZeoaDnEe9vvyBvPjgWJ1STUhQTjvDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meYlmDCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meYlmDCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59CDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786915833;
	bh=nLZB6enYkB0J21i9nQSA865lautLIYGpY7wn5Tz1hZY=;
	h=To:Subject:From:Date:From;
	b=meYlmDCjXL+wFoY/1+n4vIiwCM5X26GTUhx7BOQ5WgsNyPH7rHVWTif4rZqtr0Va5
	 y9iib1LVwiHwx3Nmwkgms52iWWjmfhGiLZkqDTaCDqI45N9tNHNqajNSyDwOYuapcS
	 0Y8tDCVn4B44babmjhgQqlDJw+VviMzmOl07rFe6aHsnvQqZzT+OebLjQx4GbcuQu8
	 g9HwYLTcwBzeNt6i++2GK7kQNF4nGvICcApJz5dHcm7GLIIDmzFmMMaFCViNkn50pY
	 0mRLtWgsVXBityz0zSWWo+G/44bPLMn9BB++Ih/FRL739GEn13NVndB7mEy6N23Got
	 1CMBC7xQ1u9mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0829C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691583368.25083.14864314442426801699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219704e7012f5a3ea85a1b1eb8c1e1c7be7539d9d6269df1fcec51faf0553f7c
Date: Sun, 16 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786915833
