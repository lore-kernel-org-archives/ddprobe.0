Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0FC76025
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779495154; cv=none; b=lG/LXmpysb1RYnVdX+PK+sTfO5DsCWR6YZORxNiUx8VzoNpBaUiQyC41je5lpTm1Ub2Lfrh0zXwGqem20U6JAp6Gh72EQK8R76QbesurepV4y+ll/ApKrBzc/VNdNzhfoA4kK61Eveh4EkWdswjJuF6Eb2bk39Nz+lAmAjcOnAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779495154; c=relaxed/simple;
	bh=WEDaZfOoUtyyIzSDVDYp3uim0P94l3BdjqW4clX0Rq4=;
	h=To:Subject:From:Message-Id:Date; b=cMTwFOXB4ujL7SAVdfcetcEv71TQV02hXnU2Xyx+GPARtjg7n9Olc9ewoj4PuOJSiBW2IlkaLhI2LMJOTKoNmeBVvuJ1wFaS1mMKliEhSyVVIAq4/rttB1hd2b2QaGOijcdKj9yTJIiBbKI0HelB8h3aFloiN5tjlMj24nMkBdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KL1/ZlbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KL1/ZlbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C805DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779495153;
	bh=WEDaZfOoUtyyIzSDVDYp3uim0P94l3BdjqW4clX0Rq4=;
	h=To:Subject:From:Date:From;
	b=KL1/ZlbEOvzJAEtpbveLfM8WPhSIVR7VPNAHI9eJioJAeiVPUXX+M1dU6LMeZnAss
	 9aAfv8F+K2Bj90kW7clCDSMMHi4Cz0WOZlBSWc7bKN8ElU339D8OxY3AYKLei/72Yq
	 U5mIix7TvfETo00hj7RiwzFrhl7nuxVEQlRO9Apag6ZZhsBKA7ZNsQsnNS87tlkyNV
	 otz4Rb7wU2daC+Fnl4TmSGUPyPEWQyRGvlsyk3idseIC1xT31UP1AhZoWhRqAWHU3X
	 gRJtegk/gKXMYQ0x1rF5vwqU0Wia+DgJzCO+sgsybtuq+7atLYYJE/ca1sKIFY7yPB
	 mwAYBjsPeDqjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC777CD5BB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949515369.11944.16464001270782277403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08f56f03b00d66c72b62323bab4a0513d86f34cb816bbe136b254ab9719b638
Date: Sat, 23 May 2026 00:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779495153
