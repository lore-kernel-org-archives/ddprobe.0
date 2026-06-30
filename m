Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15947384CEF
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782846514; cv=none; b=G2s9LBb2QXPURzhcYHAK9ECqAGlMdiASR5KAxPWh6L0+2OV5ZJMf1Q7e+cZjUTEbeTjraFLNPL9RSzyzPFxv1NqIYJxasD3MXTAggj0Kk32CBtzNlNXZKlx5/5GTd7AAekVToRJhaa/RMEIANoe08ekK+G+9iNt2ZB2GqY1SYz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782846514; c=relaxed/simple;
	bh=Puvc0E5Ka7M6tuZmR0EWNPe/sHDC4YwTeeinvgIgZrw=;
	h=To:Subject:From:Message-Id:Date; b=tT1hLh9PB4XxjKaGc46g+1jMevhfGCHpBVCjJCHYodRlvg8Z3Bksv1cnq1cmHmmHHhv2Gg0OajJyFjb+BKisSiS+6ENA3RRRyrs7m0nOLwzrr6UDcf/vtBswHQiuhR3Twc6eZ5CytaOo8WIkH+jfGt8X+K7PrhMpwv4DnL/qu/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+Hp3tvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+Hp3tvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3585C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782846513;
	bh=Puvc0E5Ka7M6tuZmR0EWNPe/sHDC4YwTeeinvgIgZrw=;
	h=To:Subject:From:Date:From;
	b=p+Hp3tvp4XsIoSDdZ1Vzwr05R+I0uGRnb4l9UXXpojfIyfJvDIf8NrUJSdEkISYmS
	 ZRHAXYcZy94LbSNjQe4Um74PnqeDUws7TbXr45uS7woQaZf/JNRQf2DUJ3VDY7dBG8
	 naVwX5INEfvyDwSFswyAPyXhx9Ovh3OrWCS4Hskto4qB00Ia3LJAgEBNKqexxCsPeG
	 rnFyCNuWONaOkmBcaq1WqwshV2KF0g38xqXfAc7zpwcnOZ0MHkkmKHLDA5gYV5LYry
	 43lWztxO4v8owlf4aNyCEu91PtSC3SydDrQAZBOdgnW4EOTBxoIWT5nVDwhg/Acose
	 IINP5tf8a73bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4EC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284651368.18052.13353892575492404818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8382dde0d10bab38b3e27a4b44b25fc8ebb038ebe6e61b439b6cdd7814f11fb9
Date: Tue, 30 Jun 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782846513
