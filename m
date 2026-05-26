Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AF67E792
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779823954; cv=none; b=Bb2HVMbK3AApWcKGpxF5rnjX+p9RCJBKng43j8vguY8Y04WPXpTuiQyheKU2sNn6pBS8d0AvHijc/sMA+2ci7Gj93tDm0T0o2ZLGD6u69b/iY2xeY0bkUra3G2irv2caKlMvmxoQ1uoi9Wjj3McJJSS1eEvC66S6fWQz/oActR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779823954; c=relaxed/simple;
	bh=Pq1LWRGjGRqQL7WQLF0EslQrc5QYNnop1lvleZmxutk=;
	h=To:Subject:From:Message-Id:Date; b=gzKtrrN9s9D05B4i3Qkkon5QDiPIei0xElnMseBL95qBSFvZ/Tn0HZOtAhEtDHFUbWXjmEWCn8PWToC+7m7+Su6Mx/1DjfBzoc01PK/ehOpk/fkhlanM0VFSAJVEURGCqbndpjqmkmcH/K00w+Wwnj3Q97Wl3JQE/Y13G0Gw6vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWZ0evya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWZ0evya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4202C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779823953;
	bh=Pq1LWRGjGRqQL7WQLF0EslQrc5QYNnop1lvleZmxutk=;
	h=To:Subject:From:Date:From;
	b=MWZ0evya92+k04krCNK5UMuiL/faNxHGW/c++HM51WWapV5uOLoppTuS/JX5vGHmx
	 LTJoTln//abEH1XtMzWktqC2iIlo8//kGh6E8v7Kd2rXI8lO/vxE5h1yS5Pm4vyw6w
	 /+MopawOZD288w7/pbcjEe0LpgtqwEoVvi+WIvtuGFn7YohpzYYbXnOxsZ5+VLxcxF
	 H+7E59Un/ImIudJrv0um/eZAig4H46G4Gnk/AfTlPp1Jipw19LZlVRkxV6+X9PnQwf
	 Sgtr2WSH6+mrutJFgTJOLgexiM/0JE/YgekVlA+T8Wu2k6//9eQDaYMH/sG5qJ5P6Y
	 HmpswlkYXdGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8442CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982395368.20058.4281962789498366463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ee048cb4dce04a75d43923d8012a0953686105fff431423524258b90c7fae1
Date: Tue, 26 May 2026 19:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779823953
