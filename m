Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4091D1D514F
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745735995; cv=none; b=WhNxNFtMTsaLNq+iE3F2WWIeGHs21DDl3KZzapX3QQa8d8jMTN439PpMqg8A/jW+gVFAbxYIO28EPIAjflAHTeIekPMp4/FHfzwkPtxshURXPllSLwabNxyCpTIVS4qrDsQLIWlGfJy1i3LKBt8tCpyHAsgkGGOq33ytYa28V1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745735995; c=relaxed/simple;
	bh=Yx8XNuky+GzTLAvo5x6XaR86p0eyXJMZy/aJiOgc+GE=;
	h=To:Subject:From:Message-Id:Date; b=WJx132MZ0MwMhdCUKZ5cpNf8ycpTY+bZrzlFoKU+LbW51SqQ52KzMOTP+ZzeVzqUEpbiZaGf8XRqy3XAV7g5DkWMHMVuH5siBPeYquMx7CDrv93pcZKfiSJRpGBYy+0sPJMWJVA2YS1pddyQbnBZJOQpcqbR+8sgXFsKQ6jGZOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Otckz/RT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Otckz/RT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A308FC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745735993;
	bh=Yx8XNuky+GzTLAvo5x6XaR86p0eyXJMZy/aJiOgc+GE=;
	h=To:Subject:From:Date:From;
	b=Otckz/RTjyySAuMk+SedC+15ZKnzkoTvGilrmrXmQaYWwBkQnKzHiCqWA8rD+aZ26
	 RlIwJUDaW7er8jYj+hDoFRc7Ptg1jEzZjUO/GvgxZdvuiGzRgKaDwaAVMl9TiLADob
	 wCpWwsOrjE7boHiwVUgCaF2qrf96UN3zTJGunPWTQ1peS8ToZhCGQjLID2NDs16qoz
	 m1aSnuhlpIH3ZLQBH8CXloa/NkEywrPGd+XB78bR2tJyuupxwlhOnVnM/SpDg8ecfB
	 uP/Sc4GyraiI1woYBy0GkYOOavAKqQonPweUfE3uyJpnYrDqyAcJidtZjz8NOjfp+c
	 jPh0DKUeRCUvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A3C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573599359.31827.7661747489352599948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d55e00ddfa1e037dc3d744b7a6b3b9426a978655d7087c6a92f0334f9d36fb
Date: Sun, 27 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745735993
