Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6138A332EBB
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785624634; cv=none; b=Z8RLHv7aV0HN5y/AeuDYLx3eMpn5IBTiJwqmi6rkpbqFnsQ0zsVOUrH0/ej5p/Cca8kHTF1dUGjPfJA0g0ZBc+FLVLljYXwhgNPPofiqKiCX+e+8mfOObFeSrQk/3jJy3uxPkPghmxmgtAN5RQfpq6fliwU1dj9Tvdsxr1lQ5zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785624634; c=relaxed/simple;
	bh=Z1su9A0UuV4c0jg8UrztUGpa5E4HcqwDIVl/dSgx+T0=;
	h=To:Subject:From:Message-Id:Date; b=mbXJ3THivcQu6awN15RO1HzyxJwwQeUmX2GdXfsFf5fsP7kjMVesSZQLkBK4wIrQmS9uBghQ6fS2A3gZ5Fw/yJU6GYqg2Cj2FMiGf/r947q2VYQpWyX8P53Q9e6rHO6W8B/mNTFnZgs8whAoVGFKpGyKVy6hHr2jvzoyUpqVsLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKQ1UxGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKQ1UxGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8488C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785624633;
	bh=Z1su9A0UuV4c0jg8UrztUGpa5E4HcqwDIVl/dSgx+T0=;
	h=To:Subject:From:Date:From;
	b=pKQ1UxGdwsnDY8OFNT8vHgGtWFffS8eXAmVod/JXtKZtClFdYQV4/hroByhOcrL1D
	 1yY7ttwwg9TDJ79z6VIV4a9V40RFut7Nut9ZCuB71TDqDwwYSK3ZiTLFiB91IGCa3f
	 TkUGQTrQZFUodVPok8ePthGxznTu0QX3m8HFzLsoH0Z6uNcLcLd/EEVnME8VJLZ5gY
	 6bBOpDRyqxhW81MCsUkUykrTdlz/YLzOVh/uh5ZLeSMOsEDF4EBLfHrJ2WAhu5sq5l
	 Bwl3lJk0sbUDEX/QS9QEdmSzAtpkPqSyMHSMmDONV42xl5V54/CPbxDg3SSWmgwdsb
	 Z3ot0scvSWMhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF453C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562463368.1604.13557367932918885474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80d7cb384d923738e5256ce968eb9f87d516c4da13b8bbae1dad22c12cbda4d
Date: Sat, 01 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785624633
