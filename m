Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B22A5227
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760764194; cv=none; b=byylIsOswra7ULdm7L6GKd0Ca+WZKxujPW2D8q1kHIavgyeUkkhlHbOTUpwOO92XxeLYd711XbdJsdRxQLM3rtEBjfLUvlzE1xGiaGiHHQzT/a10a8I2ePV3iuK1DgDGePERbr81iOg6BathLa/Paec8CHzHl7Sk9nrA8+k6Qwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760764194; c=relaxed/simple;
	bh=BIYw73iL2AL3LoLoL7OL6BhZTx0GYN/Ye4inBIDIf08=;
	h=To:Subject:From:Message-Id:Date; b=IxnPq0CAt5+KmESVSGYo1lzHcWHLlDTlriu9hj6X2gBS8ijMCgCQo5HlJC8qpSC29IP9oNCnnPpGpg4vkWl+cJET7k7Z60Mw7j/KDKtNMSwwM2c1Kb71FfsCWGtHEt0pVYM19Zv/PrKM0iyAeActQfVS2JX8Wgqwi0VGc0w/0so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnURVl7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnURVl7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2553C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760764193;
	bh=BIYw73iL2AL3LoLoL7OL6BhZTx0GYN/Ye4inBIDIf08=;
	h=To:Subject:From:Date:From;
	b=ZnURVl7M3cjI9N31PycUnKLwGqENN11ws+yJCp9QdjN0Ji0NuuzCOx26y5NMJqGW4
	 8Gq6ltcA2FgRhy4RaMYCc1zzygSfoPhx/lLe+2NRpJ51Ap0yGXFFGFuX0ZhlS9RRQR
	 SEOrpkAYt1iAmqVFkp5lWRY7GE+qw6F4MvjhJ/FvrfmVu/GGFZuhhBcM1tsc0EDmln
	 c/Tw7KyihRY+QDc4AnSavMQb4e8jCsXUBDkUBYNVFvviJf7WABst5hsX5Sf7cRTkP5
	 rk2MbwKMOQatsSXYlYwQkgeGME5ghXwm2DX8MQL7PvghzGNtWTxvlcV5CtiNONwbyM
	 lPd1ELRVBbs9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB64CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076419358.24808.7046511696705948141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10df88d084587f8b12c1b62912d2f641a67364ac22efa37937723016129f875
Date: Sat, 18 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760764193
