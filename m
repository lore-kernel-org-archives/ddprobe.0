Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F226119
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705457297; cv=none; b=e+a9DdDE4bfHEEIfByZlXZX4wbF5eb2ZP6yjGNcBbuf8Tj5OTbZvHXYPbXbrJTCZkMLlbfcWX0yjI9VctD580k43g8WHCHQEhoJwDfHl5mG5u5y48W4BaAS5IyMZ3wwD5cQKJuXPWQP59yDqTPD3GKNPUR+8hJHRE96zwLw/7XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705457297; c=relaxed/simple;
	bh=NyJHM5NDvgq6HZlIiZMLVEJlm+GWo68Xh2/aoPuQEJs=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Rp9DvzC/czYew4a0HF/tEBsdhQKfa9sKLgNlwSCXAlybmKex9pcvtEqJrsIriK9LU9VkYxm5oYFZ9Ypkl2cArxQD3g6QBj+VovmGrx7OUKrPKziacf6ZrCJS989UmEjnUOGqG39M9DS3eOxUI6zTBvf9D9O3bCjBDC9QlnUMtJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNO8Lnme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNO8Lnme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 798C8C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705457296;
	bh=NyJHM5NDvgq6HZlIiZMLVEJlm+GWo68Xh2/aoPuQEJs=;
	h=To:Subject:From:Date:From;
	b=GNO8Lnme0zgfVk20OCFXoyLDS7b8QHKrxRxO+F15029vVJ1Xk/m0tH5kkfatlOAAe
	 GAGCdQLA/9O1lC0WXrJu8nn235xQWM8zGakCv+tA+rsmJb1YvelUFwnGB3N+8f7ms8
	 vWsVGppGychHH1s9F4Yv1F7hpa4Wx9ih7+o40i9uAcgc7DcNiWZKE6Zvh101SbiyaQ
	 sn8hzUU1gqVEOUv1j4mgjVF/HCO65xoK00XjrJQFFK8vT0jhgdtvWAiQ5zpuya688P
	 1dZSKPvUefdZKD8vdjn2n8q6Xabhdxgzrzcem0YNvP9b1E4PzFMDT8R4058lFPK/ki
	 QgOY9Y0e9yiog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1C9C47DA2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170545729637.2018.8310063134909951912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8254b18e76cbdae67625fd641267c472cda121c7fd78146cce135c2e7cb4f27d
Date: Wed, 17 Jan 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705457296
