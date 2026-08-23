Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A9E2C1584
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787480434; cv=none; b=ZgOrpglH9RRUFymHoD5ap/KsNwedNA0zdGqok0yyNHWoiaBuGO+3tXEyb5GmwsaqcmxE+rndo1ENlYoauHsj139a/TEmTTsCIgGJHer9KzPJ+DlGi9crWpxjHRbgXahqdPWWdAuswNwypMy3gn78XheXYFOdxmmF79DeRvxzRUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787480434; c=relaxed/simple;
	bh=yCfNwpm55Fvlv8MXwpD3mhgiH6cfxAKT5QFut6eaDws=;
	h=To:Subject:From:Message-Id:Date; b=TITFUsaACDr6ZW8qjyahMxLvM60FiH395Mq1tD5bAvYEPheFd5bBcQmGIxlT7qxPVG7tBe3pyEhWcfm1nvzagVTu/87N7iOurC1c9MUXZLGVwqD8LtiGwMHZzTdG5tvAI9I/lYDBUgaGfjotEykSQ0snNYO/6/hpCHrWSyvYiiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jA4ugc8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jA4ugc8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3355C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787480433;
	bh=yCfNwpm55Fvlv8MXwpD3mhgiH6cfxAKT5QFut6eaDws=;
	h=To:Subject:From:Date:From;
	b=jA4ugc8EJDci1Iv9C0gNvygS2BIXtTofB0hxUwgCWqFE9wCEMUzLgURWXKoM3hiSG
	 ZxA7rBrBHpsxyPCkDOG5awYFjqD9L8wI1Rolpx/0v+6B+jpjHLICkqHb6+lwSI5Cup
	 gf9Zb6hoFlrYWCRbPfav6/CRGwyLTDr5MlF4rQAEGJRAsEnkT559yInhSUpg3s7BFJ
	 aY7i5PVU2j8nftvZyqDDa0WuB/coqhVlpUVpfkUxDGNX05+ijk3i8Mz90FVBrefqt5
	 NtfEH6KYTTpYF0j69mgX/h0594CXhk0NnKSUc2x42r6700BbRNWt50eeUeejTfJeI1
	 KtQ/XeIqqA5bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CB1C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748043369.15324.8343049033696655637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8575ea1198494fc8648b2c2cf92556b3dc93e33e6560fce1f57216e6cebca76
Date: Sun, 23 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787480433
