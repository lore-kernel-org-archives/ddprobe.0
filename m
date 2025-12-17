Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F1C33065C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765954434; cv=none; b=YnCwsWfAu5EjF23JKtl0wl2HDj0J4c1CnMNvL1uZOiLYYbpk87ftkkjUnhGH5smFMXTaGi1lG7l4dmGqjrlNy/0tP0lDcby8MN1J85N/Rdb+6wVN6StRLOYnXynlqTNkvz70ug8EMnh3E9VH+Vp7pU22zVr+wxb2lYSyLwAcSRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765954434; c=relaxed/simple;
	bh=vIUhI12KaeiExMR009FC0abugRN5OZfFybQmoeZjEDQ=;
	h=To:Subject:From:Message-Id:Date; b=czj9dozUdd1XQ0FYs9HQ48YZ6SaU7fuIixcssQSRLyXdnBgP6as8ONHVgXM2XSFG9Y52kdhuB9pjo1r5b/CJEdrD5mC6PAsmA6bDqbE1pCPjqYPHKJzgruGr//NFQvEbIG//+VGi9Z+kmH6aLJ85/JSPyzU/ICM/9wpvcdxZpio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5F5b8Ml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5F5b8Ml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F25C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765954433;
	bh=vIUhI12KaeiExMR009FC0abugRN5OZfFybQmoeZjEDQ=;
	h=To:Subject:From:Date:From;
	b=Z5F5b8MlKG0NaMLG8X045iPBHAtLbxD/ujwtuBmQCO3L7e+V6j9Haq1rr0RhR15H1
	 zlMjdkuYDJ80evhaf7KBVkgwLdg7y86k1oZbF+xk1CnUMYyg8ThJQxlbTjh277n0oT
	 5QG7h6q//dvFFY6TwudbhxWjJbBLT8drpAFUoo1Gt3XQ+UqBYNE5cKDLDhxobte6g/
	 aqZQCTov3xx/7b+FoOinhdfMlAM/6ou+QQiUr7UgfBfJ36oFqyqLE+/UM6yLNx6lCh
	 J3d9qRzkrEknsToewK/ugUpHWyWm1eCIyGuz4mlt+UleNtQHLVkQNaItYgwDkwdbis
	 dOKwwKZJYIXAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B3D6407C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595443358.2556.14866109558755878260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449f3c7350f3ffdc8ec6875cba6024a241c3bbfd31eb064f3b8ba5b220539610
Date: Wed, 17 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765954433
