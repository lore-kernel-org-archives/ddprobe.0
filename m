Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4B53537F7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792240234; cv=none; b=jGDu1cNYXKuz64qMkWAPqoryc/z+OB3PJhYOFgIe1APj1H9PapcFG3iiQ9Bks+5bHQFlhg1JHirF+CGFklH2uRt5q3W5cFUwMK55UgYlZfC9V/ikWa6KSKXKrR7PMgNr+7dSLgUOfvfislWK5XQ7jJFubt4AusKmg8x5YN1Ngo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792240234; c=relaxed/simple;
	bh=LQL/oT7JBmZYd/KciLWh5Wx1VnwaUguwmaibh1D6+40=;
	h=To:Subject:From:Message-Id:Date; b=Tuh6P2P1Jd3AE85pw8R63Lu1HurIU2Qok7YS8NRObOC6pTFDNaiPNtyjVpw21FNvrnUgwyrzTc7XK1D+uTb0qA5ber6e+cCa1TY55rufW7KRo91lm2M+FrCpIl4qb7vyZOIo1On4ygr0+RW6YGe1J+MCxRcl/fW5rTozppYquGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwYfp8Fz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwYfp8Fz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64E9C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792240233;
	bh=LQL/oT7JBmZYd/KciLWh5Wx1VnwaUguwmaibh1D6+40=;
	h=To:Subject:From:Date:From;
	b=OwYfp8FzquubKQbcYdfKp3S70ogHuqEu8kjFW85EqgkZQ0O9JkA/ymuQdEgZJTCmP
	 xawOVad45Uka9WWFkiNjJj/xohjl3TndySSOlb0raW5QensOJORTmg9s8elOnLc0Mi
	 UbXCHO45YoD0Z8UPgaoaMm8G5pQpA9Neu6tRyGGZyR8VVooVekphQwlprThqN59JTP
	 ZGDi2HGUw87vSLY6ZlCesYrADOd9Jx46ySMc0Rk5HXn9wokHNYgB3ri7XrEhnsGHDE
	 1dYXN4CtBoFVtG8UgT5r4HHuVwWcdhn1Q92qD4m2CvVEZ8G2PBb/ob/ecXMgWSPQ0N
	 izcRczOyjSlLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB965CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224023375.23755.1454359504802813567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0641805dea7a9a845e642f87646eacb70e5e9f63de0d5da739bd8a350d9b305c
Date: Sat, 17 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792240233
