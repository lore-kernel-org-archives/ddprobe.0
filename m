Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A00719B5B1
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753611594; cv=none; b=E1xM49gD8olYrKpOOKy1iBK2Zu6ABYg4EKhabcKJ3BnUlIIeSLaoLTjQNMua4nr9ULQEH9uzkQNzJD6pduj0FRYlRXYv5wx+hu8K+Y4AIoluC9Qy3Dbb8tFWnt20Ug+lZEVsh4tcIVXI0kZKlt6WETBwBdENgohqYN8IlWTUiAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753611594; c=relaxed/simple;
	bh=BKs3XiIBnszks0+WgtDwC77S0fMMvBUiiLi+or5ga6Q=;
	h=To:Subject:From:Message-Id:Date; b=hmFZdEWPPrnN6CgBIPfjIJstmpQ9rbg3Oa5GZ9AM6lgh5jRJ7qVJ/itBaCBOPunrgorfOxKoBqPlL9oW0bIKUzJJkKLg08VZEsVkzh2xCvIE8GUTEoPPBCTVltlhdDri1NlqBlr2B4suK+xM3z9KHouTWd7VHqPJhxSNzGdR8ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKt+RgEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKt+RgEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ED4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753611593;
	bh=BKs3XiIBnszks0+WgtDwC77S0fMMvBUiiLi+or5ga6Q=;
	h=To:Subject:From:Date:From;
	b=TKt+RgEk9mzvxNy2Gi6ZsiCJe2eTd4Dyb43s/1+WjjW0dM2i2WV1YajP8PABrSasz
	 /twMgW6tukApzD01inXgJTF2muosnNIF6G57Kc66goV5bJEm3dT6MrggVjQVYYZ32s
	 l+8GapuMwja3eyOe9iP5WCEvOgZvfpLq1xbG9/EejPCLZ2hZdQfvpCLvM7ezfordQt
	 TL5DSt6q3mGOuKolcqMxi3WVbLx5c1Pxs5EG7pesGIAEHvepBjz3kVKIrYmWsoU21b
	 3dgyfNDYA2Bd1jDB2u3qvTVkBIkf0nI5EXuStK8GSKQatesjWnXeA5JYJUtd+N1nY1
	 Q+WIkBtHGRidg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F07C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361159358.1361.6988962579449324681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a1ebc05144b4375dbbdbdec3647194ae0fc706f415b6fd893e075419e8fe3d
Date: Sun, 27 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753611593
