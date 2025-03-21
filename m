Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57844C85
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742521793; cv=none; b=rCzsy/Mebgwy+/6VZKv33wXgYEZqsBdJWpcjvi5JrzDyfHFXdv0TcCKFzdN6sbC9VcmoEQQGSZ2kNnqa7qvvICSvoGXGdDNXnmVwfLMpzutSKHHeyz64yh5/nsCbvugUcLX/nuWse93Slrw0M0ge47JZFYyG6OtY3yhLv67W674=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742521793; c=relaxed/simple;
	bh=SZuEIJOFEdg1D9b/Tqg+xOSkJIV/ZhXqjH7Z2P0rKBw=;
	h=To:Subject:From:Message-Id:Date; b=UbIzQRcj7b2501kIVxdZ2UJR1avRcwA0zXbhmwk9ESTcuDXhbKSL9j8pnYoaJ1Yp7UQCkvajnmkUbkaYQs/FA1gwOweN2P2gKCMgSJMRSb1nTXvQeIXMCpHIGHYcigt2pD7K2pMTjd7zdLG5v82xLfYB4tuolQlmgTeWdnhEnkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUknitO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUknitO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A19C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742521793;
	bh=SZuEIJOFEdg1D9b/Tqg+xOSkJIV/ZhXqjH7Z2P0rKBw=;
	h=To:Subject:From:Date:From;
	b=EUknitO3SwERL37o2naHBtNvdLgTATfwPuOcDSc4mwCHL/J/GSLo+jny6jGWVPHRi
	 oiuWiraM/8UY0IaDrmgWJenBVMI9BNTbm3g3umFYe6V2IvoUS44cFZMG46yVA/3JhC
	 HGbPidizQ/+7wSK968OWxbpviGzxWxQYLSAPiYRkl2edf6EDJfsKDJIZiVwqfNmORL
	 MeX3TI4IA2pBJGj/Qsy3cNZ1BXiI4mmGcFwPDyelaKjTDo4NY1vhx0m5FuCNSmGfjT
	 wk8DcaoSJ7435py18y5gC9kz1A1ebT7miNSkAsrdKPNd5voHwH6sQZQPJsBh62LJet
	 BVwLHup+nL93g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37FC28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252179357.22436.7666557227992758047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a4787963576b638a637ef8263a8a0ee2aa04e4ca54f660404ccf884d44a0e3
Date: Fri, 21 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742521793
