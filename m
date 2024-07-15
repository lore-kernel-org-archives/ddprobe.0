Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1A928FA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 05:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721021003; cv=none; b=tWa5JL9esJAGVW+OTTeFlIxF5HXqUpVcb5vY71Bkzpgq8F60nIB+Gaaiax1selaVmYg3KkYjmG6Nc8BsmIdu845o5CGLWUHxJStN3CUCmH7A0tfjnN/kCf07f3AEMcUcyYOD2DKSE4/8S47t1i1HNlYulr4Ec+3xkmHyx/KzUDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721021003; c=relaxed/simple;
	bh=LvO39F+1w3v6UADpZIu3cIQHJEug/eqKZ+DiBa9cnBg=;
	h=To:Subject:From:Message-Id:Date; b=ocO26DXKq7BAjiViiP4W1v5YY25tpFbjxxDpl9YiD6j0QoUgG/mfGZwmgUdloNtoety8CpUWFiVGqzsFPTq4hXdHmYyPh0V0Uea5EnSNtV/QvJwtd5GyCeBuT+2liwWRYhny058vv7YfTq1u74lbJ6kpg1vx34L9ft37goRbN2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSZv8WEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSZv8WEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09B61C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 05:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721021003;
	bh=LvO39F+1w3v6UADpZIu3cIQHJEug/eqKZ+DiBa9cnBg=;
	h=To:Subject:From:Date:From;
	b=pSZv8WEgZZiZ7Nstso0jCjUGtEVu9awefg1q63QC6T2LE91DGS5ETxnaOb9x7Vk2h
	 ZRonripQyZ9Qjpq405dbkFT0Irp0eijMllnUG1Ckz2zNci+IFIOMOTXh0qkp8GZyPL
	 gBDghYeMzWUS0TXSlZ+BaiPIUrJHdm5Hweqsb6lI4SFYDtuD3r8cGdyTGGrhL+/Ub6
	 KtoD+J8yW641W9YhXhV/4AQV0qcWKNJyO+brkEZCvg/nIhHqHOTxHvIBWyt5IagP+5
	 I5bXcvgK+49AJqQinJjKx5iuKEeWxTRVwOcvwaeIrIFp6IVIkgoTZ7A0pyitZHwajW
	 I1HBU+8PZUbUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DED6CC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 05:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172102100289.24779.3482336812146261896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea68627c3d63a6b8cb4473816a03958e2ff0b02c75599060c9b88b5c10146a1
Date: Mon, 15 Jul 2024 05:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721021002
