Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708BE8120D
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718024243; cv=none; b=kmDg0nWb9B0Gg1cNj/35phzUtd8u4BDaoS/fnrLffNz00f+O44v8opOzN+VnZ6XjsQOh+5PiErqW71JcVF3Va/ogni3BTDkZ2QDElnQr2bQrd7febMeNCW/1KR101AHzQTVzx1lknfVC9mxfzA8Pj6FgYjwA7Ta3wCK3hmBZrF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718024243; c=relaxed/simple;
	bh=A6UWDDTefbIw23xYzR9SPCmn4jRB5RE341lPEcpDVf4=;
	h=To:Subject:From:Message-Id:Date; b=ils/TOA49D6imSicsbWNPV1i/zwmC3CRANPClAQ6/Zif6F0TUBqhKV0dihOux1ltf9yR0GuT0CokH8VpVm7SN8Qks4+O6gfyUxRz65UlkAb9JyTS9Zv6LJfGkhwM6GL0a0unxEZBg8KTnDCowpN6LV9kzBb3v4/Qjx9O3KYw/wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjYOQ5Ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjYOQ5Ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4B1C4AF4D
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718024242;
	bh=A6UWDDTefbIw23xYzR9SPCmn4jRB5RE341lPEcpDVf4=;
	h=To:Subject:From:Date:From;
	b=kjYOQ5RippZJAnyQn3jgJouqEp1ASbLjWRAJrZe/lD+N5QkJs2zhHibZph5buaOwx
	 8/HkgVxIPvunnrDLtf/tIulPu/BmLkQLV1kFhewE+kie+21CZIj7L/WQZgTc5S3ZNF
	 h8C/IQdnyND8NYPuFAGb/dxylO58/Azaxk3QvNavhdbiOHOEv7KkjS4iEwMUWYd5Qb
	 NJV5S0sx1+ZZr98f99jfKS+pq1KCD0AF/pFHPQXZRZjVlPTuyIT5tt3JPN62xAlpIJ
	 CvR2SVC5ymwFCAUl92OyrbMTSET2LlYGRNTrjko+V/VZSNJv144/ocxBhCB9sjQURl
	 3hjgRB1iBTuiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81D7C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802424279.964.17549604147811555007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98ba25b590ff9be384bf8131d77147edee9aca14b4dbece46ac5a6f3f196fb5
Date: Mon, 10 Jun 2024 12:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718024242
