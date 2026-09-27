Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606381F427C
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790552434; cv=none; b=a1K9PWKS/WwdvjCtLExUfnpu5ps1F5jedh6sIYTk/0ijar1b72Z9uZjXM4+4GBEoPpdxpEG3agKW+TVtOubklzW8l84D2WEdrW1kzJM7dHaUyA0/59PM3T95eqY9CVPh/EKfI+xZqx0STA+dTfOCuN6dO+cykfvYXBP4jYDXmrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790552434; c=relaxed/simple;
	bh=GZl8fMaGpJhcfxBmuPVEbyoQvj2iX0kySloQv++e1F0=;
	h=To:Subject:From:Message-Id:Date; b=gWDVUtpiAcIfwrlecVCxr2zWOwVQZ9XBB7RUFWwnbgswreoXTZdOThL6YveScmI2iccko+eBISHZo3d5CBm052Dj8rfJ5tfNe25L0qgqIhEEVnr2g5NdIihAyHT8CbsNahyFRjqx9GfkhjzRiDVfDELak1Nnjf2CBNnm6YO6mGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBZwkcr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBZwkcr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AB4C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790552433;
	bh=GZl8fMaGpJhcfxBmuPVEbyoQvj2iX0kySloQv++e1F0=;
	h=To:Subject:From:Date:From;
	b=dBZwkcr896Jw2GmgNN2nTxBhmB6Z4sx4Fml+1Lj02GWMMbDaJUNzaLXjkfzf6+cxF
	 rIngsYYHN8v5qaaPwEYrddX+C6Iq+iFFUhoYcOqJnKJgPMycCBTEf9B0BIRyjbI0Rx
	 gMfMp0DfRg83lthvZpvopkldMe6ufgH4xNr0njlHDdBOfPJiD5AXm5gZC36GCOLWFd
	 HkE5rcWUaxKf8dLJiqqjRmjYo01F6waKiggcYRH9WOIDUsBQkKxt3sq58AvsVM9NmK
	 2mFZaqe/FrY12EBEIWrHykZeDRgoIGnR7uwE8sqDGdGOFTOdv+Q+rgxHZgEHIhbPcH
	 8gKYFhxrII//A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27D6C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055243369.26096.4515371919297820429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba8ff584bebba2b7fa0bd5544c57ee7e6400d1b72479e2845a8af28a974494d
Date: Sun, 27 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790552433
