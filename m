Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D21F320CDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761133794; cv=none; b=W1wbNAaa9ssnu5Nq/8ZhgO3lIZ0bfgfQP7FJScxLseO7cOVn319eRZj8FPG5q8NAROLs8WBtu+l2WwceFOAM3TTvfDGYKpF2aQkvqBb5UL7wF0klh/qf5Tv6UdViCyMIMh1Xs90sv2jSV12+zExDOzokQEz6T29OyEI1cq2krfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761133794; c=relaxed/simple;
	bh=RbdweAG4gBnhJIa4GbOH8nIk+Odo9Mi5wKF2z7Yz1io=;
	h=To:Subject:From:Message-Id:Date; b=r/K5GPgd+tT80fga3ul2itxqPpAoNgd5IZWX4VuIsphz1d5oz5WbjQXT31o8IttTVgrWjgdQKqN5aaCNYz4cUdViX7778AC2jwnByVeYq1DvlcDMratB3jy+/1LAlbBFPmdGaopkInxIiXDNicpIj+yo9cgITB5SIgskZ46cT3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sk2EgfRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk2EgfRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F65C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761133793;
	bh=RbdweAG4gBnhJIa4GbOH8nIk+Odo9Mi5wKF2z7Yz1io=;
	h=To:Subject:From:Date:From;
	b=Sk2EgfRRj8i8vwvj/e0TW8K7WSvzU6Wral4r2vIvugNpqk3l/cDPNK1P6Gbb79TIn
	 i/d5g/mokWmrcKSQCMxavvBvwtNWjrqx8oWJsfp/AX1bY+yBje0BSnEeFRbesKy3ct
	 b5BvdrwKHtn+5DaHDkR09rq4Trqj4lnjjrs7dujIy2bTG0jNz96vGq4ImzfmUpiJQx
	 u0hE1DLN6z1XYsgDqBXGMh/f/18LB1ZvafW9nJkXe1MpeQ9cO62J5jl7RMMQ1BnwSP
	 ZaO9DLSXsGk42+R6Rm1UKecvXHYoSB5dZhzFPE4ErzLIlUIH4K0o94uCa6YKmosTHm
	 ogvrYge7ouC/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ACACCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113379357.7606.830669529115979800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891e746116c70bb1ef9b38d0c9063c741f12e84aa865b121784cd854a03d9af3
Date: Wed, 22 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761133793
