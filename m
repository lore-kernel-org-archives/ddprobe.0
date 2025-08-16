Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4932EA155
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755356994; cv=none; b=jmQmlB0pxyYQfg1Zj8Q8hidzGguwTNwDPM/7dcB0acNiEVtMy6kSF9+w0hkxhOdgNCIFNsahMXOKJxSQ5C5vtt9j36g1q3bgWwY3kD+7ci3F06XQ6Py6T0I+vWiQuNm08xP2q+NW6+wXIWsa6ifC7xbnWTTXOxVgYhd1cyMH1xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755356994; c=relaxed/simple;
	bh=5diwnhiq7qWn5MiMf8S7+8222jOuhNnwqOCvueWaGXY=;
	h=To:Subject:From:Message-Id:Date; b=SAjROKnsgcu88vLf50G5Jzs2ZSiDS3MoZAPiqMN7nvgI9cLb3uUP6ECh1//xfrT5uGk4UjXKygpbeU/1Hn23ayhJ3ZqVkpl6sRIs/3WRigMQHHg906shjEzNu6s/dDUdC8SGwjirv3GdQ0uK1Uvpu8nd6a58qk/WWPyPecH2bCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8CXaAEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8CXaAEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB9C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755356993;
	bh=5diwnhiq7qWn5MiMf8S7+8222jOuhNnwqOCvueWaGXY=;
	h=To:Subject:From:Date:From;
	b=A8CXaAEfvMUm7aYEVGIevjRr5vw2nKsyT6DTNDp2t9DO5jcyKOgd/GsK2ERRW4KPk
	 HybWRS9cYFGJ9YNEq9IXw04JJKKrP4mf1iteDohWGCTM1nDDYgYBmY3Ufs0BRCRzcn
	 7Wzi47OqQDbIbiThxbFV7JpgEco+voUYLe2hEcIdZC4Bv30iP0VZBEWDV8v/JSpF8y
	 y+1wSPYRT1IUg/JC1nJC2pZQH+r3B8xJU+QpvNU49PGAUscjgZa3ihyao7rcDEbCGF
	 XUvzghjkx2WEksj+aUCspcKismvtZ6bGgczUuVNrHaxG2l8ZjcdTa0GoJn66b8FYkm
	 aVnwYT5u7x4ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B9CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535699358.2543.6579028019089884482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64876bffc31697471a0e410d9f49305b7a5c8180bb7c11efda04881adb8beff3
Date: Sat, 16 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755356993
