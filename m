Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB863199E89
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789711834; cv=none; b=CTU5j+aFPHfgErHVvLOMvfAJN9H08Drd7JTT6KqRF3IfrY4gm6T7FyiKfVMbmUzWGgUmAPbvRmB7uXOIvvmupkT1P8IyYLBRJcdzXPcpPxLPrTUN3v0klvuYTDsWdavHgLZvSXLa+60qpf81cxaLnrEIf6houYniSbUyT9WkPrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789711834; c=relaxed/simple;
	bh=yvcQXKydmkJdHD7itekK3m6Ntv9eiyaalFRefzhR8DY=;
	h=To:Subject:From:Message-Id:Date; b=TsDqe8z3aKTPTeSvQD5lYNkz4G/Pp0dMaeyYFghW9sgtSHWiakvb2F4kWHXqAsUfXOsf7oVPOYCe61MEkI7nrhqGEeYA7KIG9Gq2+9EvUG9xgfLXE+k4wAs1zl63KMAYVFZ7ugpvZCCs+UigZoGNHP2Kcym/anXnMKh5ZPBGtEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKpRPq5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKpRPq5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0426C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789711833;
	bh=yvcQXKydmkJdHD7itekK3m6Ntv9eiyaalFRefzhR8DY=;
	h=To:Subject:From:Date:From;
	b=uKpRPq5rJkiq/IxxkNPE8IcgzFiCaSESO+ernVh2tz0If4XOKSrl5AWnusOhK13c2
	 9ABTbEe4ieQI0E2KRZzPBxgbfE1LkibfFRrz55PQ2Yl1xCr5wwiwF1h624r3jfDxE0
	 OTQTUgWX9meRIJlOEV/btB88Acm2370No5DtxUMf+43ZAEN5vLvKgkphzUqFODrq28
	 3cjriiLD2sBI4SYP7EzbqCrV4UCj3refz8jQlOJ26Po8HI1am+5vhFL3kRNJMs4sPM
	 HV2LdfgZAeScqfSQo7MRc8lZ1M/ATv3bktnHpO8XsZzxWMXa7paH76AzAFb7WRx2bT
	 judUnKvIOn5vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA07C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971183369.12730.6557514328275618586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbafccfa61badfa265781a8fae3622c7964e22a36691a4e8862ed23b9d003da
Date: Fri, 18 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789711833
