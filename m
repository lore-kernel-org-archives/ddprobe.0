Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4FD1DDE9
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712375297; cv=none; b=pBJ6RuPCNsZu1z/89JJSRexdhcxk19ZS97qiLsgz/XLcrr534VsYFM5YldthaK+iIuL/QdxX6U/Xt4seu73XK+7b38ynQIbIRKI91+n64vhMvluAtuS3Tcr/XtItqMgR+nTrlJjS5FlOWvfv1twunOJkaLxYUUxhzcULkIZ1eXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712375297; c=relaxed/simple;
	bh=Zs7wwbdj9E7KuKm9PzN2Q4CiMacV/0ux06IwjCapujQ=;
	h=To:Subject:From:Message-Id:Date; b=SfZgm3esvyYvc4FTtm0Teikzc0CNWni3Xs7e635xO2MHz+WCtsc5sXmDmqFSc5Vb3lZEAt7Vw5V/9dTLk37mursKtC3nrGqP40J9rO7jOAkTlph1ffG0oQWAANWuia0/5G7hucO6yq4BcAOwuskzWJ/XZKIWwKUAr3KTY7sk0B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pbz9FUnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pbz9FUnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F4E8C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712375296;
	bh=Zs7wwbdj9E7KuKm9PzN2Q4CiMacV/0ux06IwjCapujQ=;
	h=To:Subject:From:Date:From;
	b=Pbz9FUnApjjSbLpoWdV0Bnq+nLEAf8IbxXTXqdapsHaj/4RjWoIMRggHvyHCqisK/
	 x5l8xvLatYN02fSZU4f/vg2k3rn2t8/DSmNa/KcA4dVo/T7Sz+ua4Hkr+lG+nWvAF/
	 toqfQ15JPxsEiLQk2xSDCDpbt2SUgD2LW2Ljxpbkr/UnI0N/YsfIC+agvCl33pm3t6
	 i9Lxw9c0RP89l7rVTPQK4GmTEyq/+NwT4FLGuNf11cu45Ufo8Gs/13Bm1303HUkl2I
	 2eBKyqj4cQLi9aWVozQ9bQ+X4XRzv+xAh6PQiA69yP9drqxF2DoA96byIdD49ySNXb
	 8IRi2bSSi/u5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE6FCD128A
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171237529637.22010.13459742231688520951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff1e279c8b73944821324a8cd6f9a3f1d1f5f3354dd88c6914e9875168e6eb8
Date: Sat, 06 Apr 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712375296
