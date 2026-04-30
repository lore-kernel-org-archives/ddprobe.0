Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CE140DFBE
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777508254; cv=none; b=Ebe3uHVnzTWJr+OzZpmyBQ8aQA4krj9YPbpWH73qGoWnazAIpLTExbyg9JZ14F1AwbNZU+9cjMS3XFOO4pFSNj6C+4w1Wi+14YVowE41KVanEZ4EbVHpgwgHNr/vavSfXGTWwMOWOHV4Pil3gNasDoXyZtXaS3tRk+9nLdfeTmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777508254; c=relaxed/simple;
	bh=ArsmCp2gXXbnnxZkCvffVM4TWMzQvzTuIMbuRPpavEI=;
	h=To:Subject:From:Message-Id:Date; b=E+vbo1SaIsYJlGMETEuT/CjD1BWwwny68d81SrtrGnu9KtJjBqHfoAeExXcHB2V4Mm2KYQf/sFNVYLnJemBBL+fW6qUg1Af0dPaIr2BD/89TEkMMoLvDp43Lqbk2By6PmP9LGjiw+bze9wWr6K/AIKHPmGkFDrdGrxEUHJajLMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvJLgaNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvJLgaNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B862FC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777508253;
	bh=ArsmCp2gXXbnnxZkCvffVM4TWMzQvzTuIMbuRPpavEI=;
	h=To:Subject:From:Date:From;
	b=dvJLgaNpZolf2tUvE04B87rXqCPLyuVYeOm3n/KUrBdXghvL8nCuC8Oj1c1NXNuAD
	 PuKaCDThU9Ax3mcSHqqx0gvmM3W9S97rxdhA24q8+BI71kQ+cG5xOstYFY6DDOO3C9
	 xHpwNVu1lsOv9tHjnK8ncVuWnXX99Z7ctVDKeaSS26DFLehWLBW+KiN2MpGsEZkfsX
	 v+b8eRgtOIoVvWybczM7aUCfYrDcgKXSzTqeUtFVOsBxaPanAS9/sI3rCmHmTvdFqG
	 FC/XbJj5r5FCxKuo3zq+5YokvzEHkhf1VjeaNScyljNrYGe2+oQBYQ7FHvNlk0rknk
	 upaGGkCAst+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE2FF887E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750825368.23987.6861774363916041820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5717052ad6ceb8aec04a1f72e0357ef446f067a55125a5289e8a79c52f83f3
Date: Thu, 30 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777508253
