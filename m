Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ABE1B5813
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725038154; cv=none; b=LffltawMlK7nw7DUB2wZNG38kgF5l4iBTmwPbXDPkLFSYsJXC3ynJpesY+Pl9AzpUhs/npCrq/3ejKAcaJuPAQDvAC4vZhN5DMVt+OPOrud3xyxCRTBQKvaaZ4gJfFpnyubhd35gma9Tl6ctFmSQvHgngGkCS3hfsqQWSyuQdnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725038154; c=relaxed/simple;
	bh=i1nbgOUQvRsmK7pec72HSw8x/zH1C5QWUJ/w5erECHY=;
	h=To:Subject:From:Message-Id:Date; b=UNmy4Vu3aoIzoGBbWgkJrBHZSjqL/WCUDl4jV87zUEXvtxjVIpWPN6dZdsyOZFqjTcR7l5ORRFK5u2ZyjC1H8gwI9X6jd6GHr+Y6vbf7IiJsuqrc9Vbh/t7CfPT3g9pvjPseS5Q14aOYALpm8zXyIiq0qOU8p5fZO68MgRH0czM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRL5EpoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRL5EpoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F7CC4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725038153;
	bh=i1nbgOUQvRsmK7pec72HSw8x/zH1C5QWUJ/w5erECHY=;
	h=To:Subject:From:Date:From;
	b=TRL5EpoTjsuxNCiyqEohaj+NgfnKtagssBA29umaM56xz0U2WZZgZvof9uW2BYAbT
	 3I3AgpfyNQneorBQ9nE9x/pzYeeXSZSBhgM4gWfz0tHDcQhVJFz64xl+flK+zV7Tqs
	 fgXI46d71FQSGHPEMj33fjgeXGTt8swYwrkSuVfjwyXtHGFhHflas3j73nt2Y0Ie9B
	 +1xzvUA5oc7aytUV/kIqQ3Cpco8Tj6gXH4/5gMZe1l3CeEABWauGYIOZUsrrAY3a3K
	 FJPCyU+dxkRATy6Gn0qDKmOVb0BFjq+gYRH3cJmQRmyd/9qH5EC22zeQ9nM7Zrrkn6
	 LrZeevSVt5UzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF7CA0EFD
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172503815358.22171.12299615491081365458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897b890f14c5ec3ab77f6eb322bcfa547209ebabeef247ff59edc73eb712432a
Date: Fri, 30 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725038153
