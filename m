Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F78E1799F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719229943; cv=none; b=B0CdyI3wqnSv8glkU/UoE1YMYOFhqA2E0MBBS6f8zraHoRUVyY/dN6t6iSlT0D+8hUCqVJ8qs5Mqeg9Px5jTPSxl75C7kWN5ol58I8jny1NJZ0BK2+Yucwj6sjErQxq5EfpZn1CQQCI6FLu4JBufIzMTstlKBJNtoYXQQNR5LBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719229943; c=relaxed/simple;
	bh=qIt6HwdWPWPPYY1KOeaiW4V3zNv0mqr8X5CW5yXhUrE=;
	h=To:Subject:From:Message-Id:Date; b=QEqkKcULe7bJllTACuS/dNnVDmNvPRU/B9piDALyLl0qNvrg2ye0H6KHt80piEyFj/qDoG3NGF/UcXF+S4owP7UcAaJ/dbNDJSf5ttS+GpXiCi8IY/lqoMXuy0z9WzI+xswjpCkeXW2gfvZlL/wAo9bR7kM47h/q0ftzPfUumco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjI9IF6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjI9IF6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DE0C32781
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719229942;
	bh=qIt6HwdWPWPPYY1KOeaiW4V3zNv0mqr8X5CW5yXhUrE=;
	h=To:Subject:From:Date:From;
	b=CjI9IF6/xcGpizDVeXidC95feF6MwpkjcdjVjqCKTI7moc9TJhUGa/SzuNobejrtc
	 /3nJ5osR1h2LrwgtK3eSX+6wZl0V/yuyz8qoiAMWEFwFTD4RfdI1tnhUsZhc5tc9p8
	 3TffGFhExsx/gVsHPlRe7JvIW/Nd6TIhtfj+GvxVMZHKi813ljbjZY9wrrHpqGE54i
	 5YX33tqOg0ynm4SEe878L6035U9LBu5vFLliUVdiMjfmMRx4JH2oLT78WM/5qM7Ifd
	 3JaUog5qPfyp7RqxxmPMJrGlfi+9P6/+OfnrqYZNJHR3D4qEcqQQqINv6HAsnAXwj1
	 eoUQDVhKPvcTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33E6C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171922994279.21951.9559593130453627381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c4cd21764795151ce5bc5dd4173a93803dfa6460e10dcd8db450c4d76c0ba0
Date: Mon, 24 Jun 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719229942
