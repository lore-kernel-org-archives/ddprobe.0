Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C15DA59
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749365994; cv=none; b=njrUW0ij+tSEOvM3PeOR1iZtZGM+O+Qt6/QiTOjwzf1VAKJGGWq8MbqylXT46mZrxyE2TlvMd3e4N+G2ByEsb6GTJdAGJ9F3sHgp3wgKl0zbxbknD2/1upXinoQoQBXS2kNRrUouc5nY4Q23Oj4dNLPyYqLr8J4nE0uAYdjEcbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749365994; c=relaxed/simple;
	bh=eKsTrIk6fS5ubchAytB96d1XI54rIVmegymhe74S9gs=;
	h=To:Subject:From:Message-Id:Date; b=LdDDAkgV3FSDpS2rLWQPxyXx/ZTkjsAGpFLlrU5JqoYWsqssi/KbRTqW5MVpdRVbl5TModTzjpBuIDbbX48ndjHpz/tYGvqt3WzJa1xWbedtpLwWMME/PQtfltZXzgdWZpWmFbZhb9GCaPddD+jn3a8DtY6bd1cMz2f6K1kT1aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW7J4Nka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW7J4Nka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7402C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749365993;
	bh=eKsTrIk6fS5ubchAytB96d1XI54rIVmegymhe74S9gs=;
	h=To:Subject:From:Date:From;
	b=DW7J4NkauBwUAevcRShaicDo8zH1EMj8sBRDLsmRKrVawtOQ8tblI17Onc4LU80iA
	 THu0kv2dapxmkfSZakprG0CpAFIRKK00WH/gnZTJhBmDoPGn4t+pRZn8WbfZ2EOo6O
	 ySoXWg05coT39f4GilkEYw+vZoaaD6bz8rqgOZMTObFw2yV6hVSZosopaagj31tqnJ
	 xxyuVjFGyui1a9uJudW5EKpzalfdPFDZkdGgpUq40SFXwT7IDODLDZEC0mkRjsoNBS
	 aSbqgTRjt7nyodFjA0TYSirh3vL5rEhifto4t+VJXZ8KcCN6gnfEcvVldF6yuPySRl
	 KS06oQTyFEZ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92316C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936599357.17617.12314985265372383066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f1d0b526b9466b16efb04dcccc3c0521212d3843d972097be764fada565ae4
Date: Sun, 08 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749365993
