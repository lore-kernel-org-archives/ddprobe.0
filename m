Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C426A4508E5
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778174254; cv=none; b=WjLVfuo/viVJPfK9u9LfBmQKqEdOY7w7blqwpL7CBBk4QA2HUnHynq5pOVbMVNbkgjNHu7kXsgj9GgOujnjpxvUQ4lLIgzf/gOF6D/yM/oq8bMDso7ULSxlz89xrN3j/1P8ijC7mfGGxsEd6NyxdXFnNtZcHvkhTpfEClxlNxqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778174254; c=relaxed/simple;
	bh=08FllUl0SLwzj2UXWFVd7gTb9am9lJgJAdgNeIyJ+hA=;
	h=To:Subject:From:Message-Id:Date; b=rb6v92/0YkPP2TlEisnpjMSVo8+XpuRgXMu0t0F/Wrx6q9WSBvrrn15sce8Ui3T4p0yqeaRr/pLhStc/+1eFieOqShiUB2wutXCywLmZG7NjqAhGFQOh/3tdliEyFZ0bJJtoMXN0s3Uf1MMu+EMm1LWf8OK4X0moKuYYzoP5K6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhzYkWqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhzYkWqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC97C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778174253;
	bh=08FllUl0SLwzj2UXWFVd7gTb9am9lJgJAdgNeIyJ+hA=;
	h=To:Subject:From:Date:From;
	b=IhzYkWqs7stArREiKVApw/cQ0ec8jrki9ed8ZcqgblXnI0C+eMW3E1acLGpQOMp4m
	 CC9MuXsWDsFHZsFSjOUUumPfSOzynToGu/kQUsAMXqk6zjGnBqB2wD6b8Fo4ARv74S
	 lSDKwH3nmm7aiwsR8xjml9+79CvCPY8y9QW01LZpQaFgNeMp5HGpMl32TEHksw2pKW
	 z7g6dSpUm5fplrFbsmQmrzB9AAodGACjoyIVTRZp1Pz8CeteyQxNFzaBEfTSdJWVTB
	 KyF6kGMRGKudFKUYGZYbbI6RSo8sMIEPGJyoZHqut5wdTmoARo7ZJNFMrFifJ3nRiX
	 tDlv7h1VUoL+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA959CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817425368.19789.1545187504931225808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32477bed17b2856f5fc1e1856862845a067a70b1237c7986f2eb0fd0084f0c0b
Date: Thu, 07 May 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778174253
