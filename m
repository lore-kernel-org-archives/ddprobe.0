Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0B758104
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708409897; cv=none; b=EykipItohExYMKQwFEwJiW9NJub2kBIjMNOHv8h9/XPmoDnBGaS7D+esQA568jjyZdJTpxvxyxkstEGxKBro9Ow03jT6m7wHLVpm6ds0h6epSrvA9J37asqxMyy4W0nd/bfM5EBv+s2SfeRnO51c63JHHttE0G7ECX/juhjCEiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708409897; c=relaxed/simple;
	bh=2bRX1Y8CaKFihAOZIHYLtGcYuWaWA8uvTLxgSglffi0=;
	h=To:Subject:From:Message-Id:Date; b=RTSnkMcaCjEQJsXvC0mMuU4L5tRYwz0M8zo2IlJFEaEYoGVcTBRi2F52KDo7fVgffOueqNAADEItnlOyX/33D1dbh9nBFGXRU/RK3DnI+TSxvEeODq8owKzwl4OJ7SvKGR05CZ8MgjvtwNCjwYkrXf+vxq2W2ktXSgG3D3WmfhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRDqW1qC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRDqW1qC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A361C433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708409896;
	bh=2bRX1Y8CaKFihAOZIHYLtGcYuWaWA8uvTLxgSglffi0=;
	h=To:Subject:From:Date:From;
	b=jRDqW1qCjPyQmpPd1T8MttE3+SlA1o2rts0gfFqTHKmTeF7GU+fENqXZNYhNaNwlG
	 y88wLmp9gZQbMd0rOWdp7/wK+gPeAN343ou0OV4cYXHYL6LYgIur02v3Ljb9O1ESGI
	 zsoOVVKhI1CDc4eR+gj3Q9i937wMRj2uWkgufdOeJUJp/E6hw7nPDvrN4YfOG/jC/t
	 vpG4FJF2VWW+7rYN/6TGD7sdHyanS1seP/Uy+PTJVEGw2u3vo8lCOdJ5OFGVnCLuvf
	 XBGBerB8nJ5X8Kg2O65fCtCRdB8zh/AoYdCOb8S9X1gzkXC8sPVdEI9tzQLKkwvios
	 Hpc8Bn+ELg4JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F540C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170840989644.8255.3791095258887514749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dceb4b6265b296ecb2c1fe5103314bf5af1cc6d69a9439f105693d3f0850aad6
Date: Tue, 20 Feb 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708409896
