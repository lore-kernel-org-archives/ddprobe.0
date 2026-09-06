Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2402255F2D
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788654634; cv=none; b=kePKYM9iZfBkyJi2pwj5wju8dBTaKE+tydPh+y2Ifkygy6J7347QCA2/nimsfTFGe329aqodyBLLwxBgzCaLD6T2pyNJKdwbEyjVLXJ58v98/cpg2/eaIScBc6Gl1PRPiQ0e0tfZaoQkA7IwT852PF0Q7s5p/urp88BiZiZOy+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788654634; c=relaxed/simple;
	bh=o3B0Q5xzqTYJVF8kEp4qT2Rg8St9FHHk6tnZSNSvxWw=;
	h=To:Subject:From:Message-Id:Date; b=O0BLyJ6rQx4rUZXahDClr92IyD9njEUho6/6Xev/k/Vxa7Tm99imuEohGFU9BugoAFf9AkA1w1ypyNYKtYD3Gh2VSIn53bp+wszSKRdvW1Xhn2oUsRYjwTMtge/8UTWZ3nHplzn61tKBB3Nmdg3/QGofTnaHeof2vJ6fQ1Y448A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd+FtEnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd+FtEnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D312FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788654633;
	bh=o3B0Q5xzqTYJVF8kEp4qT2Rg8St9FHHk6tnZSNSvxWw=;
	h=To:Subject:From:Date:From;
	b=Nd+FtEnVYcBR9+L4w3SoxgnJUsypWNWoRN5M2jZv6LmXWKR2tRF+jB1sbz2k3SNt5
	 oZOEnFN8I2HTQFIGTW/l5vcvwh4jwRUrA73HGm+iZyY+Lu1pjx+Buyl8bo3NzjA/dJ
	 Oq7bY58l2M3ra42lOTRQO+fcEuvgzsfreB6RYjxH0v+W+jE9838jrjJ3MDqjTXLem+
	 /sA30sSNkFq+ktduIxne9yOt8WhUcyl/9m3wsMQAmGzWlkl+UI/sp0GB2F7LZk2fqb
	 umaEJ2WScqUlGaaKAo4wKIqaOcmhBa0ThWyp2p/ZcxNt+h6T7KWLmQ+jIjSLwcuuUt
	 Acn89deCus8Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1A8C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865463368.5927.16311455999179759971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626870a61a83693c4dbb736c7f5d179f5fbb80d514e02c866361e426cb3854ab
Date: Sun, 06 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788654633
