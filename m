Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330723E0C4C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787413234; cv=none; b=pOoK+49paqYR7obu1odKdG3djchdhNaotQIbmfvlPGE90raWnPrTuZmKjNZA+9eLPNVe/QVCbLDvviATC+H4MLY0eHBjpUTzJp39xATquNQz+SfMQPVRK1QAXIEyD3yFG5zTRg+4glPivcYf95Z+72413ecd2ZyhNOU7dUKRzvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787413234; c=relaxed/simple;
	bh=W05YqgF4T6/cVKtg1JFAHqcoA9Jo/ahSBPT2rJAq5bg=;
	h=To:Subject:From:Message-Id:Date; b=upkyY8ozelNZbG4pG+TjvO2m8aRT8X8olKfBaNep6TX20O/4fqAbb+u7r65vYeKvRw+ut0Jk6koYzTc0u1blFTi9Q+OglDmpTQWziM76lXj242a8S6wNtcWjIEy+sbauRkmAkx+KXLrYaNV7/ynBSrIEEVYM4gtfQNBkCAqe818=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAT36q+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAT36q+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C00C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787413233;
	bh=W05YqgF4T6/cVKtg1JFAHqcoA9Jo/ahSBPT2rJAq5bg=;
	h=To:Subject:From:Date:From;
	b=ZAT36q+82MG5DhrQMIWa4XPMok2tsTI8g1EJtmxg1GxiWkXYBspyMxo8flmvpo3s9
	 5/bBhhguy5r6UPgRsNT5FPWPJfHmu9N/wD/JKaBI1OoOuGaY7BHrT/Ot/cr/wM4X8t
	 WinIzXFF4p4sbXABXmMXc/JmJOKwGlArilW56IVGi8/MdNtI373kwrtwy2D/jrt7uF
	 5UH6mscfLWzkqb+961w7Q5Yii0TJq8XwbmdJWilHMW5D+B3ntTIYoo98aqr5VYqYaV
	 u3xsXtP1yjjr76NsKgvq20ZDbokG+AZUzolp2Uit6RzGh7eumwE6QRHvYv8RLkCxXi
	 Afcn/nWQteNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DF2C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741323369.6314.1482218916629258579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6a4de51a38866756da4c3858df0571223057a0bea9ba4bdf3f64069942c2af
Date: Sat, 22 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787413233
