Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1C43081CD
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762500594; cv=none; b=okypQhV/EPh0z7akDDn+bsjMDPnSgC8k7TSGVBD3IPVJ8mvYWvfuJOom6IzRndxVg3AR4KRfteISNqLGdOYuOqgFzYYHpS8vjgmYrntv9eOQyXv+d0+yc84ua6QpN6OoFdgLaZy2Y1+IScRKPETsL22ya9OLDcLL0Yv8bKV7q80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762500594; c=relaxed/simple;
	bh=N+3Hny3YQhEWqimcwxLhorCTqJA58TR6s2A4Ypq2A6o=;
	h=To:Subject:From:Message-Id:Date; b=SZYXez9qb+JLxAjF8+T3Ev4B1DJNuhaf939mCuaJliamYfozPEer2XEhTXL3/tmLoEqAcj7/FcUiA5LNHn/tbkwgsoYi7WEjJHOHgcdcigCvaMFE2Qfg2sJiV0KrTqqGdpPf8rHzEfCdq9RLuitnfx21r03VZibH5ycKhxlfNT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3xYQTeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3xYQTeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E64FC4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762500593;
	bh=N+3Hny3YQhEWqimcwxLhorCTqJA58TR6s2A4Ypq2A6o=;
	h=To:Subject:From:Date:From;
	b=e3xYQTeTH1muxiH92dMJJ8H+jSZKjcWJi1ZAz35e+we9s4CSEv06BkJK5qk1s//mH
	 8PTGmUDHdWZCvrKIpu8hIi5UJEdj10UuudF2HaEcHw3FSAcnqBMUhRcW05luxS7AYg
	 og2OUycrIl1cstaQa1AvaGlRBs24a0FdhGlRejMv8PnTX7j6x/kRMsyi0wEvi0Ajyi
	 Wv3JgTuWLFBI8XqyZR/ms6dU2im8gs/2ixVduXjELUltn6D1BTO4A3e+yHLRN5Ahl/
	 KFB7BW/Zai51pygxU4H39va3aYjMBtviaFTHSGp1mO4Bn0oeQCvMBkxEgYIwx5AKyh
	 ObzaXAYZNAvwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F5FCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250059358.15190.2013684002921108394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1356476830fe9647805b06576cf7518fa3b0c9e21257c8eb714c15d12ce56b66
Date: Fri, 07 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762500593
