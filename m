Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DB45381
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705741097; cv=none; b=dIUEDiMY51u7Eji6hyQ21R0xyvHswuY4yaDMKAni/kSin44m3HceV3+bI+1Vtc+2lqAx/S8t6B7k8ekfLakr7HTWka4Z6CypoFHBfhbP+zGbFOcorRLbTb9aX9y/F2slOH8Jrv3538OkHs95fgmGMwqfbFg2AXgC2sNSUC8rEgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705741097; c=relaxed/simple;
	bh=A1hI/zjkg5pvxuXzgb3Lets+Yn2ilkvhnqv7yNZ2iw4=;
	h=To:Subject:From:Message-Id:Date; b=Fl+p39azIV0OeGSHpRDjFEzLWudEQWv+HuI2irXVATuTHQ4iJVGYmterBx+1dx3WlXMWpNhQwUM99o99gfMgyEVnzppzwXcvHXUGYWJvqIWtMP4lCcAEKODcLTDZ//PscbTFpaBYJVd7ONPgSgaBIpAwVqy2Ok370a3QOHjTSss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqPWZ0lB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqPWZ0lB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7796BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705741096;
	bh=A1hI/zjkg5pvxuXzgb3Lets+Yn2ilkvhnqv7yNZ2iw4=;
	h=To:Subject:From:Date:From;
	b=pqPWZ0lB0C9Nf/FPSUDTcW90zqKUAAtSuApGMRun3rzC4JIcAfzW78FVTQXJ3FqwV
	 AN4QLoE7B6FQTbROEJ6N7YPovkvCK60nR7e2S0NBXYD9yb475VIILnfiFcgZVzEmzS
	 jhhcYcfm7gkNTpyrbH+NUi02ywVEQOuGk9Zpm/jmj5rtROfTRW1K+cUP3gBhl3y35G
	 WY0kA+1DtelXwdGfZGEX0iSM6ncwbr6bHHxH5qyUwH1UnaznsZKbLBVQLSr4/8XztL
	 L+8phGNLcc3dbjnSAeq0O5eBJhFEzLTFJ/8Et4kmlH3+TMwPoXWGfpOohByDS6sWx/
	 avbQ3WLnDBDFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F6AEC47DAF
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574109638.13005.2893022663481897020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88ada298096cd4925a8179c45bc91b91f343f124e4dd02447878382f3594a5a
Date: Sat, 20 Jan 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705741096
