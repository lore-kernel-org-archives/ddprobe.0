Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE7314F70
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788089434; cv=none; b=h38J/pW30RCryCSlEVcJXDuIw83FMqqoUO/OTPLvcO+tXeyhAKI5zUY6ymlT2fHiljQMea4mSxUa40hSiU28dIeRzw70YWk3Cpqcol3694ll7QBRTwyP0E5Sogte0OfB9puJzOfCpWzJz3XhXWedya2YmIjdlPFolXegnWZvoRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788089434; c=relaxed/simple;
	bh=xhpNl/mCtuBGmTmlN+WsyoqAk/WC/MDKyky9R2ZC0LM=;
	h=To:Subject:From:Message-Id:Date; b=r1+aNbSXLIZLfjcIvljVhlQoEC7edH2XEpIvlXfP5YaSU/fbI/ew/ny06Egtg+ermhmc4+mY3l0Jpzw7iSr0GVsxa+LKc7Tp3ZZdBr3Mumrmup0Z6EmTMyP3kMOXDmDIpQ4MlBgda+1KaZPY7MWbOoYNuUZZYsrRaMffoaPfTaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvmhfrAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvmhfrAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CADC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788089433;
	bh=xhpNl/mCtuBGmTmlN+WsyoqAk/WC/MDKyky9R2ZC0LM=;
	h=To:Subject:From:Date:From;
	b=HvmhfrAaK73I1Jq9xLoq0mYijGYuKESpesQ5XCQ2jdpuDOpVyc1hkPK+6FkTEWwBr
	 NiwI9B6LkvA8dmv/SO2Llr6EA2Mzzii+4F/PWVs8yxlejkMQ+/ZWvy1zCWuGlPaDjJ
	 s3KBRh2Ii+1uTO2AnHl6PBszK5l7xTO8EX7juoyQbla57GVPu0vhjt9Xh7AZmKG6/F
	 tJTc0ot4jkoLGG/vsaDBsyBkkzhjc+QGsW7TfZD1gU1MnIoqF4vuuBPRnOSeFy0fsl
	 WwJppdSEG1o6p6sln2IIpVfnqhkfHQwZrYl2DHbL787itq2QPeR+3gkInMYU4luLw9
	 qtkP0hDZWdLTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC1FC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808943368.26774.10772464137227512671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83717c3455111dd50bdc720215c471d6ecbce94c66a85f7c91e9244726b17309
Date: Sun, 30 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788089433
