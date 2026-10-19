Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792426834;
	b=iebrHBKMNJRd7FzN9yfk70GU4MQ0neQ34gTiL3eJK3PZpVETVFm9jhWdsjEK1KaM0y6G
	 YywVe7XhrWm0/6D9Qiv4C2e3XlkuIBAbwIr2BEYjrn2ycaDbQ6wHevl8iGPtofWh1mUJg
	 QG258O56lYFEPhYyUppTdvo071QMKN8kT61ELNEEz7dXU5m/r1riBK6MVPkM/teb3cmDE
	 NnThGlGS9VbyLuH4IEibA+ukCn7QBtHUDrNetYfypQVoR1mk/59wQ69owUAmK1kjQE9cv
	 wLzdSCgpL1vDhZ+t0DDjJWLGcd4BHWg7JSRYjC/qe/YWAqYkIlY12+hlVpERTk25QoA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792426834;
	h=Received:Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date;
	bh=0e4dC8oKzu0gQd7NpZo0kOOTVBzrrBqNC7cm0LFPQrg=;
	b=3Z9xXKgs9BfVE6Sf+q9k1c732h6Oaw5LijRWGTLm3I94iLiUk+FJrR4mF9qclRd0pMAw
	 P4HWwYUsHns6T3AXiSOKuSDVLWf1vGsaID4VvTIepDd3e5ExJzpATrMouq1cDzzlsO3o0
	 rSvkK5m2hY3CQMFiAsiwuMCtEz7K9oBY16WA2Nz73YCAj88J8JeFhn8HhtEmnBu4HKTGk
	 egYf45/sB4LTWOLKHIvcHyRI8lp5KQToQh0KIPrQP1ad1JXrNPFNvfMqAoHbHlNgUVjPT
	 hTVuz4zzSs3hdVIBNfxNxk2nJvP3YqmcOl9/u6ALxAvqO/TJVKC/K8xUORGjsIkRKhA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=NQfTfj0x;
	arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
Received: from aws-us-west-2-korg-listserv-1.web.codeaurora.org (ip-10-30-226-211.us-west-2.compute.internal [10.30.226.211])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0264606A319
	for <ddprobe.lists.linux.dev@localhost.mlmmj>; Mon, 19 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=NQfTfj0x
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BFD225771
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792426834; cv=none; b=YO7PsYhXoSBxFqTxbgoEkrGyW6AIGrZ+wcEoYFFzbuv3U7KhNjzAeac1N0OnwTIoc5D8qZ9oNz7wJ4qOjwFzFwv1uH+0tqewXHAwVdRdKeDJEqUTyNlVsU8e8MDEpV3JOKU6ru/+Ns94tCkw9J76qnEbW9FpQgjYcT1IZxgvB3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792426834; c=relaxed/simple;
	bh=0e4dC8oKzu0gQd7NpZo0kOOTVBzrrBqNC7cm0LFPQrg=;
	h=To:Subject:From:Message-Id:Date; b=ZQJ554syliYV1e9FbS81SWx2zBnMMPmq5tIsQAA9dPK/Fk0hQp3JvCwPFNlo1uJfpKpSZHdvChBNnIHU7IEsQPt1p5gc8oNdF8lC3CFe8JuzFhVNJbN535WyqcGkkjK+LfytNNueanzamGAdpK5921HCG8iVwub1DChrWG3GnKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQfTfj0x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1795C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792426833;
	bh=0e4dC8oKzu0gQd7NpZo0kOOTVBzrrBqNC7cm0LFPQrg=;
	h=To:Subject:From:Date:From;
	b=NQfTfj0xqy2OuxNlu/Q/qxzvwxFwSM4rdwO+APOmVcW1v3uAvOMHzYnNNweI5EtGe
	 inarzQD/Ncc2+fHk//yqcsQ02qxmlcd0M5uq7JewJF843f9Yj6J2KzQgkojlL+NsM/
	 P/i8P11kuO6tr49kKO88Rix6KX8Jsze+DENTZ5bLJO8GXwS+oIxby8eTx8qt3dXGHU
	 hfUNOY3M0/r/H92XYKvPzGxQBTiEBtmbOXf8ptaHIeVorvBWoJR/lj7ZKYK+Z0zMsN
	 Tg0dMxXbqrFYM9hheEAkS7QWXNtnD388plW49FqfBPlaErziyJVmLFqBooakBO4dPf
	 1e3N6JOG2xaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46BCCCF2E6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242683368.23890.11656022216287765779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d46eeb28245f4568b5bb50eb293be15c487a9bbc2932ad87e102a99bfcf6e6
Date: Mon, 19 Oct 2026 16:20:33 +0000
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Post: <mailto:ddprobe@lists.linux.dev>
List-Help: <mailto:ddprobe+help@lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ddprobe+owner@lists.linux.dev>
Precedence: list

rtt-probe:lore-subspace-rtt:1792426833
