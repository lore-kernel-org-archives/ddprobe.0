Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860C237881D
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787199034; cv=none; b=Z1dqD1bjjqLV11HLP/johq4w19I+SIH5bvDLndKVwPLnkKzPL3TAqMr2JR0lNzmEmdmMdpqSlhWJQ+gRukVxB1vAmgLdaGSKB1Zk3OwN74athc7eXVrZMlmbA8Q/Q8uIxqYOd+ElXhq0mGzqkhYwZ/i6gufVkb8P/kuW/G4oGfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787199034; c=relaxed/simple;
	bh=TzohwYvGNlD8HV2dPTaubyPE0k+r8EDy8fCjxx083IQ=;
	h=To:Subject:From:Message-Id:Date; b=c6/4DvvcxMc0/q0owNcqQu9pDzDyTFi3TfSYHfxYvBxPmo0WwVL+O5nu9fMcRDKWArCXfo0V91bVfhr9ri26wIDWBxeQjaC+c26HRqUt+ou515yAkj48nBWp1ib7OsCs4tY5hDcaFptNG755uOrX+L//n4lgBEPoNAwmIBpzle4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUlys05x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUlys05x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B63C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787199033;
	bh=TzohwYvGNlD8HV2dPTaubyPE0k+r8EDy8fCjxx083IQ=;
	h=To:Subject:From:Date:From;
	b=AUlys05xM7imqbesJ02bHfr4gzRZif0v96scNA2/4njliZZl2XCXpWWkhTcFrsZHy
	 uEeFzdvT/g2lct4+5CcIx+JhDA4Ig3PN503SEr+aCga993krZefbA27Qrr30ASLiDG
	 AYPw4+SMbEqGebfW4c9JfBVT4c2/kSbB1cNuQi0dcMg1RMzMnW4kJk9mqbheDamuTK
	 iUXyEtpPEL6rJ4o8n2wa63aDP42iLtHGO1UGmU2+5p5o/y9ME6ZY7OK9nbHvaLHn00
	 DQM9qKo6OWm2cSlNQqYawHLyn/XncfH2CVHlACRQCZ1JPcqqhNWM/TEvpB0/H+x0Mq
	 BTDmpVy3NN48g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B3DC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719903369.21955.4897047499312972013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40d689417e800a0fa1b3a6e0811ecf1aa1ae48124895dc36231b9538827b540
Date: Thu, 20 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787199033
