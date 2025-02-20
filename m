Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABF41BC58
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740012534; cv=none; b=riLkqBmg8qOA8yFKW+VBKu2PTJcgGgbe3B000T67JVSOrxK3rf3a+qkdgSohRK3BySXsqOZz3wWQI94Cv21Deerg0leHHILZn2EZeAh+eXXSw4lfzgd1TJduw2CjhqbSyt8lzyAv5vkA8vBYyy2zzSPG3I5gsFAe+8+d3H5Gk9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740012534; c=relaxed/simple;
	bh=Aec1U4hzoW+37rYFIsmSObAaPVHVVCjLClcCrYIG1lM=;
	h=To:Subject:From:Message-Id:Date; b=MQ41mZXBHs95+SLfP2OnO9JzXmByqSGV6kn0IrOj5p5feTOzWQtPfA/tT6M2Fpq9KgnhjByhXmPL8BfWoU+5Gxh3GQdKoioLeNinBkYKuS6b1wa2NucPnpMHu82BaEbKWumcFlwTR96i2VDW7xlC9fw7EvKvCm+MeS4ga5L5SmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWGgcW3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWGgcW3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65BDC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740012533;
	bh=Aec1U4hzoW+37rYFIsmSObAaPVHVVCjLClcCrYIG1lM=;
	h=To:Subject:From:Date:From;
	b=NWGgcW3v76WOKp0HQx2oST3FnYBTf473BEBjzs6d45+9ZaKuwkm/8gvIh4GjtnZWe
	 IGHiaDfkMbXnZCFOmzCTnsromWkdJKyF4wsDtwndE7mW28AS2wigR7pJERF6qIQSAt
	 kBCSmB0r0Wz01yDcSb1CBKEpYlLIsENhNNmrmuKgne47W0Sbwnh7sobH1xtakeQQjJ
	 GqR9LIr9rPC1kWI3UOOas4YUdxQGS7IwMfgTqLUxO9sgXv36wm1wyqcNPfABzAOglx
	 gyKBJmN9enthSEMKtjTZAbUiYFxRYYBCBPJW/gM4Fq+bAjEPfN77VG9F7+KWotLWsf
	 5vncJZq+KLJlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A012AC021AA
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174001253362.24771.12516678586465043249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9304703ce7a780e66dc5cbfcf8b5b1fecfe02babcdca225898c23749747c5a64
Date: Thu, 20 Feb 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740012533
