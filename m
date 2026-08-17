Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16E63F4DC3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786965034; cv=none; b=NwIORhFNBmYgVFl7A/NcxT5Bwri130tKP4voBAC3KrUDP9JyNvWKw5G76Rnv4Q77suosCPlpisGdGj7yCP+qvmiK2X5lH9gQj6HiqhCL1J8ManyykINYlUE/IaCr84jZpakxFzFWCfyU3fIQx8sy2FYFEayRFe0jx+S6JNpepGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786965034; c=relaxed/simple;
	bh=0Xiw1zu7uCCAkXFWGs715wRzps2Zl/YHSxSIgxlieHo=;
	h=To:Subject:From:Message-Id:Date; b=n/Z/iY0aSr7lhdOhJEYd0OX4M8n15d1x/A3hs5AIhLqInmzKvstMIiy4vlhNMbJax/b62CGxepE+MDhggTcsDR0BWB0XeTkS+7J++qk2iY8cRa6gPY2Uvn5g0SfhOo/lBU4GF0UbcbNbo1HtP8qTAbDwYOexySnAkJrWlfSoLu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RejJtZv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RejJtZv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7861C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786965033;
	bh=0Xiw1zu7uCCAkXFWGs715wRzps2Zl/YHSxSIgxlieHo=;
	h=To:Subject:From:Date:From;
	b=RejJtZv+6BeWbx47sKpDRdEwzWyjnJh44HxirBvHnByMxtRW8KaDYNamKU6/R0NIE
	 9dBPR4GuH06bCE2vevSdoSpZrdgjsEUuK09sLbB1ljePAKUlSWHpTAwbcAjH3qHJdC
	 1ZhoxtCr9qRiZIJmaYSMzkw+GU0iOKgbOiikk9yv2V0Wfd6wdnC5gnQLoSzMb3KKOV
	 LBIbh6TK1byE8ntUmDAnmBWGczl1QWFs8Yty24iktpV7fvbvsXs4bFtYMkiEGj/sJ7
	 j9Hhl0jGqkczj9iLlXC8AHc6Qf1qJ+ub4tytoRdLtbPCbGZPCe0vdlC5cmKn3sETDI
	 yvDoOjzoySV1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0809C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696503371.24117.3644291122156607435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae8ff5db3ce126bdf1427b14be521f887b9a78d36f6310f4e422f48f8267151
Date: Mon, 17 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786965033
