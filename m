Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D93341C6E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728704154; cv=none; b=gGQ72RSV4LQTrXVM9IsG4DCJIeKowRQed3RvgpQfIHMWEV9MhQvsij/1Aqxc+f4MSeZVeSy9V4epUz9mMr69kbtT04aFIaPuAtZTr8ss91IuHaRw5RYz31AVmZQYE8w60qd5qa/neK7Z9xgbKQCG8lYNJGhXPDZsozMjRP7COpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728704154; c=relaxed/simple;
	bh=Ws9g5uYmwXiimrn/CGSUlZxGBCNA0JHYbIxLZFVdD8c=;
	h=To:Subject:From:Message-Id:Date; b=NPEx4sR1mZGW1LnFfX6dEEMrxkCM4g7Pbl5J1ErCnP76XlOfdbcBGSkj/gpZjjtbmS+riLlBJjZisRkWluEnpDemQhE8n9LekkFHAQGlBsjBAFXM3z4vcCnadPthy9nXY0uoXapbMc+5Ka67TOaJTX8o9iA4JJsucO+ec1X7gJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhgpYbyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhgpYbyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B084FC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728704153;
	bh=Ws9g5uYmwXiimrn/CGSUlZxGBCNA0JHYbIxLZFVdD8c=;
	h=To:Subject:From:Date:From;
	b=NhgpYbyvj8OGe9lofM5MAJfW9qVDeXP9boMtboblW9+yyNuHmvwa9K7VMito2GUXn
	 UOO/pZRmvfEFrKEsOgM3X44ODzk8Gsrg7gsfzywEtq+PYOgbRfLizq/0XaMk9yynQV
	 glHkfZax8L9NFY/lpuFyHmj6nHvMkwqHgcO5D5VN5XAHQQj2pgd6gfOZfqmAgv3WKD
	 8iGzz7FnNAAF884/7SJClgOgFfWaerRrMQ4QkecFfUvO3bXVjhl61rwGOm/NfE7aUC
	 n7rYmRbI5OK2dU9X8MhXLzeBvW+Hnm0uwz5AxWI+g68eg245cGgn6NzhyW/4AuTBBN
	 HwXLXb+pn0MDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A635D1A42F
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172870415362.15701.8865228433175064397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabf463ab96079ed1310aea2cb1a9497c079a5bab551d16fdfabb6d18644ddb1
Date: Sat, 12 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728704153
