Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EE830E0F6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770666834; cv=none; b=Otkzz3uOrptFTlbMy14ltuk3BDVv1Xk4QM4dIsA2RowODe+l9qRh3sXrFEV6kqqkK38xfrCn6mi+uxvK7Vjo689JFAY8r4ElLQzlpZkf6B+Fr/FOu1zN3ptuOVvSrzuzaM8PuLFUjdrXbFv1IzACxYgRgjdLoIuT2Hu+Oq+g28g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770666834; c=relaxed/simple;
	bh=CmMDro8HQZy1Bx8lHDXyBA4KTGEf12BeS6eFWNEQGKc=;
	h=To:Subject:From:Message-Id:Date; b=CRtrR52N3m76oBk2ff1uKj02KbqdVG5gdy5/oqL4lK4s2L1qlaFDNgPZ3bGi6g/EpCvEa3j60nyCYf98V2CHJ41zOAJ8O0xkfNTJ2l3loUcHuVsM6y9OLoMF4TwbP6qBypMiFGgy5LCdzedUGF+mfUyXCPrtBKrCEa1oKiB4edM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G23N+D2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G23N+D2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0167C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770666833;
	bh=CmMDro8HQZy1Bx8lHDXyBA4KTGEf12BeS6eFWNEQGKc=;
	h=To:Subject:From:Date:From;
	b=G23N+D2h875+DpwBrlCNQg1SBf4xXmMRsZkgJ9vHD/jU7DyD5LSWum8rYUW16q1Pb
	 fwVxGKgDcp3RyCO/u9ziC3kbyw46Jm2sFyFZ+o953m1d4OlmqVOqCbN1K6k1xULySY
	 HoTNNwVhPsznMKzrZjwutqD/RBELkUmCYbbcKXO/fR0yxso/bLNknfGRMTvXSgVeYB
	 ANqByeCP487mEn1ojCxEqHyAsV7nyWwSTo6vuguOkU8cbrc618OG2PT96fTDkE0pAh
	 e2eJ59xlkWTkbX1RGOhTEi692lW3eVyNAAuQmXH92Pz+gKLwl9ZIxSa/M84uMDNVvK
	 /IHP9sQvbsLpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9C2E7E0D9
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066683362.1373.3314505542918161934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f58ec3ce97cc8bb711990fd981415fdc49e9c0686f6531bc4746a0a7ce2fe3f
Date: Mon, 09 Feb 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770666833
