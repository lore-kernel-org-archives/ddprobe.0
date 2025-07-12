Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125D51EE7B7
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752346794; cv=none; b=rd3tUBZUH/2wNnhC/cGUkNW2tcRxzuwI4iLRy7HnnckrCvK+TVi4MSkRKjzw4OlQc0Eve23aO24/vXD5ERHBo0+iOiuUMzV5iUXek9qT2zzW14FZIZXHyccYpIIMp956y29lSlTr9MKubMqwy9BgbbIcMjsEdqDp/CeT0MBt6eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752346794; c=relaxed/simple;
	bh=42L3583dKzN/oAbbgcWQic5UrH8UygoufWuiLj4gn9c=;
	h=To:Subject:From:Message-Id:Date; b=fwmpS/tC6bx4jSc8+4wFJguPrCpgWA7myUVwLRR5fuibMXSetg+HauT1sEP8WHVaKDqWwswQSzmvxhnMub4qt5uMaqt292VlMjCTwAD/36/qEoMp4mBuieuR0WKekg1A7JJNXwvSshcAT4JBPnbRKFrk9bJ1jSC+jmZllAmPH1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEqd5bMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEqd5bMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B0FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752346793;
	bh=42L3583dKzN/oAbbgcWQic5UrH8UygoufWuiLj4gn9c=;
	h=To:Subject:From:Date:From;
	b=BEqd5bMelfKr2Rkn8eIkpMCaKGa7CyzIeDO2CodZhW2L8hl8uQ6pbmRZmwCJ4B6hY
	 NzKMrafIllwaJdjXQldQ1JyKc30LzEtx1g2jWepSOvvPqZ2rL81RZDcN0mdeMH5uGY
	 UZswWEfYeP10KABFXMZaWEp3L9SFhnsLsvmXa0BdYuvJc10yA75rpa6vuy0Lye2b+J
	 8BQ3j1tOI5aGjlFG4vXnZodbedBD4KXBmHWSUYf5TgKI00Q4Qu04FykduzwpJrHtyx
	 OEczzhxjtLs5kpFkQ948CrGLh2XlGJ0fvbm9qX3o1xBSrXYmlWA/2TBIZlNdnlyTfv
	 fwSTdMAXB7Xcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BAEC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234679357.8651.13658844515868422092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4447c6a34a67cf0c8ca4d908fbb98e11ce153ba96af61dee0acc387ba11dae44
Date: Sat, 12 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752346793
