Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E2C19D8B2
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743848395; cv=none; b=RF/UyrrHs3pk3D9vSSCh0hOL57UCmvLMnrfBK30hr0Ep88gN/BIpifnml9rB9cqHgDmpGgBWGWKfak/jixxVxjVXkZAAX9LBraVLmUT5YjXI6cx8ekA01zTRt7lsxgHgHm8VFaazmwAaCjHxk1yd1ho1ZOnwgOLi5Vg3KL/aB7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743848395; c=relaxed/simple;
	bh=lp5GD9ZVWcUxbO//yngXumF69u/DIylJHFuly0dqI4s=;
	h=To:Subject:From:Message-Id:Date; b=OG2vdm9e+my1SyyCCY5tsqYxCfRG58p3iVFD9Fkaw7oXKUDRWsu43TZGWVzRs8Hr0h02Q07qmEtIep9wqp7er/6YUl2NWs42kKRJcPcjqzj+vSEhXPAXkcG7D54zC7ORCeSEJQ8JznaRTivmAzVvEXL4MU85zzcPtHOc1+eypmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBLA3hd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBLA3hd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B669BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743848393;
	bh=lp5GD9ZVWcUxbO//yngXumF69u/DIylJHFuly0dqI4s=;
	h=To:Subject:From:Date:From;
	b=MBLA3hd6Fpj1wTFY8nXG+fLWbFJEReTZsgcwOaSB7QEgKiHUyujMHE9bslGYgxgdx
	 K2+CBZHhtwrEWnsQK43PvuheEbayIH++3mn/klcvssbn3mHhdy0Xf3OsBdgfNN4/GC
	 00OYLRNg5+T5IO1VztfWIax4ocn2qfGkvPAw7cQSKI7RfzRDYTU6/DrwWLWsQJTdDG
	 Fa8KYtBK6Da82YkZROZQ7aqMGLW/MRTTawXM2OZZaVMHJK0RnEZCc3DoaQtimheGS/
	 YjBDPX8KdQLexPXTYjcbMzZJRgoPeRbSI5egZxdLlx9j4TGNmAaNq7T4IJN5H+P47m
	 QSHl207CoUWnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F92EC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384839361.21516.16907386724779562829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ba7731f4b5d1ff9030bd581a7321f7e157cd59ac925ed75742782506576405
Date: Sat, 05 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743848393
