Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ADF25B0B3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782961114; cv=none; b=UCDPhoe/Y68MpZCfNF8j4pY2GlP/zYrz/Jz7PmwEm0HbkCjwPIMDO71335JiDSz9Cr2Rm4LVN2Drk1E3ErqDz/hObbnJ1jf9NnnN/GsASyK+dBI79cKVzQ7aVDQSO3dGFoFhsUUt8KWL4ZD5OJKL3KLUpdgS3ZInn/mvOCfIxzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782961114; c=relaxed/simple;
	bh=OS2tTzwi7ejqlzq6Jac9lc7yCz2MY05qJqiu0T3z0LY=;
	h=To:Subject:From:Message-Id:Date; b=ArNh4/5xQpKHKr9oSlpTgWIkj33Fo1o6a4eSONiExLhvYxpgWKVGv28NKQAcE6PUw0fmkJnw5fCktV1VLaZAR+9OAnOrynqwnpOJzRH22QZbJn6D8CvnxTpPeRT7Q/KgjxXRN6/I+rbEJuIu9YnlHviLDo8IDArdDtalr1Zs28A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZO4rVu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZO4rVu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF459C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782961113;
	bh=OS2tTzwi7ejqlzq6Jac9lc7yCz2MY05qJqiu0T3z0LY=;
	h=To:Subject:From:Date:From;
	b=ZZO4rVu/1l4pkIx5S5zDcge19ODvfQ4cQzdbvhnVhgrhQ4MuIYyuA9vI9N+VbgBWB
	 zEo15d9u5QdbfOixy6DTZ8tSNvOS/8GeV3ClIhJXohna1x02RNYkJ5qV5E1miflHkk
	 UYbTNRus5bePwtMRIQiuc7TaAWbllAbh1PUMoiOe7wFXsZGtDYrX6i3K339mfZVfmi
	 73wgSfgIuOxXEOwy6Y57PoMjpzXN+FwX9nPadw2HPS6DyVCEc628NDd8InhdGnri8H
	 wpo3hFGZ2/YWWw1FR83rST3ljWxBr5BrUlhqokj1cmIfKfm4XV/q2h+ch3adXrrDEa
	 LNzOpXyf765Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1174C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296111369.10049.16819759637140327694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1e9b4a4d2f0d1986a3c6138d5ef01b35cc919c2a7f58eb39425c2ef85e5d35
Date: Thu, 02 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782961113
