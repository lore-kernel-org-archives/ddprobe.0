Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE93224B04
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781234794; cv=none; b=WPQrDNwRcz6VKYqTmjFvqILQEl6OR5ObrRHYLp88nrcOAPed6bHXDn9maHtyCKpDdDlGLK/I0p7+UH3C6pG8cDDJGMmvWCPdoPFYMjeINUM4mghgSyQhluDHonZ4cafus66umuI+uQAN7dTar3FWHnsgnv6lpnGH15q63gJWoM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781234794; c=relaxed/simple;
	bh=WKaMPE8g8K9JYEu1EHTWzwKgbb8hu0gbvaRf2bamFIE=;
	h=To:Subject:From:Message-Id:Date; b=lc4W6HftvQV2VxmClZM2kxZcajoePMB6kEgLXuKytrzrewdKI6nNko75XOrOYS1DSShlfHQOXOCCKscu9IOr+rXiwYRTVT0I9qEq/pZLnwRnQpCEytDb7aGlbfluMES+4gqcoGfhD6Dq3AvqPsURztm5f2eD3R/RWyZ7CuEAzHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJavzBTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJavzBTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2361C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781234793;
	bh=WKaMPE8g8K9JYEu1EHTWzwKgbb8hu0gbvaRf2bamFIE=;
	h=To:Subject:From:Date:From;
	b=OJavzBTszHCgxOR8kt8Uma2ZJ3XEDTIHc2niPw0FAMORF3/eAj2Zv8YV16tudTSFC
	 XQN3eW1ih2hyNPbrUKxjhzztu47wEgtO1cAmzJCMlEJ2553DUCbJbc0iNMorHdgvsI
	 oLc25fErD4TrKjnziScYpeljDud6SFBtBXQDyOMYY02p3OK6zj8Tj6kDM4sbomW8D8
	 6YLi6VtMPgzXVOZ5FO5gdKyfxiZ1MS+YPqmZ8O131Bf7acUjLEx/+WDuePPINlbty5
	 s5doRoa3EQNppDdr98Pa35jxv5MLsIr65s50rs3bAeWx7oexVTJrNHHTQiqwjzu68M
	 561Vg1fSRxkzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8702CD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123479368.18294.4649836996021141803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc43f97799c6b3c14c482f67874887ede6e5491097c4954da9865e12de6d9fe
Date: Fri, 12 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781234793
