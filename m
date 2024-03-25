Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB41713B2BA
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711331896; cv=none; b=eTcBBE7ULoFFxidhfHkkbDB6EK68pX/rZGii4Seeypr2QC8i+5JohMLihmQecFPrUsoq52cITwznn3xJlzDs3XHYubw69SPgvjQHktDZkzWKzabKn51wnjoEvHB17sqp5E2Fzv15+Muj2eBo5jwTyBvnU77kYizJbhYAblHMYdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711331896; c=relaxed/simple;
	bh=IaV1JEBQnABObhxAU7XUv/Iz7AYbXHucdrRssWqy2c8=;
	h=To:Subject:From:Message-Id:Date; b=YuG8zlgfQet3T+z8wN/RwOTHK661pACiZ7Hro05Pn08SLWRgHo45pw7J6yFcuLT+WXilDAAthhWQMTzZ5RRJQYMT1HyrzjhaCWrPv/sK7ijx516scc0CS+fq2p92R67RBbWevLoEwbnQQL+KUWw/HBTKCyD6J68aaG0a6au4i0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjVTT8Wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjVTT8Wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83331C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711331896;
	bh=IaV1JEBQnABObhxAU7XUv/Iz7AYbXHucdrRssWqy2c8=;
	h=To:Subject:From:Date:From;
	b=jjVTT8Wm4FoMxkQCa1vqEIGjUSY8hBTpBKg8JpkvaJ2Q3FqBHZuNLCkpLxCy0vqVW
	 9duDVvUHY1raYCOkKdU1tjsae/sYlwgVOhPPQkeArjjmhlaJHdm8KmHFxozTfziE4E
	 zwCGy+EoSFtJvnDnsFWIhVl03Q0x1i1uJ6qK9UthmYsjj4ZEzCEwcMoBKJGuVgTvae
	 xXuZU1Gf5U3JuhOCWmjy+9dLWNhSAl9wtOmhRYIdN5EfAVUrE00OkWUZ/0+Y+kdqbj
	 JvynZ3I9mIqWZ60ybma1jjs/JyoL2gZ1ncwhvJLqFHI10wBLSLhpQ8WgU1PuGqyKuT
	 viuLpEzyOOJLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E19DC54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171133189644.342.17671050327943047896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79b0387c66d420c8a00ff6ad80513bfb89b6894d9eec3a3408598666660756c
Date: Mon, 25 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711331896
