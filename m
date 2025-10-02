Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B0D5464E
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759367994; cv=none; b=TwOlXgBWMuaSIK6rM5xJlPkDwblgzNX3DNHMKC6KpPI94O0+H8MxXvhLYzRJ2qh21Zcc9Xcbzyvy2OdkvSLxt7aF2hQ8x0hTQrpo/VBgy4nnILfDRbFFmXvIHruh81ZtRixAjXOa8Requftuly8T34diImDfcj51TqXk3jIp6QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759367994; c=relaxed/simple;
	bh=ibO51yb1CFBd3mIBpmP/WqhR9yIBYI+kuKVjZFSlKyQ=;
	h=To:Subject:From:Message-Id:Date; b=M8x951F5/qiw/+D/1DVj8ZgGNPWZBb6N4eGjuslx45iJE5YZwjHMcm36s4Pj6b4TV8EsMXOgnws1NPkuD0vJ4zw7wAC9/lxHo4vmgiuv95ZyYCa/HnPzGbOwWP6tLza3v7x0CdN2GYDEI4+sMy/BElK+R8zsktz+aaIloagR49Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBeKbiID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBeKbiID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71C1C4CEFD
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759367993;
	bh=ibO51yb1CFBd3mIBpmP/WqhR9yIBYI+kuKVjZFSlKyQ=;
	h=To:Subject:From:Date:From;
	b=IBeKbiID56x51jPfniiHov4NMe1rJD3NjBzfjz68cs1zOlz1G+AHtqo7224gFQHxE
	 M2fuwHwxZnX9yoAXyBTFeU3ur7rtOfTV/7LtN/YEpkUAQ7jea0htSwRZwM85TqkRtB
	 eD2s4XupGw4m0peazdKSzn2ieUfzPlvdfSJBeBQkl/qtWDvCqYG/BFkOS3VqM0ifYr
	 WoqxaXIdUR/5WIfJRedTetGGXFXx0mZ7vWjVID/KaM5NAohdxdIckWYHpZPFqVufXl
	 DpO8QH+ClTrK1nhgSlXkDLmHvZMCBUm5mMA3rSrtw9kMpPqSzDJWNysr7N94wcpEmD
	 sfAbFqmgCz9+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A5CCA470
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936799357.17135.11217111920653495283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1aa956088b08b255dabe113e053c33569dc051848e82863895a67e088ca266
Date: Thu, 02 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759367993
