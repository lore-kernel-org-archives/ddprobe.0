Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A06E1B81CA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776586654; cv=none; b=VimUAH8E2LwBmbvwfHtR9GzfHUIeE2O2dAux7mHuf2q6jQm31BwXad1RZ6IHqht1T/eYyOzIkV+sSA5IR2KBDOsSuxJpcS5NKC2z6XyC1ZqOtXMfzicUiBZoTTMlk2w841ACRCFiqP5n3eQHj9p1QzUq4MLDzyfz43UjaIGnOlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776586654; c=relaxed/simple;
	bh=QLYqGFT2VycMLyZUNTleAxljXMEXLTV68FSTnQwlHlM=;
	h=To:Subject:From:Message-Id:Date; b=JQ/sEtyX1jx+mB4osN3UNCQwqBj/RLBuZ3C/Wxfc524cvvSe7/vWcZizaKUcJieSJ5hrdhAphRQn5xNyVs/TfFEESb0c435uXJoVyBTuInVZdENpznitIDdZiiy9pwEJDqS3wV+XQik2scc/XWQ83tP3uukIgzGLSrA6/eJobts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDoNR4CI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDoNR4CI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4667C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776586653;
	bh=QLYqGFT2VycMLyZUNTleAxljXMEXLTV68FSTnQwlHlM=;
	h=To:Subject:From:Date:From;
	b=QDoNR4CIA04N7GHIOTxgVCVyBHdLC4Nk02oTIG8r0hbQB1MaBs8Xqcwzim2Q2pQ+3
	 d7sxj4o4guoHBuLwQDuWgVYPzToZBQ9a/c71Rhh6r4xFYMPzcbb9K8nXaInxwSTFdT
	 1KSuLJRAhvCPPpmyM9tSPxQIyMqCQuHTTgq7h/zamctczf4BY+E1082JvIRQdIwk93
	 mvsJg4vHDqFmKcfQxqo3TV0mLAVsxDsiJckf3b1dfSZCO0dZHulqT4z8kbu+Mdmucc
	 ZFYK+R791FkaXXzqDJhlmJJJjRKVHSdTsxGCuHUKYbSnG1ppPF/6uPAILuueipZqjG
	 lLFZV/nGP3cGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D1AEA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658665368.10703.9107721566512308357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9bdb9b478ff283401d7c5ac596bcbc5b4e2eb3910214546a7f7748fb2ca0db
Date: Sun, 19 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776586653
