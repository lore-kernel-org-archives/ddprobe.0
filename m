Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AB51798E
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714457543; cv=none; b=c2yBK/SAzicuYm6Zx1KV9SoHti6eKpvmYOCccUy9kJNb1hvtY1gvOzVPNXkqXSOzolUgDK9mFf+Ve/XuYaRV1XKnHar6J2S1P+PISPC3YX+sR7wLaFSWEhaBIDXpMY+p2hC5djoCl/Gv5PbP6yXDFw6JQaGULRmLPytEFzUGSzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714457543; c=relaxed/simple;
	bh=8PfbYikTl0gF6udxFUWTdEYjqUHU/mOPpip2YuY3i30=;
	h=To:Subject:From:Message-Id:Date; b=tHcsEGCYsoNy/nLygDNGjf8ZmLdgMN9OrVxJudgGpea32d5zkz4WH62UKCGyHQFoIr++JV7iCJIyUqgzR5Kshr3dgvMijAijJGjjyC2T5z/lRz6u3OdihOLCFyUo2DqYUf+hIMOuqmDWEYjLbFvZeG8h3N7rxPGD9uYZsbr3o/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuTUtJmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuTUtJmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F62C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714457542;
	bh=8PfbYikTl0gF6udxFUWTdEYjqUHU/mOPpip2YuY3i30=;
	h=To:Subject:From:Date:From;
	b=OuTUtJmN6sF+xjPFFVRUFvws4cL4IMcUqBWfZFQOli7qxOY/PRQQNeGkCddl1QlZD
	 FkBM+Bbl+FloaR1kXAT+5icz4YX0PE5GanffVLNlPstBmifzRzth0TXFrI0hWN1slI
	 F0PeiZZWfSo2teRCTbSlA8lTjnGShjJFBAFUkY1/FcfybW0mPN3inCjodxgJPvzXp7
	 Rq4DLBu2gvs/1XspoEem0gTuoFObCRy53H5//dZxfBkMW35oYzLkdiIoVa9AzMvzjo
	 q4xiu8CWU2iAsBZnxm4k4tfm5ubxlPX0HU3JG/a0x8tuzmhM5cTH8gkuahol/rxk+z
	 Pn2jhbSwHRBYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFAFC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171445754277.9084.11731941116081392496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b066b5c27673c48d69918e5126220c0be0c26741bb81e0f962620dc57117d7
Date: Tue, 30 Apr 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714457542
