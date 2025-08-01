Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181AF41C62
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754053194; cv=none; b=ttKOikGKOGqWTJ9l3pwG57eyulXDVHp49Fw4nvPM93FVdwC6juUMV2omEmfVhiARI1S72sdnnQjQRzjmI8vR6xHzrOEa98d5iE9AlazpchAlbk+PtgFkNjRIkkSkXb2+Z+4JOUY/lKqfSU9fnr+cGQ/iLAliXa40tKm1KD7uPGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754053194; c=relaxed/simple;
	bh=Ofnh8oklno/meBleW26nHEl9mAEo/A5d0rlY/1Tzb4Y=;
	h=To:Subject:From:Message-Id:Date; b=IA0fVZAn8m7radILSGxZcfBOYg94pmLX6u9I00+Xqt5hhKGAEUmMU83/3mu3JEQo7gs6csT1hf4c+gU54wqQtbGa8P5aAK+BE7Zp3C2T4u9f9HBorDNiftIbtc8JsiMTqn1v66CJ8oNq3qs4vOxJLD+BTouu8ZZHgmE1gnOP46E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kg1u2Q8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kg1u2Q8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E1DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754053193;
	bh=Ofnh8oklno/meBleW26nHEl9mAEo/A5d0rlY/1Tzb4Y=;
	h=To:Subject:From:Date:From;
	b=kg1u2Q8r3sjIXUyKG/id7CGKwLsim0KDUQMifxG6qxrQICIq76QEL5mIcgN9PMADc
	 v6E3QfRudQkzzfhwOYoqmfcbj7FLIbtDYaIplelS1Scmdb04Ze7DcziyJUcGigFm3I
	 dfnh0lW+OlGpGLOqbQGXMBO/ylAuL0iUmSP/4BuONGqBkOt9vykVNmkdw2YkgYs20i
	 mf5TqmxW5sOsL7PDvU47Xn5xJhi+BfVohTt2sfw5cQLx3ttA90j6nFC27Qdn3YxWZR
	 +DEQCI1G8DLDEmAJJWx7WZ3Os07xTc60l92Xrocs5GKI6+88pEM6LDJDhvRc12UoMm
	 SJeOREwLinVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE15C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405319358.6855.10177131486331869666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e803936f6972138887e09afe598b0f6db21c1854965694a9ef9f7195ac057f72
Date: Fri, 01 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754053193
