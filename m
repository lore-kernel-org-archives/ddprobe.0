Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4693D32E121
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791540634; cv=none; b=EeTmf2PySsos2lkuTiRB1OaQoHzkaDAvVsTfSS3gvcsuO68Y2ZhIwG4Mch2cIHIu+YHbbopV2zeJONi3yIdwDi5lbmhyAQgTs9A8tSJwJx0qKBQEECzABY6wOztCkyvJaZFub3WnbmDkxc7ltPH0yBW664zNXobnHQQqNgRlFVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791540634; c=relaxed/simple;
	bh=hmlb/HIPbKImcjnIYU7WybaZZuhARt5pcHRpRaP80Eg=;
	h=To:Subject:From:Message-Id:Date; b=Vjf5tcZmfkaqZjmtJjPHrn0gHGxx7vM1ikJgN1qpi33la6knvOCxGmwhswHK/MQSgKKEjUEDm6Go2Mc84AqSC5RNLvpZ5xb36MS5qPdu0RwDR9HbBQ+2e4CeQGl3yb2IZgFmGl/HK+0l6Cv++gjsUzDMUujA8mk2Ybj0n36QVe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiQ4qU9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiQ4qU9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDD3C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791540633;
	bh=hmlb/HIPbKImcjnIYU7WybaZZuhARt5pcHRpRaP80Eg=;
	h=To:Subject:From:Date:From;
	b=SiQ4qU9nq65VPXbubsoRRMVpSdwLScLf3fXEIbXcA45N/COaHWKk66m1fsF9ZBFJ1
	 khMK9h1kZdiw6bPpDw0dZPkvoPQgcsertatGqo+M3D+NGJxi2ePGdT/c/FdA0cy3s+
	 Xni0ue4QMb9KXEfPhdi3O78PcYvRWCgMYzVA4p6UFmMvm3LPj9ngAJTFZXyhZFaM2D
	 M90vQBw5q3LW+JGKQEFwMrfT00Vg+mo6jsWUyQhjO2P/ZJFb7F3SROzyCjgzj/e8BK
	 8w6pqG0UTRYcLouppZ5djF7Ctjg+qS0W4MPHXdXVKKHfLzkR/jr0fihlZZ13bsoS4+
	 6ZfvOqUMUwQ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C98CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154063368.6749.17780399545150244110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa53c1b7c36bf6d623e9f5ccc7c388cf1f78cd02a5efcbcdd6cb771dad56db2b
Date: Fri, 09 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791540633
