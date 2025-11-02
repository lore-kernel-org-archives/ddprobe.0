Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2004A02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762046994; cv=none; b=LP62Kf422dOeKxW0KDiZ6a4o+v5r97H4+w/ZoQUTBZ6xzdQkWjF6UUvAdG+1Eio6ZBhFbLamPsd4cMbUSbNuQ6C+IyDepi7DDAuYlwsuE84PEBdOnJpPgd8f92usgqD9//ARBkKHOq8K0Dh4Zxkkm/8lELCcSS6vIsXWNCbpsoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762046994; c=relaxed/simple;
	bh=0EKftEnYCWkb6Xou6TeX9Iv//H6SAT13Z5qHCnncarA=;
	h=To:Subject:From:Message-Id:Date; b=sRV9mqN5o5qhluUxWbICsEwpa/ck8f7mztI8DS2ZpxG810wY8wIAdckPYwDk3xsQA1neyL3K+OszO9u3aBv1jGW2S2igziYcwv5nUbaF31Ov0Jyk9VhEcFCNWLpqZikCPbpF+ah/65EFAfgsstNFSkwltUP1XVDRzfbNCxmI22c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5CNrii3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5CNrii3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A48C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762046993;
	bh=0EKftEnYCWkb6Xou6TeX9Iv//H6SAT13Z5qHCnncarA=;
	h=To:Subject:From:Date:From;
	b=c5CNrii3/zlOl8dSt9YB+Q4ND70mBCTgLeVdokYPhtpFcMBxRyfJeiLWMFqk1Ystc
	 YXi9X1CzkIJtkLTXzWg68YHIZfzyRUEtNNRARstZjLwZb0UujUStuGPneaKdE8YZg3
	 gtzWbKalWUpRpDuT5EG1SOWYKQVIztqdQQYQDk/J3jLyzKUN7Ywle4cvvqNCXY+/p2
	 9/rnNe9BqzBd/TcIG4+GmLKctdcqeXqiSFyIFtjVKfTLAbbG9bN/6U7oeS70kJCHwa
	 2apyTO5Dtq54pRwBVCy8AE78PtWMwrWM/mCfsw2D/TJxj7k/BpVMiwSH1/5amLNo4w
	 n2RNm5n4lyQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBFDCCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204699361.22585.18002138715609868865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76faefad9188c04ec1daad9e183fb3857759c7368169b28aa0a16a284f5e41b7
Date: Sun, 02 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762046993
