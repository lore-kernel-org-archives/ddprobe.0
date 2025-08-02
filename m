Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C68E225D6
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754111994; cv=none; b=hAi5SphE96QcZ70+LgGcersy2wOz0RehjteCX6UuJiD33KkiK3sN/dUr1wkGADYIgs7uOvbtrUqwOx+Hfs3jZp6ReRTn3iaJ//BUdFOSfckJI8P/swwOUaH5+iRySb3rUReV5oEZkeXD7rzo3LZ3GaiS+gVPnzmPbmUq13OKITk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754111994; c=relaxed/simple;
	bh=4kOLVynmHf28IXjST9NLTPtWM2jarldGNFSo6skoW3E=;
	h=To:Subject:From:Message-Id:Date; b=Aa3apme+62e/R5r4vE14+uPXBIouqLNWPDiVod4GzGq4SvwTyi6mU99PGrPvIgVLIx0ONuhyyV4pOdd9mPTPvGs8GFckYsBO4IClIW/afkcO6UZzqFQx7HsaEtM8M/Y9KPdiqfVQ+X6CC7b8otX0xLGct2cx3UX01SH6QJRmrcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdIV3qZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdIV3qZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76A6C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754111993;
	bh=4kOLVynmHf28IXjST9NLTPtWM2jarldGNFSo6skoW3E=;
	h=To:Subject:From:Date:From;
	b=cdIV3qZF1bVOGEnNurKHe8zN8ez87QFbK5Rw2q756cu3km2Vp6JRo/CGdEtJFgpjA
	 hHqvnm2ZaEU2+6k0pwWSGoZeEhJRGcekma/nhXp+DIufKW07R05h/WCmIwImanWXRD
	 QVOnVf/AR/h25KB1XQmqODdil9Uoqx7cFsxqOkxLH+kZBr4TDnLKZ/1Tsj1zjOnFdt
	 PoC7Q3zfPQ64W8E7W019C5a3me+E3yFN0+RNKaC1m7zbpuzObQFA8SmdV3u1EJ9iGJ
	 p05jfBnZ0dvnl+0yNeqxTb+35xmm3pXSnEsoOEkWtGkNygMRvLFM/FzmxWSP+AGFlY
	 2lHzn/xW0LyXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B3C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411199357.6619.9896470963471512856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ddd26b368f7f365e9345b7a246a88c38dc276ad6f91fffc1682a4dd4af024c
Date: Sat, 02 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754111993
