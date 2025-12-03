Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3020F29B775
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764750174; cv=none; b=fSZM9UNyfZBPtJNn7C3SkK4RdXGlcPr4UmM1Mayyo7/jgnbFeW63baZk7ZM71rDTQ0ZPaNzhs/3/e1EaAv4bf+RQmcguUf5irpTSRe7YgI/OH0ikNGwJrwjNBp2CVYnAKzhcg7tM8kzju/hebUHOfXNehDI/ZZai9iW+so4OyOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764750174; c=relaxed/simple;
	bh=63TDGzNC/naBZekQsu0hGo68PcZFyjVnMSj7kZQFB1M=;
	h=To:Subject:From:Message-Id:Date; b=eBn++Ye7FsLNEoSUM7xfZPetFbCytyV/wI9uul7AomFCFgb55WqGLriuw7pUz3LDFXfMyAKCM7Bi/ZL8uEPgbQrD9LVuLUDmEs2OX2ajSw4077tTM4OAvnskcDVzWvNlTPyqHdsSQqh41UR5Y/9BPnPy7xMzuHhiUrBLcd95YZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MS9isMFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MS9isMFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DBEC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764750173;
	bh=63TDGzNC/naBZekQsu0hGo68PcZFyjVnMSj7kZQFB1M=;
	h=To:Subject:From:Date:From;
	b=MS9isMFt7NFdgHUUwEgLecSLU+JtVp45HVcJMZRHd0M8RkcvDzIq9PC83dPVdzEr/
	 /79qL1TxivB5tCFYTzel0OncJI9GgEBNmE+bCjwsx3o5on4381FW1te5jU5MJVBlde
	 dJfuFT1CHyZrOFaRuOS4N+c3Ud8eLFo4JF0GeNUdauyyojXYULQhfGK+DJISzU267K
	 gGV/C6p/+vcOFfZkVUUJxcMnOo6fW+7Eu/z6aSu8zMqdqKh5thN+GOz+ukitz49BNr
	 6xdWMlo/rgO/dVFbihOFpTVBTqRHTnoDzTtBdY/4xAP58z8bkf9Ie7sXz7Qc7JAFDG
	 OP29bFqQMT2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B21D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475017358.1502.16880176713322982430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbdf857ca07568ec628d60cf5bc4143cdb0d5ad2994859d1bdbdec9252db5d1
Date: Wed, 03 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764750173
