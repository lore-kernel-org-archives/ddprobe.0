Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C6C221FC3
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757004594; cv=none; b=Q6h3x6f8XbtmbQ2hPllcvz77rx+tk0u469jdkKN2lk5p5ApbaxWOfoJqb3W/ubo62LRiB7oKrvWSc9D2NrrtTZ6EjtiGZk+xI2ghYUcE4civXPMaDGQ1Lvcyngl1XlU9Zb2hNVlhG5CGuJc+idfmbGVRzaxQ0H5I2Zuox1bVWCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757004594; c=relaxed/simple;
	bh=mfnipSSGgKNI/6Kq6XnQoG6KCXXF+II/y3gnYn+ob60=;
	h=To:Subject:From:Message-Id:Date; b=umq6exrpsjKt1Qg+sbDSbw/JHniiz1FqTg9IvcfkX8NsQd34x3kQrEXN+Yi/+TmwU90QmrSVc6lb07xeMbIucKnIS+0sBVIxZMjY1Xx81adl3MUtqv7HlfqvP8q+sq/zKb5KkZXoMOaba4cpZdyssfvpkjTwmhJ49EDyynjGZAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbrNztNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbrNztNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A339AC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757004593;
	bh=mfnipSSGgKNI/6Kq6XnQoG6KCXXF+II/y3gnYn+ob60=;
	h=To:Subject:From:Date:From;
	b=SbrNztNx62didMgSCt3dCn7RUeo+ijpDwRrNeGox5wDBLCozMYBqxolrUiBvVzJvt
	 +FGW1ZQjTxLDVGNjvaOHAwCMLY5CMEFp8QvwwBjvlU5/SAiCTzJBrDayy2cBTeXKxB
	 utAFNgamPHfuXI1+SFPpJ1M0sgvceFuNTdviIZrGg2XeGe6YROeQ/fec3u9YWSsM5E
	 IP/I+uYlvpK1oK/e6Df9l6Ik+tHxK1JrkoRpjN1K0LeXLbxj7tKcJrKsuGDO5q9RlV
	 Y3rbeUhy1fgbI7MxQ3uazrjG/ESpgdwDjB2Hj/8WKrc+6TSXKNuAzrqXfrxKKvgy1S
	 YNgNp9rHz886Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F122CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700459357.27554.12118759253652422470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73f07f7e3d10af5ec244e8443798b10d3b18a87c4dbf8435a408b92781ab2d7
Date: Thu, 04 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757004593
