Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7BD3D1CD1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776724055; cv=none; b=qCSeiibScVeISgmwuwQyaW0dtgkMbfUPDE193iY8/9y1zk9/lIQqyW3YL8/haknOvwNrrdtb2Af1AZEOa1cI88iJJDxRXIDIXA1b1x62s/OkBtBRS0KHanz3o301LC+v8ggrBxbEuBLM/5xmkogfVZtfYEikFy3Zej3/83QZy0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776724055; c=relaxed/simple;
	bh=/4CpeRh8VmZ2KdyNUx6Xpcg3UoVFXkUmRJHLja37yNE=;
	h=To:Subject:From:Message-Id:Date; b=GP+vvkFsvmglHwdULbg2MhTC1CMDXLnY29CDdNhiV/Qm7KwoJutrx2tpeYsQaVj4aZ5hFS63XhCAGoOb88htlvhhHnv68KBRLDcBnSeu6aJvbtNyydV1lE0fjl/VKKi53gNW6jhCLszmS1bx8JkXN5qhPmP+jyd8nbZxZkbO+4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVyoio0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVyoio0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E49CC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776724054;
	bh=/4CpeRh8VmZ2KdyNUx6Xpcg3UoVFXkUmRJHLja37yNE=;
	h=To:Subject:From:Date:From;
	b=WVyoio0Ozmnx5RUst21uCkfzm0CLYo1At5nQGBdCcugQkjxcvOGkSayrT+fcaak9B
	 CVfWmjTbhcACmamSDfQjfnbM9AUaDv5fHLHCWDpMlguq9vdgMepmAJwRtRddimBJDr
	 qJY/7xGpl/EPY2W1F9f0KTujH+nS3H0UhtdFd7ZSsksbruuD6rF4K4PJCcGRExqB5B
	 cq6JgaFaXZuiewFK6bLe9EVjL0/OoSYt815NZpKWEn+RVIli/gAho7hB/oOQ6p8uMh
	 CmdYGQN49C4m6Y3r60un9oT3+AIubC83WfcWSSek3Ie4/QOYnKCrzxxhZu/XIuyTRz
	 WEOQOlUBl7Pmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5ABF5A8C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672405368.26188.16878387986433773508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3649bc37365aa4454dbb007bb350bd19c6d1b5b7d237b7ab095e760204d55f7
Date: Mon, 20 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776724053
