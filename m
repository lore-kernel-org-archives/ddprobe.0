Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84D480029
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713526763; cv=none; b=DzsLykDqi4RXoegWd9V83ZK12V2pnu0qVXbqW1FlaSwtnR5EEkC3tCkWGDUTIjeYmYDdgGoapHXKlc1MHYjODIpDW6vTxqDaThr27jZDOZc29GqsZs7ydfzI03NlgoBR0wSGqCKbPenEVaLNRiPX0LUuwl7BHRNoaGuzblydME8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713526763; c=relaxed/simple;
	bh=1gW/8CqUBAGIr945NgT6u1bXKY7Ha4AClGAHXVReJH0=;
	h=To:Subject:From:Message-Id:Date; b=SALt6zpLPWxC/LCN4TDBxgSjynllzXe8jJQKzOBbeobDitDzaTzzvFJhjdxEsGHWANDzv2XB4ZQAk3J6U5WhWEonNqCqSkkSWKXarxff8SRy3jvKf/ZHos4pq22HFPpaT3RfEbmy6wdWqacxM0uJ0uQVCeF/cstxPHs0cxgLAQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAIoN5NH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAIoN5NH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 34D2CC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713526763;
	bh=1gW/8CqUBAGIr945NgT6u1bXKY7Ha4AClGAHXVReJH0=;
	h=To:Subject:From:Date:From;
	b=OAIoN5NHyI7iFnTieaYvW1lLSQDPaUodMRC+APqfxXpnDDRG19V+AMKvyyyrN6N/r
	 Y20KK2N5/TL8AbNJ/H39PClK2psWXiBrGxosg543zbX5bsEUNYINdq6Y5oGrB6bwUs
	 N1gPDkdEYgel343Y6jFNA50Ky8heSy5JXv98/EFYrEV14Cgx86PpTjnP2dGU4ziemt
	 +b7xDZoStN+9N4aWaS4AFreB2Ngq/stYTut9Q4HdH39QxhxzsrmPiOacvZMdeWgi6L
	 jqSKcjnM6nKDeUdb68DJkONV+vWHpxdlrCNsG9vRnWaQzMVH3JSqgjVOeX+CTmiMFD
	 CJAQtk9LJtQ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 075D5C07E8E
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:39:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352676300.3489.17865166724918381206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bdde8c65f08afe844f2ac7e4b62a4e292c7b0eb51fb126ef73d509a7fe989c5
Date: Fri, 19 Apr 2024 11:39:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713526763
