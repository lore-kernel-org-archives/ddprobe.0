Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6525E305690
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783954114; cv=none; b=FZ2MbhB5yjT7jwSJrrxB7PTXK8YZNc1oJjiFvSlKS3J0mQT8shLdQW9Asb51aQTQAbm4+nR6eLXuHwrofgEjvX/JOZySI/w62ubZpO4ccceqII9K71YIK/xC3muMjytj/spn03c5rVNCQ16KLkLEWT7elKWChJMFTMkNGw2pc3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783954114; c=relaxed/simple;
	bh=cBIxmdCm7+oojvPCQbfpyectR6TT+5Um/gEZPp44PV4=;
	h=To:Subject:From:Message-Id:Date; b=modSv2eIwQnqI00+WADwzC0hLnisQTN6WxJcs3qBzym1ftPzv1pQoW6d4NAkFVH1v1PSNOl8OmrP9lUYGJWALwvjQ72igazuQQxx2DxElYRsl5eEqFFt6Kl5wB6xjHTVEwEeLtF1MMttmJagn+lY3qviOy6/plSxcnbyVE/j3+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hoxg1iji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hoxg1iji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC09BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783954113;
	bh=cBIxmdCm7+oojvPCQbfpyectR6TT+5Um/gEZPp44PV4=;
	h=To:Subject:From:Date:From;
	b=Hoxg1ijiK2RuE4zaqC1ZdNgWeqwPhN0vvUMYd3Q2tuWdf+OTV9/GA2/583oaejjE8
	 UgHh+hPx4tJL4xq5rd7N84WPfT9M9jWfqWCACX400LholPqluBltS5kS6wdxg6EM+V
	 DT/4bGA6oPx5aM5/wGh4xgL72sxQLWM5DXkWbzFvieaQTTdw2fOVumZswsWCH8iy2l
	 3++m3vO0+2NLVodrA1D4Woi8KAlLr84PD3K1x+UL6jZuWXGxBhdFqnH/+ZyWPpHtRT
	 WXWuTy+zugROrX74bnXCgb3tbBgznG0tJQyuWb84U1iDljvZZplkpOCtdM51EeRY2u
	 r4gfG6IE/ZQKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E2CC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395411368.26289.11549997011201804689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49a774108eb489e060f412700f63b7542d9503b7105e560bf61f1d11cc69d65
Date: Mon, 13 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783954113
