Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4291523E334
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759564794; cv=none; b=sLRhtbpMjfQaiTVG+fwtQ8lwx0NRKuisBOecnLhp9NEapRQMAjyQs936R8k7/wNP2v3SEIxmAk7zwQB6hJjKuayS+2wIacnIFW7HD6Wed0tLrBrlDLOdD93o2fpfVS7cTiy1YWvmlCsPjG8HM9S1HShDmwXIH1dfcnZn4eWevQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759564794; c=relaxed/simple;
	bh=yt66c0w3NjV4OWBV4pDN9Vke+vm+1UgJsMNwqdYUoX4=;
	h=To:Subject:From:Message-Id:Date; b=u5wTEbrBmGlrAQl7fS+As4MDZDCAtlrIGZnxN0ZPD/vhb3peDfIf++aOb51OUEpAVxMBhR/0BYWPPwMD9nAUUseeu6Yhkr8SmftYSSUzSgzpONpfn4hjB2X3VP1NIEr6/ljoHGwI2Jk3Uu6GjqQjIVUct7ap/6yEAjegkOdy7qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elD+BSgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elD+BSgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A974EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759564793;
	bh=yt66c0w3NjV4OWBV4pDN9Vke+vm+1UgJsMNwqdYUoX4=;
	h=To:Subject:From:Date:From;
	b=elD+BSgR/NBg2aMPObD5CbblNfAs9ScvZ9bZu0uiBBimqBAunAMc6SHfzKU6r1mFz
	 zJi5xdZHGDt2VN3KwjqP/J2cgq/1/kQZ8z9CcV/NLyXJooGV/x85h5M2Q40jDLCw8/
	 yra056wgqh1DNsKJMKnSQrjpiibcSUNkKPWt0swqER1Qr1ejg+tqUIOYrMZa176tLE
	 AM2MPmJSy5MyjfXaa29KrPFnp6dIFMwOU4DX4coeAktokEd0XWW0wp5zIvL34dPokN
	 nLruxXZBeD1XCp5dFs+Nq2SKNmv8wy9sQ1UPLGVVtOGWKw0Bht5JTKBaOnXX6GoE/c
	 KfUcDyjQujC+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A7FCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956479358.30985.5646350959555925619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfc88a871c2e1fe0edb49ccb65575c46ce5d70c623061e527dc2f4495a689de
Date: Sat, 04 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759564793
