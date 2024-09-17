Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F22166F32
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726573553; cv=none; b=kbyAFgLWMnErH8N6ImLqtJSuOH0cv2Mrm0ToRvBDULZMKZuKNcGom4l9dgQO9SKAckw9JE+7nYn2G+7MgdlYG07EeSLe72LJacN2VjYSbFO5N2SeH+qojUM0vhe5kEkXL36mZkCPyHK3Qp83+daBULHMA6bn6gaVaD+Ivk18zA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726573553; c=relaxed/simple;
	bh=cB099ffwegUZ3ryXfY2PjIxOExhtvn1I6LMAPL0dxiA=;
	h=To:Subject:From:Message-Id:Date; b=HUCCphrtawsKS13NaBKwTpotjBd5hDwWjpGbOvmE6cVhO3HuHkNggR5one5HX9tlRjaQeq+S8M/XrghXzoQGF5RnzTW/GHczcN313IEL+NdxQg92MJ5LevCwnOICb5jaWacLuEWZEj71Nd57b3PIpMBEgMLHerRQ8XXKhe6UAzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXgCacOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXgCacOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E29AC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726573553;
	bh=cB099ffwegUZ3ryXfY2PjIxOExhtvn1I6LMAPL0dxiA=;
	h=To:Subject:From:Date:From;
	b=fXgCacOTwAgg4WVpmGsM4ffL4SFxMR8Go/nQDSty5LIWvpHCie7ESRnuK9/rlq55K
	 LL+DKhl6Lx49j+5wzOwgEIoVl6QD7k/1ec9WGSARGm3zX3U2HnRlxBVl9hCqAOjKEj
	 nZu6v31sdGJIiaWNw5YyfSkFuZlie/hqkkG5M4ajtbewnItL36TgJKpZWlfgVsZkgp
	 1tLqw6fCrFIQ4vVLlCkVUld5v0eX1IqyXIOtTq9pfTt8vkTi9nn/VYGbhDhaeRjR7q
	 ekQssIwXn2SsiHJ8/uBfhHj1fTr8oT1haz4WWvXgYTfO0XhBGDnXDlw2v1/M4viAlU
	 LqGaz1lwHaYVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95735C36015
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172657355360.1369.10613115260396111111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a852971aca46db33afe712bad2ede5abc013231bdcbdd062f251e3b14f8865
Date: Tue, 17 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726573553
