Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1311DC070
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737753954; cv=none; b=N0Gtw9AWefNaaW9TQYoaLIemp+vuiKGnChXMU1uRMjPO3BKfzkDVM/SYL+5U/RFZzVlDhfTRt6TSJpC2qpsNZEDDwcw8l/gqoYoOJEGkYg2BtQUPq0dcnjuAplv4/gUeDF2gFMpn6XINgwNYR++DrqWhQCbttpGXla/x72Wn4iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737753954; c=relaxed/simple;
	bh=3T1grXLfxnk3juwiUH4wdI85jY3oPNCcqWdxrFFP93o=;
	h=To:Subject:From:Message-Id:Date; b=hxznjCsdK9PXYMB5omCYCQJUXDXW0M+7Q9emTnp0EGh7DyiRKukrFMU1gEQm0t8bMB6r7SiuCg1YeWWagt4K39k0YbvBmeN0fm+E8d9fJo859hG2h5LtOiCx3z09TKCnQVE8lUWCH0O3jZux4yfY77jeffAaOLC9U9UBsYJrOX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmbR5Dt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmbR5Dt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3CCC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737753953;
	bh=3T1grXLfxnk3juwiUH4wdI85jY3oPNCcqWdxrFFP93o=;
	h=To:Subject:From:Date:From;
	b=kmbR5Dt53Oaqi1slCA36bZ241EoT1GU01LS5i1dUMIkf70GUg1HCk7uiH7h4mS19S
	 SuAaUsU81UZexsU1PM1p7Fr4sUcdo6lR6fg/YW4yy3l8xuwyBkzvuoYkI3RNBMGFKB
	 qjw82URd+ctWw9qc1KkH+i9ciBxU5IabgsufgFsTwHWjNg4GadhsazcQL1y2cClnr8
	 1L1aOS4h/EE0IEEzdZBZWZRVXidQAdZ86xIIzRiPzhCL/ogfUq/14/q9AMErf5WJ3K
	 Er3tLICzHGuBrWefYviVoIo1rh0fSa038xY7OxrsK1NJFKXPVM3Yjt4GqAquM47NIN
	 LuBeHCQyS6Liw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9354DC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775395358.24729.15434972273879873603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e46d452b3c6218f4f076c3c18d6adc1fe293a7bc34585a439edf49dd9695a67
Date: Fri, 24 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737753953
