Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528CB5661
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746563394; cv=none; b=TvK8Vh9Vm/Naby2mtjyhmZRyplCAxOfJXfvXr+b6vzdM5fk3Wpt/JaAxgWfTMxqrFdV7k8X/nuysl9XFeytfv3AyzPFtEXbZFmdWGxakMsOEkesl8inY8v+Er7IJfWEqQRd+xMmACSJVRG1UwG2nTAyldbkCEhF+JrpBCSiNa08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746563394; c=relaxed/simple;
	bh=AWLMnFme1olyDXBxK8mIsYF+56xlyIZDCSS5fe1ABrs=;
	h=To:Subject:From:Message-Id:Date; b=AmG3zkwicKRDzsvSZLB5/BRZg2E+0iIu+GSmbh95G8RMQ+HGXIdw7s792QoDSmJQ49Z2LjCpbcnFDvo4w9xVVegsLgTbs3XihxGpaHNj1zF3FueUjlC0wgivf+2z8q0i3y+B9N8vdGoxvG9IGJEW9dt+5F4DfR5p73UyxP9HxU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDs52vnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDs52vnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8DCC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746563393;
	bh=AWLMnFme1olyDXBxK8mIsYF+56xlyIZDCSS5fe1ABrs=;
	h=To:Subject:From:Date:From;
	b=hDs52vnvadUyRce8M/vR9Sjt0jji2eQewhTK+OlrAFrayaJjNKuUSR/K/vmRAUrBQ
	 oH9Fw8xMo7H17y0+1Y3uGAbC+Xrrk2XSeWAlZLyNa46hTBg+ggPM9nz6PLEDShpw9s
	 EROSu//BITeGrtcyuMrg0WT2oLeV7/ZAGZTvHM0xvKXpFzhM61B9DBEdFdQOoQF+6o
	 aBQvMHytvukR8zZzwPL8k3xhME6JgRjweR0o0O1z2n5/l/aXDtMc+wVD0qQmvy3iH6
	 5gE1PUib7asLQMdB8FV/8j55HOnYfaWpiTOMSJ0xwMFdyLpU1rbxTmjd06ofylQshv
	 ewsRSDXtjHZUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9909AC3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656339357.16823.18270542191633422132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b8de9588217d10606258ae9da104d659e2db7584356f53047d008959dff901
Date: Tue, 06 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746563393
