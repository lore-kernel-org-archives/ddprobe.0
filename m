Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD3A33086
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749181794; cv=none; b=D1/xFvUzzi2szDFGD7C4poqSz23tj9SkcxaKOLTA316tfp8zEklUOFTPPLNOuIHhqodHVfkrs/cfKM05ezQjqs2QyDmUTdnddzXzVoyCmlpGy1yCFWvfdm3l1aEnx1SImpzktzUn3K4LmAuaCUhwiJgvAzy7yg+G2QZtS8kVG/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749181794; c=relaxed/simple;
	bh=sN+mPn6RPUwWgqY8dNf9n3bdo1xaqA8f7PjtYcmcAys=;
	h=To:Subject:From:Message-Id:Date; b=WtKTWQJ0R/DSoq/iBwwHCDJqmfVKNqcLuQXIS+LMH1EhrVBgtraE4CgMM2AMrkc1is74IpIOKm8/T+bYKXrCKBIOVRFmYwLstewAvOwV9IKWHG8I3VnpjaYs7/AnRZeZZiuwanSO/+APXcoZs7CCpUondrLeic5ryy+NY3nMMC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWRpH1/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWRpH1/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A405FC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749181793;
	bh=sN+mPn6RPUwWgqY8dNf9n3bdo1xaqA8f7PjtYcmcAys=;
	h=To:Subject:From:Date:From;
	b=SWRpH1/5FRkSUNZtyBXY5gf1wRAYokgFEr+roMBe6Kl9enzqsNOuhJu6xJ0uOHGz0
	 n2Dibdi+facS3Lk+irBX4bvll5q1pug+rsSZ63cX7BxokWnKvl80NrtffSnQltNL63
	 UypFbkcXNHVdjvyN04Y12OlYVdXKbpx6tizFctDxR500zI7kBzMuZa3cWIIWydMWMP
	 b9j3h1S4O4d7Lbl7aahgBVT18xNRAViYVsy67U3AYlJorB7oqtkbXXSUOa6Bv9My5Y
	 2Gg4pbGmEjpT2VGj35A4zXsMQ7ZJsQTo02kYPsHvBqDHqzMYA2EfpTnON5jthSKC9j
	 AGN2L7LHkn5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE3C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918179357.25283.5864389699046394221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7679f175aa3a4711e614843ed6118ffc724ecff8e99a86ba72b12500bc9b2a13
Date: Fri, 06 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749181793
