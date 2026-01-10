Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B44A231836
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768088634; cv=none; b=rqXaQHNNHiguF9Q9hIv8TksvWUYu2QYvcs3zg6yFV0ClXgw3JH6AQkdD9L1FClsza34VQAV3MlE2+Do4mgLjLgFC3bitutox+r9L/bear3yB//aeAEU3meEuCMIZN8qYHsiDX8jqKOFLy5HDqWe/RV6IXaMS9+jVgJnnp2amNyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768088634; c=relaxed/simple;
	bh=ldVr1dLr4Yhwh+3mY4TpFydXFTi5AsbjpNmB51YMoJE=;
	h=To:Subject:From:Message-Id:Date; b=bhRBDdAf6K4Xr8+AbUiW0mM0CgyEquOSXeXkgTDfCk01qcCdfrLitFxEUqskIuQzdRdYmoSYEFkqCCQvFwwQOkD6Ct8yfhNYLST9AFOL57yQfOkSXaVRWCXriwp0UFa6xCFF0eq6y8Mw6R1S4iVIVaM82fNfsrM0c6Ej46TUD6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FL6Am+Pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FL6Am+Pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C473C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768088633;
	bh=ldVr1dLr4Yhwh+3mY4TpFydXFTi5AsbjpNmB51YMoJE=;
	h=To:Subject:From:Date:From;
	b=FL6Am+PuYZDA+jr807kRtTETgI2d6/A8qpDS5hA9qpr+EQvSksR6YQU720M+JCZLF
	 i/W4aLLspaBDIM9EwE11Xn+aRX9uJLlDLN3+3MQAi5/suTh73Bcmn6YpaWSUBM/iFc
	 f1pz/G8w4RpwLOOgnEIHd6uVVL3Q3Fs8eO5xTrmtclmzViBa1Z0l7qt7lvo5cYdDTN
	 v3Ep7yvjrAptdb4PQ+FhkkKk3cuuKb71dtibWDg5BMHuEQphpvJvNWyey0MBKpEveH
	 pSupJ70HUtLYGgq123Rs0HzfUoRIAYRMfkCRz4hxLc7tGNTZBdtDQXQ7LBO8oDItch
	 t/QiIkT/hCp5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E54AD2502A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808863357.27283.4883213293564522531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64b635e80d0595fe6fde67cbb8ed183c5655464f767a954bba24978be39f38e
Date: Sat, 10 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768088633
