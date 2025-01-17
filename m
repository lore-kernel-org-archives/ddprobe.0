Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEF1149C55
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737148554; cv=none; b=YTgLcGEXXnkb0NJ32Bj4sx+hXA+exONzpuH88FheVLOhl30d3TXkDjjUgoyjLdsAcsIqUHN0yc1Psp3Jh8x3fqQCK7c1XDzeQo3ONwQ03jtcwBoVFmjr6kKy9XFi/FZdxkgSe1nmxAhjSMFTzwNQQEDjEJeeYF/AA2G/IZDd6W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737148554; c=relaxed/simple;
	bh=id1//zPlCUt2wIq3lp8E14i/YxCS5RiNFHG1Mw8u7fI=;
	h=To:Subject:From:Message-Id:Date; b=NcGUWc7ytfLzhF11NCGBHq4jzKgfzP3AGlKbSliddgHsnX+SDiQj7XfggxfOJjsN5EfHSlB+foaC1QWW44ZItJXJrj33SSbQuNImRjLxqOGSQKFfO1bVGV3nQ5ki8HAFh79spVL6WP56PnMbXAIUD7uG9Wp8UYbXeFQOOpQUmb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgCu1ijZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgCu1ijZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF79C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737148553;
	bh=id1//zPlCUt2wIq3lp8E14i/YxCS5RiNFHG1Mw8u7fI=;
	h=To:Subject:From:Date:From;
	b=MgCu1ijZHNzFgfIO2klelS9/cMuSZZdGKBcjoqbdzeaEzFCHqPdzKyrVsD9CDvJ0J
	 5ohtrQ2icmZ89tuNN4wZ7aeBFLDyzOs+/baf4dOfSZVNwwkxdYMmkdofSXFNlwjOty
	 elzAivhNWe78+rZw+amPy0nj5e/2BSTJyM/DbG17+sNs7vOIp3R1bgeDJjmELiNIyh
	 vNPDI1XDPWSKq0SKqeQSBs6VcNwkocpHACBnsx4HfFoQGifcT+R1AVA5ZZQrSimNE6
	 u0liSkII6XRmLdABCUZqXq8J/5Zyc9rZ2rNPNi7bB9oKiXmjVHUs7dPiQ6qrDV9+SN
	 2wBkahXQ6K4Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900AAC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714855358.14098.3751947154172629120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc757e8e8cfc4be56124799c297cda7a0d47f7c564516f8ae177ed862d083520
Date: Fri, 17 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737148553
