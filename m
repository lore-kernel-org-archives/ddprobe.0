Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269E1A47
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730974554; cv=none; b=VMAd/skAjsEO/HDLWHdDWLNhy7l3ARpddfF0nkpqI8KWMSkIVm/JJq+U66uyneV6s8P1MuVFWHC2yfOg83vN4EO6z2DW5Dw/Pm7WLLXfhGrKGX+Ajl09DggbfUrRF+o7fTXePZU1J7WXQaLOq3Lv8U0QWMvCwMi6kqcCbVfz/6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730974554; c=relaxed/simple;
	bh=ZXom3I5eLeabKN/w4vyxYQlz7frIG/vXqmlUvR9Gejk=;
	h=To:Subject:From:Message-Id:Date; b=N1TSoO6/JXLnlGRK3G0Y8oCjPhC1tf4e5nUDmSNjneoDv8FHiqMHRSBJ+1d0zy4/A3elySr6Yfsrmi/kyHpxG9lEc+7A+IHHL84cVNk5FfP8X/stDg+sfu4x6fyluhdi3hrnsKHYCGw4qd55rECV1WsQPoOwATYGRM/lCgA7ICs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXLHrCxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXLHrCxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD34DC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730974553;
	bh=ZXom3I5eLeabKN/w4vyxYQlz7frIG/vXqmlUvR9Gejk=;
	h=To:Subject:From:Date:From;
	b=bXLHrCxsgNuPS4mc2cNZ0fUH8ZPwmU6AYfBkdPBM9FFCyrxWHQhyZnjv4MnwCUxTT
	 29C4EDsgMn+lxbYrqKlmf6Yz3GL1eADb3VLNFM8Fw8w7jU5wjm9alqNJWDibfYCHVn
	 TtZ55d7wWLwFC/kW2w291JS31nJe1JiGtLm4eiE4rS2NbWPsE1Swz4zxvFuFXQKorG
	 RdUvLpmqe8glKNhPyvQAvnO86bETZqAjueyzKvb/Hwv20c6HtKzlijyiDVvlxJ+2J4
	 aaWLLAVt7cenENX6OwvMiuirnalPn508xqAd/pZL7iZ07UzC/rnYQlCwuj4g6JIOxW
	 NSAnrbszJ4byg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7D9D35E5D
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173097455363.20518.10389818809787605059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21bbcbe02e06bc03d3b6d6471a1108ebc0ada331b7053f136bda7f6fd0371e4
Date: Thu, 07 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730974553
