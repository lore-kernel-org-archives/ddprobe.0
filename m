Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0253733ADAF
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769705634; cv=none; b=nF4S8krVoUE3TXsVCzqenx5xAiYelPPu2l3z0MUk3EpmgBEx3sug67+4co1BmDTzM5cu2va0HxwYLZLKiJYwdqq+qEgoKpmTy5BZnYdzP6l9DLPSrX8gjRPivQWTCExLvm6k2FkL1wHu3JKW7DQmLMo1c7topAAqX2lFfQdJnLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769705634; c=relaxed/simple;
	bh=AIZMeB7fd4NGKR823VNUlrbpGoWUxRXZE1quak0ffEw=;
	h=To:Subject:From:Message-Id:Date; b=XfrdezdQxiUFPHmZixqAw+Fnie8pNXuN1tIQqe9rk+c0lioMULzycodeaM3VHIuJUH1CYdAvmusa9AJPunZRVdkW2uRd3GLaAWtnPhmnyt400IG/i+zcrMYizQDHEVfNOoSS2tnD/4ZgHtbcRV63AlU/ES7CrzqNw5/FmVqcFtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwEUxsRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwEUxsRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D433C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769705633;
	bh=AIZMeB7fd4NGKR823VNUlrbpGoWUxRXZE1quak0ffEw=;
	h=To:Subject:From:Date:From;
	b=fwEUxsRgGWYWUd94X/V8G4slMt0ZT3dEX9P1zRXl28YmMShUl8HoURi/viiSfnlHe
	 AS/33T16dHkrumBWAzixSHXoO5Vf42CP9byoVbNPB2fzzszGnOctNOuxmUXH/ElW3F
	 EfiGymnlhQ8IqFtSsJ4l2Yf4qODCw8o3FvJ6SD/oJI/U7sTvwaXs/qZ0Gn6KBxUI/g
	 J063XT0/egBXI/uwTxjOSXAnisKOuuhx6uvJoPlvtw3HvleAb6B2+uNY5GXAvyeS5p
	 yxD3LDAMAQc7XXpHgkIMVM32w0bxsSD3+OcjaKlGnNuvFf79G58GwWQ6MgrMutLZO/
	 z9d3pjjSgHsUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDACD358D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970563358.2747.16385934767808284416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446c625952751e87395e53c14608c98d810da91b174c51589ea8c2a2b59a21f6
Date: Thu, 29 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769705633
