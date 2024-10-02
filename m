Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF012F24
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727838354; cv=none; b=CD8tXH0PNrU7LujI+pYTZRP/W+Q0QmDJgkabJ4eXk7Rc8mHB5xOlUdQGhDXryO8Lj2hb2amU/WMCpMxse7jCBc/B4Oy2kJr0NUN3plm6SObnDf+2AStdkf38JYY5dXj7PGpf7+J5K4PgmdIYf6JDmwK0VO49GbSHOAov9NQAyrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727838354; c=relaxed/simple;
	bh=t2f7PT30D1kx5MO3uM5TnADVoiJxt+wUII+tPE9OYY8=;
	h=To:Subject:From:Message-Id:Date; b=sKM7SkB1xYb/L2330eKCS0ucGH+J90bVbH2bw1oRfwRK4y1HwXpTqNc1YOBbw79lh0wZaIVWpgun52SWEq/j2T4AA+2jkLFM4heb8jcGdKYNtwS6QMlclb5cyjrUemc7BRSfIuxrMphlNmhnsQWdEDrQ/JpljrMaKTed38+7HV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBSOXufd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBSOXufd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0DBC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727838353;
	bh=t2f7PT30D1kx5MO3uM5TnADVoiJxt+wUII+tPE9OYY8=;
	h=To:Subject:From:Date:From;
	b=kBSOXufdPcHiH6LWJCkhX4MPk8bf1ICWPWjJ9bewFkF34RFnEUChqtxav3l4CBQ7s
	 xvPc9otobElzmWmKySz+gxRDF4n2EVrmAf82naxxqmuyC0wJANj9Wk5L6mDeCtt1Wc
	 kQEc555qMSfpnNDEaSH2jdpv99AiuNMKTmoWgrrlIiyb59qkCQmoTIt+6zY6cTzIt3
	 AYZv37kYwUuli1wMUdBv1q6R1py0ACf98npGZ0JavGJ8QkVgpeGoeEOS+jH7Nilkag
	 6/aUk/bL9Kd/Bi8txsvNqT3ryKzUvV5tczyamEUVBEU5EMoEhTLPQKBaLg4RHpC/fw
	 oiMOrWvvcWvXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E15CF318F
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783835370.22271.12123188673420665937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415a55c3ab6312db53531ad0ca5186ef593c6ce18454eb94f7f2890f8f181638
Date: Wed, 02 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727838353
