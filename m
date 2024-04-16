Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA8879C4
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 01:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713232163; cv=none; b=DyQeDrwE+WibI4hCIf/qZ9Lb6MnZLEv6xzJ9DHIaSsBXJ0wci96kg+Wnc8SCNfkJU6F/VY93vHVlFxbF5X25Y4sJG1oESgKsnpT/ug7G/pyrTz27+yH31gT5O2CRBWCxuefu8KLbQynMuM1BLVj7zPXkwOJsB3qy8EZ81ikGduI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713232163; c=relaxed/simple;
	bh=7KwDlshq/GtH0Du8gNnkdMh1W/ZcP3QOnigj5J/2kkE=;
	h=To:Subject:From:Message-Id:Date; b=GByFiqe9k1YfS0Yv+lTgCGdxdxE2OfsnpFoyUK+U4BslIKKkdsYF2hxDKfToLmLE7Cke3ocZPHb9chDJSjYuJVWy+hAtBTpHB4sHz0v/n9NPG8kOLWdcVoETnUy1xMmylL8vSLAxh7upjom1K3Z5HVUiPknefjHl2U/hpo9GHpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlLsbU5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlLsbU5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2E2C113CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 01:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713232162;
	bh=7KwDlshq/GtH0Du8gNnkdMh1W/ZcP3QOnigj5J/2kkE=;
	h=To:Subject:From:Date:From;
	b=DlLsbU5eWrInWxVa0fYnziJwieybDW4xtUM6gZG91XXH3bu0041xffptamjwpYE8A
	 9yhBGMZu+/AatCk5HlfMOR8q1PTLpTk3wD6wC/KXrYqbjNxc9rlBrkZA9IIhEgT+84
	 3mBztoTjanf52a9Bo/IO32bQkuuggQbBNj8bhc9r74KhXuUdZA+iuN+h85C/CzBgKz
	 3oFi8kINkRBXcIihpwfx+qKlPMG/mjPv4Zf5AkQvQDiNSsbKwClYSO+gr1UFkIK8EY
	 0FFCJsep5Rpr5z65UO+GTRHyfVqvXY6Z1/7kBczYOCta83FbSHCu4SdZ4jpULMqVC5
	 cNVaAS94C6Kqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAABEC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 01:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171323216275.23534.5505225015003617164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e877a399d04c4016bca05dc5584ab03da5e36836d7d5141c92afdfd0be7b6684
Date: Tue, 16 Apr 2024 01:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713232162
