Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BA4154425
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763274054; cv=none; b=EWj3vFIAKWlV5wA9zXMcYClMiBKxRW67EzmnwTh4pKuhLvt9HXAiBBHdtN4FZG88NIj6cftEsqyl9NbyNiVGsxfVzDhdPstIn2wre335hx8koIwfSxErBTrbayJ3p8fYg3SerwIAtRoxFNGGiRtIgUKiobXUibYgNT/6gOmnnJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763274054; c=relaxed/simple;
	bh=taa51GMzN5jqxS3hDApMDmV6lU9n2+bY3YvJ8Krhc88=;
	h=To:Subject:From:Message-Id:Date; b=hn41+9T6aX7CtkFFbo/srLGP1UbIZneyOR7Hi8Xua0RU8ypqg8LJIrQYbPHDX9Y3pGq0WLnr0XCfq4y/Tu/7lTUsTzxjwauAdSpm8+ctBR0j6YLYtHiZSGBfrJPYUa/LNQIbaamkGXVnZ7nrD+Nfdzy0cHSxdMYOfQVivSIbfD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDMFjLUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDMFjLUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A5C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763274053;
	bh=taa51GMzN5jqxS3hDApMDmV6lU9n2+bY3YvJ8Krhc88=;
	h=To:Subject:From:Date:From;
	b=PDMFjLUfqy95TfV45eBefWPTIz/4NFGuUKiFDBWluH2eh2OymDLCXo/ll8a9S1/kD
	 xKNZ9VBRKsRYjwuj860/xkShipvYXPzKPwxDiM7WXyIr04x2ztTxCf+vxtKCLn4Ltq
	 DbJ8D5dDd9axDGZ+DTai1duQstW/u8uBlxJq/AFEYjpF1Yoao6FxI+mvhgTLW6JRkn
	 bFzGltuZjvuFCVNG6JQAKzF9/RpicL9i7zI/lT+W0dNXalP1Be57c+qGASbS/fGggG
	 S7h/MlCoTv8OSRxOpzPPQfLR/udgeIE2ZUaRxigyEF5gB/KeGFVeEcvG5I9CVfi2al
	 Q8aDtBCwGyYWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C65CCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327405358.31737.12956488604978001606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b59057ea173f35a5c6d107cbe4beea7ca26a2aa050591b1e4c7ff78b651e1ea
Date: Sun, 16 Nov 2025 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763274053
