Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4052F12B6
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761555594; cv=none; b=RjVt3CLAB7ndDNqaiN74k0SP4HxK6tEfIKQAzEWN+XRfaN6lxtXjicvfWAeLbg0W/DY2pTb+wlLr915scw9g66fRiowfG7CkywbMfZP/2PF7uCRMZBKolnu5lNfMrUdYPUmRGxsCpn2y+YT/74eHr9oY9dcelD4NxgbjLPOMXB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761555594; c=relaxed/simple;
	bh=sNOjZ/mxAvMmSazNkbLGX0rDEXwRd75l2vZxY4cJp4M=;
	h=To:Subject:From:Message-Id:Date; b=KxBRtt2CkebJvlBFpypknF9lbWpq9Iyztzc2HaihA2aXqc7vlidvzFHyQVkmjJm9+xIO3Xitdn6+nrzRVgD+Y9D5Uk0CV/nLmWKekOK1WpcHMfvM3CiO8SXK5GbifgoHezNmt2gKYodM3sIEOTUJgBfwGvjXbLfiSW+s19nR/Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0dfCpBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0dfCpBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F244C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761555593;
	bh=sNOjZ/mxAvMmSazNkbLGX0rDEXwRd75l2vZxY4cJp4M=;
	h=To:Subject:From:Date:From;
	b=g0dfCpBE2NTdpzLr7oQAJu/XBz05QmYgSYPVNen4z9krudRdtgAddEMgeNlyQ2QcC
	 VXrriwxudkmggpYZ0eRc16l+z5PqhUaJr9fLSxx50h+J6n00GfqGs/ohsOBLQVL9s5
	 ilF15pfVzKlZAZVgiC756yv1FcgH+4xohmMEXbdkKU2ZeGJDyLPZdYl7HB94ovHOPn
	 UDDOtFjxe39YtPgFGvv4LC0YqVGy+VdnYEmB8sRNZ+GBjHJANXqBy0bJMmVs7Bhou2
	 MZoIAOh3ilwzMk1YEEgkhdzgOM78FQEOIrrCf3ibHY9xW3uzfSRDHI82dQHdtHGT4l
	 mDAZwgWkqP+eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004ACCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155559358.995.1174283155167903138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5261102cd451c9a5813c2a60d3791ca77a473e0f9fe8b01b6c4d27657e4cef86
Date: Mon, 27 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761555593
