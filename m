Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF4924C084
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743682194; cv=none; b=ggOXIT46zTqAH7Tiw4aQ/5MoltuHCOplB+F3opNkHUJn8pFeDoHr826ZTsJ7JJg6mCp2xSTvWuGZbbRS6vRUd9X/XbL993Yt6MtpwDFgOAyKKe0IMIT3SCGoxWEkdu76VdpB36TvXSViWpI3FtMdLgVfdqvvUrB/ARbzQseULFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743682194; c=relaxed/simple;
	bh=lh0ntLuRRYrEHifbAEftfrRo6HXteCzADfEKSCQBbGo=;
	h=To:Subject:From:Message-Id:Date; b=s7QS3taS81COOwEVi4crw6bSMdEiV2q1IsYzSPvXZRrZhQSmKz2wvjqtFCDMLR2yt9v4ee6uMSEEPUrbXLc99+aBaqgEtc/q4laUq1Erpgv/SVrbg4yxJ+w04thpgk7gGkHKworpU/Yog8oOxnoIMZjU7zPkvHoCXf0I76mhAkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJkc8lJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJkc8lJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F68C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743682193;
	bh=lh0ntLuRRYrEHifbAEftfrRo6HXteCzADfEKSCQBbGo=;
	h=To:Subject:From:Date:From;
	b=CJkc8lJmxz3CQ1mRk+tRgz9hfDLEdfTQ9Ac1IvNgYsdNgZjjEDeOgSii1TSI3C4mk
	 dghRfE6mJdKgpIE2mJdZ1ZywMisKuZV5WCp+W1hf/FnOPtveGsVaXib5j3NlUiZ3Mo
	 pTr8UtMNSSjsS2VZMebCsg7CC5IBjDmFXPzxuapXHR2oPdAfgmmP8lmdhQc8jfZuBp
	 CwRwO6WkF83LC/3Epgbh3/moLo78OzknRMa1otDsYH67uQ8jD6XfiQ+iM3HRcruaqm
	 xkQluH375LlH0XwV5JA19+ITFp68D1KQkLsZ2H5AgoiJ2vDbBkPWPtviSq4uFKgJs6
	 eZbTQq1fCRMcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D05C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368219361.18961.1856746333792113513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca43ae8d4cb31a018ac1654e4869bc9e4ff10646ae7620d7bdbc51904ca2a10
Date: Thu, 03 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743682193
