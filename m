Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC75130E844
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767453834; cv=none; b=u4Dlv47GmYUvn9Anknf9v0jAwwKK1aZX2CBPxFECesV84kDxqKfh49ktlh8TvczWbvG0xm9LNwFikL6esUEqtXnG01Zte6P98+AK/7SR8aV9LwYON7RJqfSk9OfevRmT80NcB5BRv2RGBncfMmt4dwWVEeNqagzM53PEaPKGH38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767453834; c=relaxed/simple;
	bh=SfEFoDm305ZGL81kT5N0533zUZJcNAUwx3R0OyeeWec=;
	h=To:Subject:From:Message-Id:Date; b=Ny0dPmKtWHkQlwbjSNd/xU9Ci3sB4mw5v0aJp7GLRLpxAdbSBwJoHS5kuB0+NjfoiPss5REl3hZAtSaTsRzLRo6n70+NVzeecKMgoVRBZqLe7J92Fsi+PAazRfBfqNx9onXo9R2IFnm64JiXGuwWa57lK8Bx8BbXMdq7WoVwJJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsCGuVpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsCGuVpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E28C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767453833;
	bh=SfEFoDm305ZGL81kT5N0533zUZJcNAUwx3R0OyeeWec=;
	h=To:Subject:From:Date:From;
	b=dsCGuVpGwUNb+wLeCSczBRRIaqD+wbr9qYIvi/jj8x2k9K21YGnJwLodra2xWD5k1
	 K4RNlYcUNRR4Ul2Uas3orv4qLhB0sWo5oaia46u+VKUCfsr5yJiu2XgtLTJ9elWYk0
	 KGykx2ykiZoMPM13lro3cc2fMLFbnT+Vz0dEnNvjIog2XGJbE/ZEZB42Xa10muoYK7
	 lT/j1kMYAMVf0SQ1VbfTztVSi1NSGL2OjkHbu+sEqtJLxozeG6qRcAeKH5rTzm7B6I
	 4fbF/AHzh9G7CUuIg9dzJgio13a5O3w6EBh5vac3pKPASB3cOaIEk9EoMuHC0bqUS6
	 8Xxf4aLzQ7dHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EAFC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745383358.13628.7650040978539557562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e284b2e14c7199bf1ff580479fadebd9b9a15cc1914581644cf0211e1cacac
Date: Sat, 03 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767453833
