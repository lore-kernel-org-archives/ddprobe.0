Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519202E646
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723371954; cv=none; b=hHNnK6Wnv/K5Lt17BLOgr1pBRT21fK39LY0GrRYEn4pIfVw/47PXDt6Yq+NrP3PJK66Ncv69d3aIoHWEx//iO7eUcDQTs2OtUJ54hPpDefeuMoW+iLzs3qcB3l9h9cmL7wjTRLTTYW7P5ihSEh8+5lehC7VM/Y92hhH9qWWJxBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723371954; c=relaxed/simple;
	bh=3rJv0pbIncmmJTganAjAsBt5tV4qPVp5n1dwRg5UKpI=;
	h=To:Subject:From:Message-Id:Date; b=Ricpw/8uht/Q/0eHKr90YGL6qGfWajlZ2FLPFM5w80PJZJ8Oz/SwlkgIUfBUr/vqtgBQ2Y1EpVSiHaZFOhI28itegOqfoKHE5ssSypplJtx/vmJpTriMx2PtQCKEqo5Y5/LUA+rFCGwZH72MdOJDeumRR02wXMG7S1UW3h02Ay0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWv4D6YP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWv4D6YP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE76BC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723371953;
	bh=3rJv0pbIncmmJTganAjAsBt5tV4qPVp5n1dwRg5UKpI=;
	h=To:Subject:From:Date:From;
	b=tWv4D6YPOfUTTG19qZUoKCeKuxFv5PM2EjX2Fuk2SVGZPebzyn8D6bfgqbQW3iIxT
	 h3Jbs9xhisoJ6bK4kYtQZSv4JNOp4VHvqZYUQPHEZY6sRDRs20aWla5zMhD+pqe2cE
	 /7/7fFHz0G+OEadTQ1CVPhtFysGtx32HO0P3msWHuMm2pUtQVIkF7Zo07dhi/ZubkT
	 drA6Whznwr5sVXADGvw5YI6CJPQsXTeUR06XtpUkZZ6RdeZSUS2/iIBxA7rHpzdzcF
	 NAGxdzDVvyjT3elYXLiNRQaMSb4VCKPJ4T0Rgw9uByubaf2L6sJjqmVYSDMzoF//L5
	 gV5VB6QBDs/eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A266C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172337195359.22812.4187840347428061122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca1de6775eec31ad4be8e5afcfa113b3616d388ef5445868339824cce205d2d
Date: Sun, 11 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723371953
