Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9242C08B7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750153794; cv=none; b=kKdAdg+cuei5lRxE/33gCdkSfeiPw9dhc5Qt/Arq82R7uZySM/bIPDvOzi170P6ffY3Y8RQcZS+CAtYmsXJj/fxHQ1EdApzojnlFfU3+bvPmXJT+VMyKrgLNwQGswOWMzfUpj7ZyzPgIHezX47H5iD8I2b0L3h5bVbj2v8CchV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750153794; c=relaxed/simple;
	bh=yz19ZmheA5QaBVxXm37DC/bLBQud+BKimdSFhrCczBQ=;
	h=To:Subject:From:Message-Id:Date; b=SwyD/mcT+rG0hZ/OoXEeGpVUhD/k+E8XuNNbBTU5jEYW4F7BLUTRDJTlff8t798rg3JDB4uJMCRqbrxTQ+Oy2Q1BjZSbh7JkIW793ZGibnHkOAvLU30/R4rpZWqJCjXXyax9nnGRPPc6vn04zJsc9kPt53uqQpOEUbb4Nrg3kfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPnEgrHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPnEgrHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCABC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750153793;
	bh=yz19ZmheA5QaBVxXm37DC/bLBQud+BKimdSFhrCczBQ=;
	h=To:Subject:From:Date:From;
	b=YPnEgrHuVDjCCyqDbjfaSmW+M9K2xvq75pKpnEYc50ewfilW5+wIWFL63FFXLeD90
	 3nZp2e+XiRnXecxyg8mgmK7ezOWNfKs1RanUhPDmR5K+zN/wpTvrKbKLYL7P1JLI2q
	 C+FSDqkPkVZvNXvH94x64bS59ArEgp1E7ccYxo0DhSJUVYc6GrLyCDSJauB1lYyQTU
	 E9AOTjqDbL+m1Xj+WGe8y4NaeZs+JyQMhrpt9MD1SUnGGvXlND+OdeHA7+5Wg3nAn6
	 /HF1iv3WMsyEUmoLODSJxsqu0DrkcjL9vcw0leDmVZpAy/xX/6pBGToMU54B483cl3
	 HP1BJ6AZTZ/Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074AC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015379358.9163.15845958808661792362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3026106353667c3e1d6fc10f59b964ab409cb91164d3e9247d63c4f2190bf5
Date: Tue, 17 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750153793
