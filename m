Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFEA27281E
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788924634; cv=none; b=O2QoMbcIuD6INlMbN4S81x0HbBd5X5fNSPNJwy6d7VnTuo8FUHvGp2u4y8kYCvYooTDp7LUnEsAU4a674WKUdRyeajuha0iWWY4KltQB8X+WumpTfNYlFL6xjHGff/GkysJyxI1ocKN/y+PM+c6mn46J8s98Xm7mHUnZFc6a6t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788924634; c=relaxed/simple;
	bh=69ZUIeOeLrcGc+kaE0htNWC4BnoZIo1eumjlaTtdyMI=;
	h=To:Subject:From:Message-Id:Date; b=h4YxJjxNHTK8tlbaru8Yp774AaYglj81qP9mzjziTEO0tFRzroa0lQ1Pfq/LFn13h4OUhfg3kTqz2h3j/xHYOOfLlbgJG+TrwuG8YfbDxZPdMzqJ90cwBxfFayu2/NPuS2euE85SQ6Xb71ps6YAxHQdGzunMvektsmjGmm4KSnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NToquU4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NToquU4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF27CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788924633;
	bh=69ZUIeOeLrcGc+kaE0htNWC4BnoZIo1eumjlaTtdyMI=;
	h=To:Subject:From:Date:From;
	b=NToquU4Vz7RXdtdZvG12GM87CMfbdPGVqND3NR9dfp4KaVidJHY0ziZC0TsPWrGF7
	 VLEh0Q97P2S6pm52ojh6SnaosGR4xuYZT+9UXbxwUXGUGDBKkYbPpDNCyP0C/wpAmV
	 zUttwAetRGQ5YgrJHiGuinbxPvqpOYXlxRyyy65o9j6w0bmEJjAImc3vEtHNLDRnl2
	 KykVg6HaJth7HNQuLcMM4MMl4HIobpU1KzN5XpxQmjrgf29IE4Qp2UGnPjGOqlos6j
	 G+OvCkj1zhVo/lIYON24riEXQus/lrvYjffnkUB/MWB1Vpih0G4DwrEnP0Y+TYyQli
	 y9cipLLyJHy+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDD7C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892463368.28425.12451233236910134338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223c284f5a1be2a5dd9af70620dfbd0e969067f87e1179021de5c6145502b24d
Date: Wed, 09 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788924633
