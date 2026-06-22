Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5283A75B6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782132994; cv=none; b=nOe2lUbHuKD0tcDm4MGIG0nQPTbMhFf2xGDfmNTUGbbreR4xVqj5oKf1hT5bgqUdOYhXCfTiATDiI5fA8E+fqEUIgF4Cel4Cfv5wJb+jCizcubS9Pdd9cap+fGetM51sG74Hx5qPu61oQoeHnCTkvBQdnAvf995QRhEiqxTR+8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782132994; c=relaxed/simple;
	bh=agcX/wmPqIMGZ54h0DhlrgOVU/i3pjWmY67mPc4FDeY=;
	h=To:Subject:From:Message-Id:Date; b=r+NV84IPhHF6qkwlhGuEVjVrbUGrSXmoid/obwHQCbIag+Xk9SY4QLp8kcGim2NZtyrEgNFknMT1k9uxU53pPRLYd2lEpTj/6cbl5OAjYvjuROimJYCy9xDVQqkasWnOpQiDI6UfEdl1GdyEnjtK66l1Ft2AcwzmMgB1wbv34U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+l+lykX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+l+lykX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C42AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782132994;
	bh=agcX/wmPqIMGZ54h0DhlrgOVU/i3pjWmY67mPc4FDeY=;
	h=To:Subject:From:Date:From;
	b=U+l+lykXwH+bISgr7HPdOSafZj62dCVv/2eaR0tZHn+Ll04lpQu2s1T3t50S7zqXr
	 uRO9utqUDUWLNNAeo4u7RkMGkjb7aR8i34Gz4fpG/tLL3u7CfF1uiaITEv68dXdER1
	 YGNrFcbx/aEXyJshigbD87drIsRxWO0vquMIoPRssH8tHNiUiAFZrU/u+3oda+fqer
	 KkXIYkOBepeDCloBFZ39SFt7u5kBEBUSZwntf/cyNTTpHXyBWuSDTXsvRpwS3rnIIC
	 6lK2tj4ljAt0FxER3SpUjdgNWQnnSArzLJasA/3NYWnmw7i3P+xEuX35SEpT4qdJM4
	 tjdDkCQq6RKjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B5CCDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213299384.24682.14438543912148160196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b6b23f78decd51a292285497ec5fa4c20037982df4aa8438bc83e50f682f51
Date: Mon, 22 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782132993
