Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315F8316189
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776411454; cv=none; b=e7r0FE/TPtE7KKoCam5ydppkyBkw/McN8KiytMc6H++CiOsMwQatKZyCPW3m0f/7okqnJfAhAmOQwA3FQKqP4koH+ZoZf8Zvv1E6Aun5a6dIXcyryzKtj+oCRKAR97pk1y6EtOT8ort4/kphOWy7HU3R0FnCk1TAw1n3iwcldzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776411454; c=relaxed/simple;
	bh=Gy4fmO1CFo2MEmnTSImAZIOSIhhhh4JjQibXUHk78eo=;
	h=To:Subject:From:Message-Id:Date; b=iOX/who0DB0qH1uFe4bjz1T97b5/+3t5PXf1vJKTC5oR37FKBIoER3QRuPrc4ya6q0El5f75edxTHMcbDxoOk5WNPeD3Ftf5Rebx+JlCfJjqFMveeimcBwkwiSSqK/u/DY/D1J6y+FtkAuli1NMDbgY0NBQqthPide6WxfZJ8Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUZyw1xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUZyw1xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB858C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776411453;
	bh=Gy4fmO1CFo2MEmnTSImAZIOSIhhhh4JjQibXUHk78eo=;
	h=To:Subject:From:Date:From;
	b=tUZyw1xgMI/O0BoWIuTiKXYCAcvoJ3ErDaeYZLBVpGZj1pWnLdnNcgwxNNeFg5/1g
	 Df7CqGZFQnBoOfEzH+c94bP3kS2WEujght9u9ck8i+wITz7oca5iC8fC511vwurjQb
	 8cWWrEOwfB2bmSFjM6xUfRKDdtz1UdBSXyysX3aYrZnoB9fC6/ybcPyLz4LrjGtXBO
	 Zy7rUoNFREQSzthSaJCCOLqTfp+BCLZIBjIEAbKc8yABSndtMzJwncZyJ1zEhVe6eK
	 qFi+AeliKu60cr1BSk55qojbbFGf5gTZPcJdRsZlGzvItpKlyKx2FVVcJ1EhC0yJFi
	 Ge6CDYYc+s4Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA207F8E4B6
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641145368.16243.7652708517302462528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90a99ff294e7d957cdafbb0df8092eb120abf33c90fd147f43466f317bb2106
Date: Fri, 17 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776411453
