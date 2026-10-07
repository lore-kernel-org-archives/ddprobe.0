Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777CC3D410D
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791373234; cv=none; b=Nq6ojEkhz7cOvHmLv/ZePOvz4Rjkd3r48ZbZAWSeAATq4U84zIMcENUV8GEMJVWKV5d+Js3BN2NHs069lR4uR/j2kJlwkruXIQXKaPpMdGuaiGXlxpfUzhflBEs/f0cDHFms4MT+/S82Z8Od+yy/eeG96J5yVi/ehMRLg1P4e0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791373234; c=relaxed/simple;
	bh=6RAfb6mArKuFEQ85I04l1zSrCEqwB6GZwPjISMNBecE=;
	h=To:Subject:From:Message-Id:Date; b=ZJl2T5xRLnDhfDjftcKCnKSzmUwEFUzwdddaWMUC527coZkqgEjsrbHCwLTMk40Gx047N+6gFZ84DKDueI9MpwHwHnFffqenWr5SWPV0oaqKEI/EwWGkW7NVFLytIq2dcWgKD9Qw+ZpmoKNSoQXF8L6XlrCyaiFL9wBG9tIsRaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2W7R7pG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2W7R7pG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E39C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791373233;
	bh=6RAfb6mArKuFEQ85I04l1zSrCEqwB6GZwPjISMNBecE=;
	h=To:Subject:From:Date:From;
	b=V2W7R7pGn54E6lOBJAljc374Hu9cW1ZMeUDfWduUjvI//E1VpYH1dnGQSqVt784Rp
	 kJedWGT4FlY/toD57/AvUa+9MQtFE6e8egYZuwJeR/aqE3tMuZ45lQ3NpYT8AIumou
	 BtbLCO9vU5iJPtQZx6Ax7ZhHTazh/Wbo/DvDxHxMrSTf3gnDEhqetpwcI4JMvMDyPz
	 tgNZ9VzED7PcmE9sAEsmqwJYpWDd1X/EAxAhS/j2l3OLfLywUcAJyAqS/HlJbfssRZ
	 ++3CsV7vX6vU51hW8Fm5RIFjokrs9PSApSIqkYLx38hiXNlhxvGAW7Wkuaf2DN/V6E
	 hO8kbRNyg2OqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B4CCA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137323368.27271.2946291948669441811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fee0685ecd89cfbf361c2cdfa70818bd7a6a13ce0cda95257161c5a5d05469c
Date: Wed, 07 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791373233
