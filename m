Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5010E34D926
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787698834; cv=none; b=brVPoHMlaM+6aVlYOe01I1ryuUscjwasm1mwQdzivMv/DP8852ibs5FLWP5TVei4Bh+IpTHX7NYWMHOL4fGydWvmMNFUWKoE/JR5TRFtpRuxByQa8OcBddYNAj2HX++sK01Ug4LYkC2HJL1LmVHGDF0Af9uRCnpsZyrN0PF50Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787698834; c=relaxed/simple;
	bh=ruVdjX/1LQpvi9Ogv0id4W73xScJwe9ykAKnt4wAWos=;
	h=To:Subject:From:Message-Id:Date; b=BGBcGUII8uq9/jiFgIZtiFPaCZYBkkOt8t6xbRd2y0YhySlmrAl7VEcDQSDGEeoXJXMmHIlHBCfZt76JCNw44BCulAiR435yCdydV9Hp2Z1c0TCVHNdElw/7o/p+t94VAJIUoKE6cL008SfG0Z6t6JuPho+vzxepBqUSPurNGnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwnF7OCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwnF7OCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F6AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787698833;
	bh=ruVdjX/1LQpvi9Ogv0id4W73xScJwe9ykAKnt4wAWos=;
	h=To:Subject:From:Date:From;
	b=ZwnF7OCxA+TbvgshujkMhs+4q75vdgXxEwGAYgFRiWb179j+ydZMtUOaTOPo0AA3O
	 81XcurxWZCJG0e3Q4C1sUneViLeTP0RMR17bcWSj6jvoc4wMlHsOOuglUUUFp1/CJ1
	 73JCI/O10XDMmC0bwbwXcdeUDk/kWjwioU8uM20s0npX7OazlBJkqWfMoID9srJ3wv
	 MOlsMk70XHFGpinr8MoecSk/6y+tE3u0LXVl4cQKLc3wTrk65pFpBrK0RP8jNE8PTp
	 SjXc13hWE1nNpu7CIQQjQONlNgILRbl3rFbcF0ZRgDVTq0XJJPMs/++MoeNDZU+0Wf
	 nwKOdkRPQnQ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB716C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769883369.14733.252481783458207015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6c1ca9cb60b82cef79ae73e39e0617ef19a5526ec41332641d7cf8632a114b
Date: Tue, 25 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787698833
