Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB5244C678
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790202634; cv=none; b=BoD6SNKC5eTUZVZhLwzPohlqr6F1xktWN/DAbrD26LdhOSwnjpY2xAUS0+b+IV4dB+76I/5ss/r2KLQas8zDlsfxeNM3y79T05sjKwMMzux749tJY+PZDtvUpVTJFGVNhZ+wcppL9QbkWKeDsoO6cmg+OFBc1ryaCAPyqxKboFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790202634; c=relaxed/simple;
	bh=UckfIuaoW5RTnVuQyEyIpW1IFRpGM6rR8uRxqhYelE4=;
	h=To:Subject:From:Message-Id:Date; b=n5dWdRChPXdTN/pXHhXXKX5CdBAv3fMzq1fhmu1uVLv8bGsDREal2UhFUtfbvCBT8ru9qSp0PFDz8hkjFimAA6l/eWHwRjA2ZyjPQr0J5KM4ZXIQnr5rzP1YNmElr3zw5SfYRvNJ7jfsuRocQuoo+CPn4pEw4EXJzjN1vLtkBA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lc8KQL+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lc8KQL+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6EFC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790202633;
	bh=UckfIuaoW5RTnVuQyEyIpW1IFRpGM6rR8uRxqhYelE4=;
	h=To:Subject:From:Date:From;
	b=lc8KQL+RGxz0YZMuLa2NXajkS0koi8oQgTqqHlEriQLICuQafc/+pIID6ugIlxg7g
	 mLmFy7MsVjSTc4M1O27iYFgq9X1Vr3HxUWNAZjXq3rw5FvzkER2FCOc7bH8McAmHwq
	 gIajndQ+pQAU1m9EK3GeKXyvMmaHfmffUVBYsBFxvt385GHx6tsR9ByqFNz9UNADuA
	 chcOZb7IP9+2SflrlhDlCE/aS37qdc3jZ+JPsctIojgAaJvsivsARiO42bcLLlS4TJ
	 oWTq6ixWkVR/M5nota3zs9FoFZq+rRFqog2sIIiexcSLYg1X00cdDa71RfYXSTH1Sx
	 /DBTkh2hJlVxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1376C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020263371.3893.4388430400554720784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5316d68907f3ec6f9fecd39e391e8b2ae56eaa9919bd75a2f7e9a35fd7200445
Date: Wed, 23 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790202633
