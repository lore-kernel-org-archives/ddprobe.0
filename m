Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384FD3822BB
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788329434; cv=none; b=sVDGapxWLY2yBAYSdZHf7y8RInBP+SA08OotUCcZy3NYzlSiWVYypDgI6ktCsMChKIZCHmAGCbPcw9UoeNsfQKhzW6p6TRv5Egevisz8yD/4GuojxRDhz8Xh/wDtgJgWutZQdoBl/mm3Zbq9zw+fpfb8/nNd5ZGRq4XkYT3re5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788329434; c=relaxed/simple;
	bh=5HlDlzIP146oeVpb4gj1DojkIkqaZyB7KuMReqIJz/g=;
	h=To:Subject:From:Message-Id:Date; b=Dv2ayz2qv7q9YSKwjBYgUt6fiIgqpf8jYn3GdkRSKRTKIgx0AIx9RKLxYcse/AaDKiv6aOsBM6AKvSUkwJVtJ3/83eJpn4/4kVq5XgAPyRgI4BAtJpUwl/axslfp3i6C9uE1Lj0qhtkOlQezSLvcsyykp5vAFroHTvgG9RBc6lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJr7b5Iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJr7b5Iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3D8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788329433;
	bh=5HlDlzIP146oeVpb4gj1DojkIkqaZyB7KuMReqIJz/g=;
	h=To:Subject:From:Date:From;
	b=kJr7b5IwSOPoqBliG4xn1W11mgvcPIK/JoZ/vtTFxb9x7JQk2YoeY6LP7rO6zwVbB
	 TZf1N6IsuEcwXGX+ednsiLNcKUNzsj6faRtrYYMuFFzStC/Nv7t6nWcimnt53S4TuZ
	 FS8SYFA9we9DjNo2lwTNuJSVXCGwtqVyNpPFLEl0F4GAForlfrixTHi+MbjHhDrC+p
	 969avGXoKRQYe0aEnFl+4GAy6j1cZCP+VK7rQIR6zTG4aPZdcWP3x/MbvT5E/xWqdz
	 vlJEbHqSPkxeuhQ1FMsVroGbH54Cz4m1ZBOJzM3OIqWS1y4AJ3vn1ookz1VN7YbdJi
	 MVa66bmTpLJiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC55CC61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832943369.6894.15951101983458839680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024bf36b7044ebadcdcd43cf3802d1c07164f46c6d687a161021052073efff50
Date: Wed, 02 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788329433
