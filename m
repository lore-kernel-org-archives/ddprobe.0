Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4667B86344
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739687334; cv=none; b=G5nzOLkNWzd4O/6jav8VbubFzmGurv3qgQO/Icn2suneZD3Tw0MGw7j6Zd8bS2hWK5HUttUQ1yb0kr5MfpJDKQdMMBBMRsYnAjZBxNiI3UslMD6FCTmR58Fa9BbaQj04VEU9N6SmzCaDbBUpspThhd/8nVgzFmCn1ukCWpHqiMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739687334; c=relaxed/simple;
	bh=XW3360icUV6xFo/2vlURUlLo1u1Lz1LN5peLqtbl6BI=;
	h=To:Subject:From:Message-Id:Date; b=kMv9PKNv3awfwpe5Auz8Nvv4nPsFTpjLRo72GCOqnoo85BcEhi0gdTVyQO9U8fa4BlZgcDDWGUSk9yAnjP6iwbhpsZd2BC0DBAlVefX9CzejD4eLF1eDvR5qL9oCN/tachQNOg/VG8BgFnwZpC7s6fHTo/M/Y7HcT53rrzlUVSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et0OrJLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et0OrJLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FE4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739687333;
	bh=XW3360icUV6xFo/2vlURUlLo1u1Lz1LN5peLqtbl6BI=;
	h=To:Subject:From:Date:From;
	b=Et0OrJLgxTpNg3UXO2XPGBRIn8jGhUoj4L03/ZZhDECvF3cyxydFgyVUmFkQpRurI
	 l9KLb/SMNkL+Acrit7YOIigTaI9W6X/ialNmQ9EWmbbFAIaM3/4yjnVZqSZVRCgUj+
	 zMMC2KC2iYxHreZBvg6AXH2u0pFnaNOUGBIX3YS0Uc6xglWhrChVP61N2YdpIDa7vu
	 khzuF4URVO3cvWxAII5ijLIi9oGdtFGdK+B7W3TSG3NK8+ZS431mW+QuYe4O1zQvJR
	 bjI2uMOwkfTdxhN16FxG0wA+h8eEnnyCyXq7dWeUHZAeKVzTCNWrKJlIRYRo8zlF9Y
	 lnNG5caCAqJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96311C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173968733358.7988.17575771321733764437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ed10504bae0ba44156e5fc5e4d5f648164d8c9550b0180e426237b6791a564
Date: Sun, 16 Feb 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739687333
