Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D774A05EB
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767869634; cv=none; b=DXzSx0K7VcsX/bOIDcRkVhmEoGDJvttnh5MvCb7sDUMIuQ02LRjbSdmXRAzgVF38jymvmObdniF25QPgVHpfQgAkYRSGivJUCxxXjXUtwZQvJRx7so4fou0oyNTmFPDVGdhLUO7MrUT92LAhU88gCtZJdK80zxpBjILKm/4TYhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767869634; c=relaxed/simple;
	bh=ecE+9TbA7vYfqfC53K+j4T1QeyVf9tZZaT2Ntn0yXlQ=;
	h=To:Subject:From:Message-Id:Date; b=PFJ7BoIG0NM8N8rbWjJj1scG2cNflwxoUg51RB1G6/6AoWbjZE41sWmFVdC+kNAiBp7MmNXQM8W3CEc57NBk18EOtNuN7tNuqtpE+JmyZcrHmJ/A8PZZJWK/GBuhkce0zFIeM913ApVfSS+VJBBP0G/7RpyRG7Vg5Pf8mFxlvY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBEJaObp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBEJaObp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4B3C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767869633;
	bh=ecE+9TbA7vYfqfC53K+j4T1QeyVf9tZZaT2Ntn0yXlQ=;
	h=To:Subject:From:Date:From;
	b=aBEJaObpb3DUNl7Mvq0+gCvVCL/PtiBd3GkzXkkT1hktXtEt0fpVnqLPJo9UmlLrS
	 oogvcf3mGIe3xaTXIhg1hsU2v4WM5gcjGyNFYPlJGhi225Ig1OQyEj+plhx1Jlqc6N
	 TeO9tdwkua/Qn5gTs0PrpFYDNm8hAP9TIn+GyHDcC40WoymNZ8GqoW2GVpNOvem72t
	 Ev2sd6nkOLxZlA/gEplGTINiGBw+IsaVZfw7XPoQUhn+3U51hOQSP4JepUuHuVRuR9
	 YL30MENg2K7N1SrUZxDgFwkWMrrhtBcfSYaXnYfdgOHEx5Nf2fKQGgAK63ctxPIwai
	 R0Z/ip+gDb+gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE46D185CB
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786963358.31905.660566287826762526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e63656aedb8197b609e40b937550e1cea124738f221aaf8b8948ffa8e08d534
Date: Thu, 08 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767869633
