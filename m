Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F1E202997
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777690654; cv=none; b=sZX1Vsu6HA2QplRuk983BSo+RBieqTZVQn/plWPZHFRdlY1AXZ8PJ634tXgKZOL7kkQ23yrpXx2TfhhfjJVLYR3eiueAUz7Kfs9usH+74hjWM2v2NpUUdR7R+V/YHIzjiCnbzFMZXC3zeAfBf6sj+6yNtyQVq0R0nWPz6wpG1hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777690654; c=relaxed/simple;
	bh=PTWccuDVDlOdVX+EyPgFsz5lg+FQKmZHIHTVgjcUO+o=;
	h=To:Subject:From:Message-Id:Date; b=lzx/F51Y8ufHHuYPxjEBBCSeTwlLm11yfuDgKOSDQXnwEkZQbgKcj0BkWDr2qlindYOArTg0GZPFmDdrNv/zAxqRriJSVc+8k6D+Q76zdiR+FJReKf20EHiUmKqimiUEOs3QO3iEDgIppynZBwCWvpP8YBRtqO+nOJ1fyECklAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUX3S9UU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUX3S9UU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C167CC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777690653;
	bh=PTWccuDVDlOdVX+EyPgFsz5lg+FQKmZHIHTVgjcUO+o=;
	h=To:Subject:From:Date:From;
	b=IUX3S9UUAT3MXMUigR+pos0O0eO9ebJvFOYieDU8FFDtYuisVFJ2Ao/WDW1Lgul4D
	 jQVNA5aTqL8+w0tpAdsfj+yb1+PL0kx+k9Ixttz9VAxHo/x7WT22JHTfq+A5Ap+gz9
	 ZOSeFlvg4gCva2CaYLmWiodU5LvyWG14MSU7iIJ5cjCvzhx/5JEG6VbRXS+rTI2ttD
	 ltMPXPOFN7D8jtLB1IXHilfV2u4U0rZpkmdi9w9IpWL4C9TQL5w6zHmsTcWbDsSX5v
	 iwf1uPrDP8BawvXqiAEt8S9+B647c99kkqKR07hmuRW4BC/6mtswnlIFesdHDUCw9z
	 vLYpoHzNWu8Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD70CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769065368.28542.18415781163444748911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652d4c035395b1fe982c79e13c6e28af13b6fdc5e1fb527b58bd8f30c44c6c0c
Date: Sat, 02 May 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777690653
