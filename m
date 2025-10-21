Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BB529B239
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761040194; cv=none; b=YxkD0fv586F4dTNnZBtg6bwINTisFRsCjfJOMyMxS74DPHYwDp7VptA/6ww9q37C0Zp1zRBWws1LbHTAQRljGuWJ60fZ26Umb5arNfs4sTL6Wj4wqNujsyKBL3ZYtStv6Z4/xSe2U7M/FUv8yIeaxkpJ7TFhI682lHdLSD5RRGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761040194; c=relaxed/simple;
	bh=mCDIpGLEHv1RzLiSFw8sKlQU+PinoKNLiMAK1AKk4u4=;
	h=To:Subject:From:Message-Id:Date; b=l7wxuAhdXpb+dQl2lHJVmpaI08qI4ApU66FHYr9G8gov/9dxscgpqjc82fzzERtNu9bK9GH7gCATkNj9+HUHEIYKxjb20FZm/16grqm9RAxXVTeMUQkn4auuxCxtKGCRloXYFi3pje5St1CMc0U0zMrwz9jnTCn9fyn9JyBMwNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t58Trfse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t58Trfse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D0DC4CEFD
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761040193;
	bh=mCDIpGLEHv1RzLiSFw8sKlQU+PinoKNLiMAK1AKk4u4=;
	h=To:Subject:From:Date:From;
	b=t58TrfseDitsJa7XNcNIi39qJqGheB1f72XXoeeqtFdv/3c8jvxg6gGAoPpX5KEO3
	 JVMXTvzdvpQNDRPYNtZLL0Ne0HK7uoilpfg9hL7VA1jajBR/ooyClgQnWvWwXwpjM0
	 ufsAnq8mmMeakaueQ8XwLk3Kd5u49yNQisHEd7em6ChuJCHx2RlX5Ll/GWXUxzcm1Q
	 TIyZriBsEVJfnSDIiUqV81wR3+RcWxzU4TQLbdAb2Gyy+xGg7XokzP69G9WreKnv5f
	 jnUbfp2UI2mPC0CVJd3eqOEn4AuckzV/mnPPg4/NADHNSf/2g87On8MvwmR68VqWT9
	 1ZAGazCP+eOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4AACCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104019357.15891.12998070939395716651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f7e23d8b1ed1388cf6b70d43a0e6045d21e67d7f485b8c13f21bc7969d2fa7
Date: Tue, 21 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761040193
