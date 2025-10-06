Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D564528DB56
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759756193; cv=none; b=WbMCDCBIzGPEH6RZ4vWVA1p2ID2AArCrA6dfIYcAna80YovLwLT5d0en1ou1QfutUDiP3FNePc9TY2d8FLIgGiWTkTSyzZJ5ChUwchqZj4bHUikz6LkvEMyQXeqNwbY7ajH5BZV6PGntiqWFh3LHPa4zDF2tjvgKEbmfxoy1XVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759756193; c=relaxed/simple;
	bh=ifm4tkGz2hSpDq+FXvlZUTVWK1slzhEZgzfChOAxatg=;
	h=To:Subject:From:Message-Id:Date; b=RxUIHpWdVqbMyow8dOzVsjBm1wupzMLgxqykTk53u1RlnFFaBpjf2Q3+ozsI77rb4UqA8cPI2VbTRb477wxwb7ruNB2Rw0ywTYZseXL5Uuy79DqgD7WBkA376kivw7WXvpJ72RuQz5NfjCf2UC9VB2duGb4LRwKtY26v/B2R7XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtSt/EcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtSt/EcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2891C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759756193;
	bh=ifm4tkGz2hSpDq+FXvlZUTVWK1slzhEZgzfChOAxatg=;
	h=To:Subject:From:Date:From;
	b=TtSt/EcKuXGknIkYxmKIXNR9EKosWRhYtqnyRt/7KVaGbnwji/kHTsSJjVb7fJhAl
	 0mDWdjRfL3Ld00RGgoi5cRPo3Ll/RKzo1QW9C40cTWqd4wcy/pB3lGwRojUcDXN4Af
	 BVacJ12/O146dxU110NkaeF+LgA3hd/kgR5XpzrwDHvVpisnCALkHfmGgravShS8Yk
	 puCY4wnuwWrOzQZgl8PUVNGF7mGG8DVJnadEYUmysHhgEtfQyoqjK9fBoL6Tr6bWba
	 ow7HIR9xxqGbYWMtwLmLimnINv4/e9xyaarE5Zuk5GX6RVvU+LZR74dRac/7qH1SvL
	 7QR5UjluSn9Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073CCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975619358.1664.10273609732906755163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3a041098bf83676152536358e0b04acc10315945733d5b3724e042097662e0
Date: Mon, 06 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759756193
