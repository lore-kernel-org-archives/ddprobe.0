Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159831F03EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769912034; cv=none; b=jGrzl4vKiTFdXVNEWXtdmCU2c/0OJH4efoJa2Edg5ejWcg5UNj6Ja8JYIv8re4XdP1y1FX27y8eOL1Y3rdwKsBaEVPGa86PQIoG5+aL6LUyfKRwowT2QaMIubBvTiZmhJ0TUl2zfXdu37zxNUWrNkLfiCTsNM0PVCkIyLewI0n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769912034; c=relaxed/simple;
	bh=1+1Yy8eM//RisHejN+OrU1Z2JwJ1oAnaXC7FWeaecxc=;
	h=To:Subject:From:Message-Id:Date; b=k6cul95l1STXCHmqi7hWNzZ5pdZfgjia9PoX1j/5IWT/xMmkcyesBsB4IYR0302kF1h7x294rTc0q3tz4ZWX4XBinc+4rCUTyzWvM7MKedJLWEirRmoSDDd6bLgHdBT6Z0tpaXq+1I1N9WBESNEvyWPcySTkyIHeV1URrjFZ9Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiryA4nK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiryA4nK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FFDC16AAE
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769912033;
	bh=1+1Yy8eM//RisHejN+OrU1Z2JwJ1oAnaXC7FWeaecxc=;
	h=To:Subject:From:Date:From;
	b=CiryA4nKGahX5NCom9bR04pL/jQ+WQwveZC0BMLoqSjVMVgaNz3lcO9M56xs55voW
	 ydkMa8nFL8FvChxDlVBMfsaVN3aBaE26igTZbWqY4wqOWjxMd8h7EVWbE6evdjs/Nw
	 J2HypbB8aSEXPspCeVLlTWHL8IhxkEsfb7kppcAQbPpDVW4akDHclw8SYk1TqyTbUg
	 /GX7bkybI8VkucA+O70AIL3Y/qtdtAfNODn1wPMaqw5ieWzh24aOopAc3sVjimmeuN
	 CTUHxBcgR+YrZe9tomuogcGEFEzc5HahSKcptuLyjsbkLB07FwiVnVyH3XxcC3S7Rs
	 GrznJstrW/Ikw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A8E7C6F9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991203357.11752.7483280986257436186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303f6fac2c4e754a6e9e3b1abdbdbddc3cb505d31e79930a3ccf185af09e4a62
Date: Sun, 01 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769912033
