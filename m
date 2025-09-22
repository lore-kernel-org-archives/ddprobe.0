Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41C8111A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758547194; cv=none; b=GhNqkxZ3eHTl49LwVEzzBvMQ/8hFRqf2WiA8AQODjotYuORY7jvtI5lN/ysIlEHS7TQOf+HJseB5wSFx4Ie7THm9WEXT7QmyKISOlsagfikK3A8O0CAEhdjwE5R1fWBQAS0ExfIoCLyyjfWvBYHMITaU/dDN2d+NGrmIBdLfI/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758547194; c=relaxed/simple;
	bh=o3RetA339Emx21WU48FiYhOfSV7ycKty6HLNdFYUKho=;
	h=To:Subject:From:Message-Id:Date; b=l3gSAa3x6IlsmlposoEpMUDqHXXKlaEVBi2IAGiWTRCuz6fCyaz0avbdfaYgZijUPFimIwXPDOcqgsjWI2RML6fltTaub1xmhHHMcJsqOliVhdODcrfDw2k6xaV6XLPtjxJ3pk746apftxHzPcT4hMVwLqqo432VjSkI+ZiFI0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egAv99Au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egAv99Au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AC6C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758547193;
	bh=o3RetA339Emx21WU48FiYhOfSV7ycKty6HLNdFYUKho=;
	h=To:Subject:From:Date:From;
	b=egAv99AuS7Ep6rwzgLIqSTl++ApIalDyLzPMWiK5ZZcoBAyNyHRsOhkLULg/4Q07C
	 G3pvYb8EsKCf9Z1+ISnhSnbpRrMaVKh7D2V00NRbDXHd554DJxOoDAujlnK7dVZVwl
	 9Qbdvmz6ATP6O2o6klAH/H8RkilKNuAf/SzZ/NvAIfQooquNFEP6dwPbqb3Eej4+j+
	 2TqBUx42+bCund/qITj4v8lpdsZNS7LNFLcZJUdqrk3ThXHq9lGQs5UwviviCOGo8R
	 Bq4pkMIOtVaUkl2xWtfAbaqNOsVOj3ijCT6KN2jqAVHB8Vmbfc3IN/k5udFetyhYla
	 g5CZAE+jVQiDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C06CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854719359.31618.7759114125166984395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89f772404cd33397f734cb0e94be8d8125ef373d160ae8e746e16735a149d4a
Date: Mon, 22 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758547193
