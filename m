Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D531FDE39
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750886393; cv=none; b=Sl9s+iJavH+XDI/X6Y+T0tLNvhTrK8oobYvoTZ8lo4Ifo3fXd+8u6IgIhqQXCNu5PyZv19CLexRKph92gHnd16sxdvdv1S03hGvWJhMOfCgjxA2Vum/OGMCQjzgusi+s5Wsq1uBuNZOSbcL18/2TnJYiUP3cmt0NBD0AO3rKJXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750886393; c=relaxed/simple;
	bh=Ncrd0wjTA984tDGFymoD2ay/uN3xDcvmOMxikBJEUEE=;
	h=To:Subject:From:Message-Id:Date; b=ByEkXgdXtfsPWwaCDfuoEE5HSQs1NZtoaW6il52SXWQz1jsDYZ6B4cx0jBY/DQ7Tkv8kxbd2L1YHvFk3VzjIu+XU69y5Xm82ts8acOP0rFhSiry8UYSCz7Tf12NnN2q1con9YFL43b/IfydThPYTx7jbRY09dqKib0WhNa5Bb+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKxWgdxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKxWgdxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E061C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750886393;
	bh=Ncrd0wjTA984tDGFymoD2ay/uN3xDcvmOMxikBJEUEE=;
	h=To:Subject:From:Date:From;
	b=dKxWgdxGXQzIzk7QW2c7Je8EXX/yqtz4ireHX2FWpbtlZsN9KuNRWexzsyFuzUpUS
	 gCOHNBQm37qnlhyvOIxvMOMJYOQIt6XNJL3NoHyXtoJSWw5knRGjZh/0PdQxRG3xDo
	 3cD4JutV6qOyqYU8xECQZWr5RouLUDttNyB8EtwSUhC7NWKr1IZF5UCcFdpq6vp0Mb
	 n8A3/GFZDTEZNsaBR0NuBbguBCV7kYotdbl2X8m1tr1ddGXnPROS45UTWx+n3msGYQ
	 0jel+blTyeCNhRf8JNlL+cXyW05K8cn/okkTTreDCccAm3YG5pJzM4BHEpowu8diEM
	 Pa/pWqW4oq7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B8C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088639357.10234.6805767013340989745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d6ab503d6200acb101462a222197b086bb01bc25cee02bfc36348a2a5186a0
Date: Wed, 25 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750886393
