Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC8C366
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738022754; cv=none; b=niDVB4iGHtW7gDtICGnjjWPHB6Kpog2ZCqJ2eeuypUUa/Gao/RVTcDa331LmwNMyCr16Utoys4LGFTVYOoV+li1LWLUqGHHG7HNyGWrXtYCKgVNFjiw0Vl5kUBGy/CJ1EjAxO75Z+FtFXLuYlcrHleFVOYDeBKGTtvXOthnuTyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738022754; c=relaxed/simple;
	bh=a/QFkHEQvsa9VV2cmWgzo2DKJK3bSi7ndK+YvmtiBJI=;
	h=To:Subject:From:Message-Id:Date; b=Gt8jTyhSo6wLquD/w14ZK/y/bLOIrNvSVEDED/eEgEOKH7z1Qc1JV8z3xi5WkadPLiyBjL8sgLDsTcTyq/e5mTjN0qgXVgl+WJNM0O/NEl5ubyZyP8GG3xVWEFiDVTTCnDTc2vNkW0z9iI9SsuqBqLVLR967mGYtL8frGwu5og4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrLLVo/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrLLVo/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1371C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738022753;
	bh=a/QFkHEQvsa9VV2cmWgzo2DKJK3bSi7ndK+YvmtiBJI=;
	h=To:Subject:From:Date:From;
	b=CrLLVo/GKM4jAgG2BInSIsNSgN9rrfhlyxz4PYm5vCW3nevGKHlwhrgmV6wsn7/QL
	 +53WqDBwkbib9gGR8MJUh5pRjBXCFL8mOdFKUX8WDNNSykJ3kWCKZXih5nJV/r+WiE
	 N6y48aD+X0KGAYZusi7rFJTeXE5YPjKnc0PfJYERfuAZZlSAGH3obfsJ3INUu+5zai
	 pX9j5fBq/Qm8lV7H5gG1zenbZIpIIQYj149f/T/+h0CLa9YSz1zeA1LQmaPU8o1wIm
	 /KnOC1sAt2VNBZM9rHgodqgLkULmXFG6BoHcuLZWf3QAldrKhRuDzXjJCngIoCPsOa
	 I4AiMxw4+tAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A292C02188
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802275362.24334.17314878585740505782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0f054038c1e107aa5eedfb57f6280d389c7f66e74d25935342b446fa6d836e
Date: Tue, 28 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738022753
