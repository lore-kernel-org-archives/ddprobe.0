Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B4F228CBC
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763611914; cv=none; b=LSiFDgWz4GD1rOHXOyBLIaTdId6Vp69fDbRAZrSEWlDjFaLRUUHrcDj1ACJo6q+mdAX/ThgTX2n/o5u4u3rpCLKSNCKWXl1hOPs3l08vjCJQOgYq/N7zsNsncy5onY7R17mqI9MoqYWTYtuwqlkh8eHZYPOCWnTixVbO/UfME/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763611914; c=relaxed/simple;
	bh=jA84BtidSurYs/IZkaThBuwwfDLXT9iwVbFvDMvZf24=;
	h=To:Subject:From:Message-Id:Date; b=In5dBM4cPDNBUx1h8nug2XVOkyAXffgfSVvzTVfv0BE7DhsJieN9xLk4JIWbLkWiPWIv53n/OTTTxNgZGfWTGu/YIcM0VYwzot+ti2bmO1Cn1C1uQb4yKxLZh1wv1Ugn+ZOT6JAaiae2PwRB793L56VjqYdKbdoH1uQbSMl2eEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPQzf/0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPQzf/0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AD3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763611913;
	bh=jA84BtidSurYs/IZkaThBuwwfDLXT9iwVbFvDMvZf24=;
	h=To:Subject:From:Date:From;
	b=fPQzf/0i51uFlYNO8Wm60GChSOaiOrLci9bXZ6/tmq2sW7/6X1nLVNm0DBWZHbKfq
	 l3ZiX29t/J2L1IajAkX5GNb/+AJogrvJUNlrnMhPVc6MNqppuZ/Ig9H7JK89TsqHZw
	 b23SCOI53fo+lPvugXbnewfktLsc9X1RZfM1nJcZbhzsu4nBuzaiChdaUDNEucsYey
	 GApeLKmxen59V2Q7RO3J564qalyHZAvX+0QIx0XRs8TqN8JsVeWBSXfQFznKcwiO7A
	 rlcb/tDeLcI5QBalOW+UO7Nb6UZkHJDuSr39aQcfPTzRIfWMz9rsvEclwnqxUfMCWx
	 /B4BVBQL6sTLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A83CF64B0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361191358.14828.8137481216217953203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c461094701acbc868c7bd52a15b023538a1e8ffb23b4ed714017f16fed8087d
Date: Thu, 20 Nov 2025 04:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763611913
