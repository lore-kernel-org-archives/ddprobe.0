Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A36F1F2C39
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734792354; cv=none; b=tNuzTb7eDOCSLHSAvvGhwTbuEOv/7A+r23c8L/fBeoGgeuff3e1G+xogcwa3IeNCf3lmBnrYfdXAJWHFfUkDWWzHojGMtE5er4xdgZW6vUKl+K8zcbiqnUjByarxwRKuN6pJERHRFIK3dv9vIlheVKsymi6c89DZ1cPEidLWOcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734792354; c=relaxed/simple;
	bh=YY7muNJzpx8NBJcjAh61Z7Eq5AIKk1WSFuB1pm57R0Q=;
	h=To:Subject:From:Message-Id:Date; b=NbMtP7ynBpy2bmUFgNNOxrQCvEp8c7cToyiR1e+EcqdBV8XqSljPyGwpn3e+bHT0NwnlB8c70+qXHo8tS83Z6s68PevotChM6+Z6A/sgf3zZxe1qgGbDeZFqtimFPH6AKjhPfvWEEeKcpsVzgaSD7yRgvwcemaI2qtHi7UbjZEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7CUPQY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7CUPQY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5F9C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734792353;
	bh=YY7muNJzpx8NBJcjAh61Z7Eq5AIKk1WSFuB1pm57R0Q=;
	h=To:Subject:From:Date:From;
	b=G7CUPQY3BK2EccWqcxCQl2c9dXLVtpEGhAASd870jqS1FU/fOU1C1sVVvfHsdGl/J
	 bHv7uz5kNax6dBoKA6D7uxydlVX2uHsV1zh8E9i+q4V7NXpskx2CjPSduFVcfKsF8J
	 RGzaAsiTVdARCKICHG3BaoZLC9zE6HDFgBnhy9e0zOPN5G5NxAxe1XKW2KRZ3PAXVe
	 RK3hA4MlQO9ujk1AsFZ/zdZYrjs1ka9UemsUVxKMeeew4/uXJEOekNJu2hyaplhuqJ
	 imqGc0w3CDulnFgjgCqoubdLter+WQdZr1l4PSkO6lA7kvW0UDPl4nqM3TAwAXg0Yj
	 n9NedhrUCQb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D35AE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479235363.18865.292044047861460904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e464da60d0a1a63a63d9c4cdb7d7ef9d8da8f4bd59cabc3b2a13dd215bd5c1
Date: Sat, 21 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734792353
