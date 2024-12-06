Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0A019342A
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733455554; cv=none; b=b6dZvjWEK2UlzCnnm/az50pMSZkl+qlNCVlLbQUaHGXFTpjHTitMnv86iINpXCPPAzdN8xykMZfaij62Wbob5eYi+HcBRWk3fI6OatZJkDU+O+Yd8HbSj6WPtL1Wdl21w1bvSAoCH1AcdSC2TLmYQHHUuKE26cD31xWLHzjZ1Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733455554; c=relaxed/simple;
	bh=gd8hbIOVSVGHEXVO0jvBa2ugWDWpS2qxqtlph9FivcQ=;
	h=To:Subject:From:Message-Id:Date; b=JV/eXvJov95pLOJp++GkMVuh6pYyMu0ACFcP7r94RjBK75fyymjemTx+bSiCVtTFhGpvk4NpsNZyRX4ARbpmotJSNc5P0WmnZJD0oA6MTo75XGz5dXapvfZljol7jzfA5aQzOqgR96exXeR5DDzQJzDzae4xp1j6ppK4/YbRlww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xe9rQEvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xe9rQEvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F96C4CEDE
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733455553;
	bh=gd8hbIOVSVGHEXVO0jvBa2ugWDWpS2qxqtlph9FivcQ=;
	h=To:Subject:From:Date:From;
	b=Xe9rQEvw0nNEKaIcEUivBrdw9Ro6tBjrzAPKdOjbFk0P2dsSy0clXkTwcnG/uEtYB
	 LfwV/vRpYtCEF1u7FNlcQ+Mlo83OWGxMZS5k6a8Vj0OKBjUDWGcA5nmcC0/lM8aRQu
	 SC+wVZV6KPt8rfBFx64tF9jvfJkL4N3JFCiyHrOofnEe9jUV9kAXyWOeNqMIae+j8m
	 s7Z6EEnwQhSOAMPTjqPz8ECfpznCDyNv0r1uqB2ZGxnntjVpnnA7z2ALxawRa/kfqs
	 bBH69dYL3M8KLUxBiUfQ8axslqwl5e18b1WccXvw3AZSU3tfWmHXHTeYV2FAplFqyo
	 Iz7c1v2vP8GZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD6FE77170
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173345555362.29089.6735290869063865733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d07f3c055f44ba8e115abc8a0f283b3677c43a2c617549f6dceb7de57ff13d
Date: Fri, 06 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733455553
