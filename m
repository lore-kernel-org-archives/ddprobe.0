Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DE02A1BA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767156834; cv=none; b=RC8/CNaqEfy6XieVZv2mVebTnopG1yzUVijjGz7hzPlPNQH8TzSo18ezfZWH2wHEeQN1HH3w0sD3qxfNSZhyT/rzeBQLuFfLNIoGmoYyDFbnkXa1R8JC1VZwLa9Puoc6s8NU6Qc+efKsWTY73+Rdfugx1SJ0KgbDMCoKRn5CRTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767156834; c=relaxed/simple;
	bh=ZkewYwQiFe+r3hLuLO2gs5tpmHSJH1jlBYgzd8HIooE=;
	h=To:Subject:From:Message-Id:Date; b=taq0Wljvfhrp6AP71n1I7/Q3KgPediB4k30JIOOcJJdz45nkv4XGYs4JEARV/Zv+8EcEyi38MFipe9LOYemiLC34l53dVTQa08LiGV0QtkWV/T2b+qvRwOHRlfQXGNwpG+GkJfm3BtxeA412YH964qy5K2xRctdZB8EeMJ354f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LST+B384; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LST+B384"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1644C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767156833;
	bh=ZkewYwQiFe+r3hLuLO2gs5tpmHSJH1jlBYgzd8HIooE=;
	h=To:Subject:From:Date:From;
	b=LST+B384531xf5VmwZBvzLPPYO209F7VQPMqObwWErYUMoOwHFaovfvAnLqo3pcUT
	 1Y3PB3po11TrnkfwcGcRFii1HCdYXxO+NZgkXsodKsvUtVRURqbvabseqUEdWS8T1v
	 71vg+ForBH4rLy0DoxH/AhK1a9Yf9ddp5ulYu45FeFKW8JlPKA1BSC5ogF7T502rg4
	 o805DPqREe6Pd89qNXKIWTGxzHJcbGrKCZJVX3Y8RooO4YEGPlpkFXgQlpkuHP3cH1
	 XQfQn1o6JYDkxwbmsipPQJoj0mQPVitGk+YIGHr7giVujcQgQ34zP5RAiEw463BULe
	 HAJ00Tv+aKUzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D31EE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715683358.28108.9365167401329127653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e39395c894ab6640771dee9f3a9cd43f868a4bb51b325bb6d02a53b724eea0
Date: Wed, 31 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767156833
