Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2242DAFA9
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761340194; cv=none; b=d3a5HKBh1iCCnxNjxXCtnuABytdKY2eTqlXMqG1ML3EfZDNM8xdjpRIJjeyIAUvYIFtByOB3eRqEoVGidKm7EgG2PEPbP94tddzrXDy5mBWPFzvt72kKCNkS1LqaTTr9pjZI49jcAlxwreoWfdeIFY9cVtYK/MFQ9La1Qu5/2/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761340194; c=relaxed/simple;
	bh=boJgjb+k3vXgRdFq9aKuQXvZ+IPN/9cmfh2MkN6g2/A=;
	h=To:Subject:From:Message-Id:Date; b=kGhWrz3U9U1eTN3EEnxdd/4LBp/AQpKqrOYbl+NPXoCRgIe1lRYgV7GbcR7TlKedB6PP56TRdSbjeZbBg9JWcDBC8Ya6b8WSjRDb7DqegupuSvK2pl8Qnl2F9s+LJwfB/gbMPDAZYDwb6nL6pnUXJTr0+YU9cbYI5m1eZUXiUk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPAW4G30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPAW4G30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AFDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761340193;
	bh=boJgjb+k3vXgRdFq9aKuQXvZ+IPN/9cmfh2MkN6g2/A=;
	h=To:Subject:From:Date:From;
	b=tPAW4G30ueW9PgHCWL/MRGtGv2oqqGIP9Ptw/LZ1+w6PcxblFmAmupOFlGQc4FZKE
	 +K+EO3VOS2zBe464hgtMuvrfDV3TPYYOKZstixKgsQGa0qlBzjubdsjZt2xETPOlgt
	 B4BW1YlAa30gihaQITaFOtW4trDjFS52yKQH+oalZ/guSJpqjyXrK5f1XxOwo66kXo
	 oHXMny3TrKTjAK1+MIRThtrbTQYDMEIqMO/FpFhiRlmvfEDpk3Sw65UZxQD/83pDI+
	 0fyv5L9WPIfqJhj73aO54WxgcXl4S2WBYS+If//lETq7O9pKxDYT+/4rakDnondlsX
	 YtncWU8sAg6EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9203FCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134019357.17503.9395373502743619358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eceeaa1fcedb2408952a01180b1ce047914110102de66872323278eda24c35d7
Date: Fri, 24 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761340193
