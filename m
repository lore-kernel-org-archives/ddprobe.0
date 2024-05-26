Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806C2C127
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716722063; cv=none; b=lEzlULG7riQS7pdnElGaw2+dVVAMufo+bAsdFJtb51GJ9IZlT8m/Cv8og2v2z+UECCuJ1IKjjt6us+9F655YLu0naMbtyJJF70f/wSvpKlryl3iE62uZnt8IBeMtAQsf611/gDG40ik84VfwmSajWeuDHL4SY6sPFjUzNAPupr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716722063; c=relaxed/simple;
	bh=qGou3Uu7QSYdJ85+qVTJcBWv2GOU4OWCSpcE54JAv6A=;
	h=To:Subject:From:Message-Id:Date; b=RFqY9E7lWPjgimPleT57zBrSXZ4DushItYCrNM0RV8Pv4Iap+CbnsIpZL/BL4ucyeSE2/aqOIcofiwDS2hL+snV/HeRpIAWXEpfHbLEAwl8qCsbX1Euv9smsJPw3UBX5n606a4fUl0s9OGBOY6rVfy8DOeL9wIutbRlBKtQxDRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1Osd4AU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1Osd4AU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E570AC32789
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716722062;
	bh=qGou3Uu7QSYdJ85+qVTJcBWv2GOU4OWCSpcE54JAv6A=;
	h=To:Subject:From:Date:From;
	b=U1Osd4AUR0Tbg6F8aQgHhIS0jLcYhSEvPSuDgB+pUU+3uGCIEThK8AK3Sf9dOVXxC
	 /Kx1k+xX9kDtg62goO4qwZLsWxlPCzI84Y/qBIZ8HG712DlqpJpk/aj1EuK9h2MMq1
	 UKuC/VL9YbkRQYdFwQW4H0iHUPBcc2A2sFw2U8C8xANDMOB2O+kF3Wufl0puoXGnhV
	 nZyenS4WFV0Nk+Icz/Fr+e20Z88h62lVGJthVPKDqZn5HlNV4eTkUYGQhfZw5uUl5E
	 84fJuW/EkAc52gnEjKo5X5quK0tNj3uXTNCK2DiEp11EmoZ7bU05XkslaG2mKVcoVG
	 ptCfrFGDFk7Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAAEC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672206278.7408.111235344411663644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f37a878249995f9f53bf5477fc3ef8752500ea7687eedf256dcecdb3943e078
Date: Sun, 26 May 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716722062
