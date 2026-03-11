Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200213D669E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773227094; cv=none; b=aH9oXnNpWghj/E+AAHLGcCHWwj8dWnkqjt2Y+dEnDBFsiNOco/pLcjCzNuoupqv5c1Q5n9xxYxUbJ8V2QMSQSbscYCDfSGCOgDoFNVjHLggO/iBhUZbwxVA3t53kcdAdGYvdLnvVZWPdvL9QM6yXffbim82ONngnxbrzs60VYLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773227094; c=relaxed/simple;
	bh=wTX1S27vVZknf/8K8ZS2sjrmIJoRZV2Mr/ZbFgJEaTM=;
	h=To:Subject:From:Message-Id:Date; b=ARZzjWPJHPg9jfV4x2PkoJiktyJ/PfrTT2Ah9zXykvb3cDRoicg+EHtoa1abDylgE/Z2YOnTvY0Ptu+hML0wB98FTRCx5loi+OhroxPMcjvXPhUElCJ9EcUszbhjUm1r+q43QIZe1Hb3pUuw88SlQu0OPux5c1aJ7sa5GC5q/2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onLfQdPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onLfQdPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDF7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773227093;
	bh=wTX1S27vVZknf/8K8ZS2sjrmIJoRZV2Mr/ZbFgJEaTM=;
	h=To:Subject:From:Date:From;
	b=onLfQdPJgRhDYVGnrkpee/EPqw4h82AyJiwmuF6hutjxwnnRf9tZVrmAo0oQao11L
	 VoVSn0pDDEb9DHQ80+mATe6IGk6iA8iSVGva5I2R2dPyBCX4HskoZdEgS04cGZXPXJ
	 MNJGLoqZEW0AwZ/V+XYM6NEzVgeIblrDK5JJanW6cfBfKcAD1AUMsg/CFcBl6OsAwv
	 hhmKudvxnzklbtrgMgtOVAvuCFomDO3KrazqDwTdl89CU6zp5mBK3hVCgxiA38zCg5
	 h4csGJAA5sd2ndsXAnX7AQ2bTK7UbfRy5MJh4pOI700Wpwv0+ANhxRhanIU/1aVcD1
	 LU0FJRlXkhhrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90889105D29D
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322709358.28588.7382302981256683685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28563ac9efae068a78aba81b57ca00d5c9d3ec0b5dde9ac4253764ab0687039e
Date: Wed, 11 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773227093
