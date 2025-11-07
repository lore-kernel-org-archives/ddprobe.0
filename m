Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBAF1A254E
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762490994; cv=none; b=L8DuzV215V5FPTMcc5faKpG3xh4Io5zwuJst3jqF/jOMiDTZWjcnuBvrUWLOlGnX6fofedBGVnhiZJJB/G0eeiE8xPsE+zdnTk+mI8OJOUlJnbx+QsL91Ht1S9DWwzUR+jzqfwZUTZupUvamLHPEjXf2KQM28blIv29dW+RGOqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762490994; c=relaxed/simple;
	bh=qvVK9Y9Oi8m1aGNuVcgNV5X0KHPd9d437AeM3Il9AFI=;
	h=To:Subject:From:Message-Id:Date; b=uf4yBkkGx83i9N7ENEK5k8Oh3G7gE6uqVzgxnK84MupAPnRLrtF9nnfXDKlwe0LBcTViw1n0gY6IW1AxhTz3AoKQRSHJg+7rYQnGqYUrZwv27I1XLtfjqGNkNraBUzKeQ8E+dDK6dtqmikuGcsq9+iEIo7mkEe9Kw9JHj5Ojyks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2rHx7F/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2rHx7F/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FFDC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762490993;
	bh=qvVK9Y9Oi8m1aGNuVcgNV5X0KHPd9d437AeM3Il9AFI=;
	h=To:Subject:From:Date:From;
	b=P2rHx7F/gl7rOB8OK0CmvdT2cM+fC50FuiyTwbtPwjcDoLI9grS/I5Mo6OVs4b6mM
	 Xppg0KPQ5Qtnd9B/c39VIzNpqk+ElPcyNfXEe6CWbW4WVMaE2qeYvnY1JaIT0d4nz/
	 HoaQHiTl6XAAUfYn4y8tDLSwoJo2f2+tKZD/i0wtwAJD+GgUsk1iPF/povbf2+SGYW
	 ASHsvTGDbX+3sSxBClYG1TUdNNVJ9EA7yjGCr+VC8KwcjI66k28PMXAXNKum7PM9vw
	 txeWdwVLoQBS2n/m3Gw+ZNjCRrny4K/hFmYoGamUmTHHSlNao6+FIcFVrAGG7kHtYW
	 4MWAS14diKCYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C77CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249099361.22506.6104533126483234742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50523d52f2972f69405afb514d333bffb4c439f7845286c64edd9d18a0116048
Date: Fri, 07 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762490993
