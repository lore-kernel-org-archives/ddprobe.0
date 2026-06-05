Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6330E368299
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780700674; cv=none; b=LsNYnBTsDTMmW63kbQcrgV2jTcoP3kSrF5uvTxgbHPgYkgvcOSGO3CejJwKpBd8KfW6vCx+xCxATbCWzIeZ4QakanA4x5cXoPe7SvpM+Z9gqsnbES7Xqrle9W1vAIcTMi2uQuB5Ig3n25PJNAd+ndz8CFz6Kho9EYwso9XKF5H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780700674; c=relaxed/simple;
	bh=XeyPyIEcHXQXdxprM4EvXc7vDqZ9DM3cjiPQqTR68b4=;
	h=To:Subject:From:Message-Id:Date; b=eg9cbM4wmE5O1lAKItfQ94xeOw1Ya6DU9HcYgnuE0v1jZ386fUz5GZTr+7YxkOTOAcd/6J0dz642rXlvB1Q3PjskGcF6h9bGz7xWZwS7fe2J7J895jQSchQA6xhY+UKLDMxSJ0Np5UbKUA1xO6zXf9q7riyBNHa//PSMjOVptXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFz3HJJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFz3HJJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D663DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780700673;
	bh=XeyPyIEcHXQXdxprM4EvXc7vDqZ9DM3cjiPQqTR68b4=;
	h=To:Subject:From:Date:From;
	b=NFz3HJJSMmhXkdmUKiFesRvC8vGA1JzvB0BQysGK0Mdbugcs63FXAojTl8Deca5UV
	 xaadKFdfA4crrmIwhUpWOXFVi5Ibi5rCYekID3m+YsKHgEiwMyxhfS0NxJ8TukehRy
	 6UyQFiEERqi9dwr+NlSS6fIVT9Ws2OcGbZhH204iGSGY2r/PTtboUxzOeExSiuiTwG
	 lYeflTu/KVdDZxTJqG2dRtCzj98bRly7j/xGddZohF+h8zstS4rz0S9dm8bJA+jB/E
	 eG6sOrmLnEXSw1l7M7G7qIjeWwfTHWV62Dt3SWaYX6hlxDRo1Cm0sSKpHF3xkj8koP
	 q4BU5P2DDFrmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3357CD6E7E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070067372.19133.18154057640792094613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85e0c0bae3aca5f58cc1d3e41d97f45a8f956cda9d3b58dfb39a2aaa881fd63
Date: Fri, 05 Jun 2026 23:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780700673
