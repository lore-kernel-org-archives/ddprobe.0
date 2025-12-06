Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230CC30DEA3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764981174; cv=none; b=cA8zN89wN5zG4G6QwyowUD58uCB/rpEvvD7sjtLOR5u0/Hgfg5FU1cE3oLdv6EbkXJij1lnwQf/jR7uHq1nQSJKkUpfcyMOMKWo1XhGC7U2BhIkYhbrRcwzVpHiCVrbEgK3WrWIC1KMC/Xzfqe19XtlOVPRU0she3B+FWnaU+Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764981174; c=relaxed/simple;
	bh=O72DDcUbKHLgjlMryn0TOozPT0ipfpcJFrtPGl3e2V8=;
	h=To:Subject:From:Message-Id:Date; b=JK6uSHYyFHoVfhw4ic5gkczGcP74UcWZvwlLnX4x5V2E1mhJjD6pVyCwA0ODBVYNWo3OE3NjuFmgxoXEZs+UnXsNtQ3grDzhPE939w/4RWWnhOpnAKc2759+jLeyrPsaXiKTTTj8yS8h/g1vHHmDosCxko4/IG8J2W7KxF237SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWpxxSvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWpxxSvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8557C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764981173;
	bh=O72DDcUbKHLgjlMryn0TOozPT0ipfpcJFrtPGl3e2V8=;
	h=To:Subject:From:Date:From;
	b=LWpxxSvtZo5iMuWrCcRMSgSZKLR0CGNQDrDSazxceDD4pxiW8HTIiBz4twy7DHsgK
	 CXYXxVFZXSvKjVmDrHKtqYCi9CSbMaV8tN+0Drk80F2fmIXkduopxdjOJiIQu3vhZj
	 Af1wPrtJwXZ4Vb5/kv4TYrf7fzMVdT2Sx2FDXiHfanDpJuTrwRQTbvA0J3bIunGuv+
	 r3/Tz45Re0kix6DhhuPRfO6bpcvZYGlDm29TlWwYKd/+9NgczPwnhIWUqceZTOYTrJ
	 UtkoytU0i6yuIuga2ftULr+dLxYPcn+TXtXz0EKTMc0HNSuRpP0LYxWlaG8gTHvdK8
	 ns9N9lf9yjN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AFCD3ABCC
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498117358.15537.6927116604117875892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae5f5e5e394dbcbaa9a361e85ea7d76062a88fceae6736cc3372083cd5eb8b2
Date: Sat, 06 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764981173
