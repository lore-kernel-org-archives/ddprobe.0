Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5E91DFF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770735234; cv=none; b=joamiUmZ8G+y3kDz20El4mdmKknMZtmW+JkSNpYUUihMdERNgR97Mu+XIBXn7272Img8anta5vQtYDeiiaZMcKHq7ibr8h2W3tAZ5LAiHLNLd7ZY/A3DfgP4iFel+9rPHOUfOF6pbkHbvWEKOIAZVrKRW/kNy2g8KxTZS3u5tQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770735234; c=relaxed/simple;
	bh=34AzNxtAKaq/89983nqUi9FRHPdOfAtucAiPaTE1usU=;
	h=To:Subject:From:Message-Id:Date; b=VczjA9GVXjJTFF+TURdyioR+37byI+PuZi7fLIFAma94yLhcIkimKWrzvJ5YOvDJhMDz9NPnYxvsknkO0/PkgqRbnvrkP7Jd7sXJxspJs2fItwTirs28Q3/BfNRc1FbibWmM7knknZzOJihRSAGRwxEcecFFFy8qKGQ4AGTfXLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzvcsHhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzvcsHhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF9CC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770735233;
	bh=34AzNxtAKaq/89983nqUi9FRHPdOfAtucAiPaTE1usU=;
	h=To:Subject:From:Date:From;
	b=lzvcsHhp93N5zC/tc7Pah7CY1krKxhKHO78yPZ1o6Pw75tMqy5kWnEh4DSiWPq3IA
	 s9I88i1QZtQUse8TXgj/+Jp8+x1LkD0Yf/CaKV6M/HFn+yipKPpisB0OnVbfFEHcBB
	 xBEo23FQHbesVHUGwjjDEn4i+MICydS8Cl9/MDnedCetCIIevdzVnDo4bf/fBZ/vhN
	 72xLvB6dmYOEfdy6Pw99rAu6rPlHWsHRBvTuXwDOBD4LZl1YxblNte5VP/d3G8MfVG
	 EvdHyJG/ZxUMP8CVoyua051mX8XQTjfrILbAeNqOkDh7Ag3fiuoGvaYZlQu94SehfZ
	 5nS7ZtiWT3qCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94608EA8124
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073523359.4130.11698042461828374865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1e5f826a7e764382bf0c219b4534e569af165ce2a2a9a66ede974e4abd9f5b
Date: Tue, 10 Feb 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770735233
