Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B203FEF
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711077497; cv=none; b=Liayq4VO48H0OkDPF6DSpqAq5MdhlcARWttJohENiwqzdJACSwouwfyyYORMGjRAjziNHWbknjfXgEUAgrn80McZSi5xEUJr4HzotbRKo8L277N2I4IUpxbAk3yUUIYGkN5MK++PS3DGKnzl8B7ilVXBAL5IkTFfPJPJ5M2YlsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711077497; c=relaxed/simple;
	bh=1ITCCYTv3hjAEKafXz7E20Vx3C0OIkQihT1juqlIiuE=;
	h=To:Subject:From:Message-Id:Date; b=QjDxAA4SdlBdkb08HvalNeEqhoJfPxC6cdLcjVC4/zJ0svWmKolkTHM4dR11et43DLGrfoOHoX2cNanx7F1wD9G7TAx3iwM4Hsci1c8O108dOvGNiSiNqPWF60Zj1D6dJRTmhRiREEMcP3xcvkYfP0miHv6LwQG9bOCr03GmuQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtBrRGc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtBrRGc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BAEFC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711077496;
	bh=1ITCCYTv3hjAEKafXz7E20Vx3C0OIkQihT1juqlIiuE=;
	h=To:Subject:From:Date:From;
	b=gtBrRGc7sfK1RcC7tetk0s3Pfa72AHg0Q0+SYVkuEyydkv26b3uZqbvExb6du2wEH
	 O/1WHKQdWSyHTP2ONYDyxiY/qK1oqmuek4/l8r3xic9LNCm4muiOzBTmuHJzmAjSCv
	 MHBUM8f15296h99LQFI3rWoiA3Rw5L6tpnq/HOdMAg1/NUNhszfX/1fqnJalrAuL8m
	 kuHmdRNBJVVcaOG+cWO0r4zPOy16cK9NlrsIWbHPGVt2i85WaeZ7ynXk7cWzMNuvdI
	 OwCuetCWSCZ9ZjszIQxwqopSufj0CeTiKPY5fHdBvGisKjQ6UcdLLwGfOkGR9YEYIk
	 +1uWRZ7ZBxOQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628FBC54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171107749637.21720.3609778699850877290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce359ea505bf3e4d0fd34573555de33be17a1619b9ce775656aea901d03f5f7a
Date: Fri, 22 Mar 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711077496
