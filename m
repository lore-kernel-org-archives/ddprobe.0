Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DA52CA9
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750000194; cv=none; b=mHxB6eFjqBSbBcaJqtuLMSMULb88Nr9Q9XEFxlEeYIwbbcIycN2v0SZ1b4Ze0GpwZ26s3YMiZyYI0WM17U682lsysnKz+o5/migCsQlTUUzopZHWiXs0+XOzNmP3Au9gKcARhPLYEUdldkafBwMERpga5+sW5+NBDz79cnJ170E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750000194; c=relaxed/simple;
	bh=oSsdmgUetXSkj15qEEjcZ0yoIyuv8nuAYqwiGYD0720=;
	h=To:Subject:From:Message-Id:Date; b=nGdeHWDXLKyfAXMvSUFEgclKZa0G7qBsc5RkuA18lu9/GU21Uclk7ytFr3Be49dZE3upMHrvX9X+J5V2o/HFmeDacaPHR8HhbsNNYPo0zNleauatLaqdyXV82Kie94pRAaWNSHeGwKIcSXRlpvyVFlMPEaT4Ek17Ssh+iddXwo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcRP8YYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcRP8YYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8906C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750000193;
	bh=oSsdmgUetXSkj15qEEjcZ0yoIyuv8nuAYqwiGYD0720=;
	h=To:Subject:From:Date:From;
	b=LcRP8YYPxBlMV9BekfTcDRSGFUU6GbDOt2xML9cP6++N458BcmWr7rdBGLW2jrR2L
	 HWcDvb4jd5pJE/hrVFq7Ol71FWofdcKhVmJ6Q/+oM53PZld2cxY/+Jxh2ZC7UCRLEO
	 HtZq3N93W6s5DgBDYDKUZrBo/LX/4HQwfqZNWG8mKqfAev3Xx02o+dLb8vxnNeLO5r
	 09VlCqrUstlIhNkRPltW2W5w7VhyxkQ28WMiFnX/7sk1slsuXD0wezkhcHYKbWw2/9
	 tY1+ZcjKeHKKhEwSBNtlDKmfzPB8WCdw2dEkRgvMPjZdSViiu2sORxz5pQxPKafc57
	 9Kz1Hh5Myu48w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A21C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000019359.32518.4357641571156703155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649b1badce88a462ea63da3289fd7a1b6f46a8ff8fc85f89d4dd78fed5605230
Date: Sun, 15 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750000193
