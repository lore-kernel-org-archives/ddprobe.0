Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C73119E819
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719249143; cv=none; b=X6wQTTf+e98Aph4bS5XR94HgDSo7DIY/5OXYfPgVxvgSGWWB1tyrSuMkrUiTlqfAdWwB1ktrmORtvAfz76djnaA0NlsjJfIsCU8qI8Nw2sqUSgE31YXio7XQOkmuv1mbFzzDMyMd5k5lGgn2X6GqPACvg2eNU43Gud8wZqB3Cyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719249143; c=relaxed/simple;
	bh=6oltmjIWSWXbzNVn5+Uqxc5emm4M9g7YtiQBKh1Re6w=;
	h=To:Subject:From:Message-Id:Date; b=Lz9dwX55dJ9sgcnIZvjOzabvuovoWj6CA5uaK6YaWA4Cv99T57XlRCEBoc/HexaGtwDw3lD6s1/ZVIQdQ4B5/XWUVgsWPFHYRSCSnl7Uhgde5kAhKsTUexARig/3o+nCJHCUJUqdeaOfz3OyEIR2nwfszbdW7lYswOWMHgcc4c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EM+WmLQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EM+WmLQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AA1C32789
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719249142;
	bh=6oltmjIWSWXbzNVn5+Uqxc5emm4M9g7YtiQBKh1Re6w=;
	h=To:Subject:From:Date:From;
	b=EM+WmLQEiCQBODlp22BI3vWZxJ94GciFaEWV7ldBzzey2R0n3SbDywhJ72z0wu+lN
	 N7uQYcZLBVp2Nbf/fzM31VChOIyDGoikIaB8y2NbnM6SbSOWNBnIrQgs5HIDRLYcO/
	 g2BWp2iOQ31pcXY2QQYqOJs87SKYt/6RUXydg9KbtdK938/3v2tlfLWL9SdyZAKtzJ
	 fVsNvkMTxCp25U0OYZRFAjcte/SopW9EYrhNnF6kIrtC5qPAbDA6WASRPDMNvbWOoh
	 UiBPPdudrHDZBd3yaH/9bGRBktq9tS8xGFj5WpomrIFxGy36SIQAqB5itXzShkpAyI
	 m103RIVxBZn/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5A0C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924914277.16996.15262363732093030681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762948331adbb3574798b9ee6664b6ca898b2b3f90e4c3c511cc1b2393312c33
Date: Mon, 24 Jun 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719249142
