Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3433C1B4F0A
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776481654; cv=none; b=b9yG3+VEo3C2STbtS1IFnd9MK/SO16JpiGs+UJ/WqSBQKAPrr3EFyK+zGRnv4ul5SOM9wzjeX35Gp2x0lg8pEZv0z38RJ9k+bN0gHlcIz4PorGXVVVPFbgRIxqev6hXjW4hWPimOSPH6Lw5But63xTaPUhQf/TYbXueTiMHuc5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776481654; c=relaxed/simple;
	bh=2NQ+zHUSs/5njke8rY5AXygCT74l33jxJZi/1M28R5g=;
	h=To:Subject:From:Message-Id:Date; b=IIUVytU6v31bON0Tsp9y96jwjF8313n4FdoZGaiMPpkSCOa5dTm3peSSlYCB1quTY96iBxbNkDIIIsOhhY3zPYtLqminz+Y5DLshiraMW98QyKoz4EHEaKtCK537z5luTJ+ULcIm7wOxo4wDM1/hc5l6WOptBAOswsO1/DwngDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4Odm4RV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4Odm4RV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2458C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776481653;
	bh=2NQ+zHUSs/5njke8rY5AXygCT74l33jxJZi/1M28R5g=;
	h=To:Subject:From:Date:From;
	b=P4Odm4RV7JMzw0mVclSpryHEM372ALiMpRJsaBG2UxRc9KobcECBQgT4dsfJv5Mhm
	 5kTSoLTvtjP4eZHwO9qkYJFuM/DkFAB2UorgBSJ80EWEmhOpLUlbpDEwgfg6hY6vCy
	 f5PF8A0vE6SKOgsEquy4gXlUm1Vk1BMqcXDLDqBTidV+hTKNXrOHNI6muHQ54qsqUW
	 rWy+p70MNTd8qlsyRYPo2BQJ491/BE6CNW7QfvmJuHj0gtLCiY7oi2m7KrBgsNfQLM
	 wFHVgnu0okM572R44l1VNvHcKCZ45G+8lX5qjBhmywMj1IqG3vrXJsetTL3fhuFXXG
	 Gb4UPf8P5KlSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFDDF99C75
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648165368.2559.14920943321469776152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bccee9dff96698aa071c3d5d3056164a495fb61c8a1fc06eea5fc18b291fdc00
Date: Sat, 18 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776481653
