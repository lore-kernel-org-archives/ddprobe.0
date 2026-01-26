Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29EA349B1F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769449434; cv=none; b=GAv+bySyMuhNrc2uInFrrEd4S9G/9g+/0jG7g4Enbq3OUow+RU7NxTbon5Fs8hxcHv5xb0JPB+D47chx5pYqJHMNZbrYO/6YQ9H2ulhRha/ztz7JUcQ/IOGm7qfEeJEygleynlhTPB2o9OgG1KQz5WAxAOmtmsgEV838QQIXqTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769449434; c=relaxed/simple;
	bh=Esz5OdEgLEMWY28+N5mX5YlpMUNaBSDU9bz7IIVI2gA=;
	h=To:Subject:From:Message-Id:Date; b=S0nH4Ix/3lLyCkyaQ0AHmx5Ae1l7u7Hkc8pX03s/VjG0/NG/aJVLK5hsOu7ZlZ/JjTXp5WdRJSUZejCSGwIhv6GpRpLaqHhucnOmJxdJNHc3g+AN0k2XHlfBPCic80JYT+Il0+kAk2CD1gmTzLMFdzcKgIuQMGjbOWmGYgRY5RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw0j068M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw0j068M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E838C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769449433;
	bh=Esz5OdEgLEMWY28+N5mX5YlpMUNaBSDU9bz7IIVI2gA=;
	h=To:Subject:From:Date:From;
	b=Rw0j068MiL4llFQOQPdhEceEF46C0cifa4+TJFFTdkd3ahNw40EFDGSFSrHOF5O05
	 gYZxKy5vU5yMZdTCEYah1SjwfdNXaLHUzEcKq5eTEjNQB2djXpBwgOXY+sJhaxhwtU
	 Zv82lpgrepP0lK1k7zipVpmD+NoJ6ZhHu5jI/t21ywqWli6B71d8Kmta0fxfTQ2nIR
	 UthQszTQb+w4wwKNT12Ep2ewN9sET9Cdc2kD1Hxbnhb4wYvLckwEED8cNs30FK217O
	 riongS/mcgnYhmY76hTh41VNyXBU3uYp1JT2S0NAvSPwEkUf9YrToLfwOtbxNydLhW
	 QrKAxCGc6K6kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90720D19502
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944943358.25555.6772717043358572904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88454db9abbc75bcebcdbf59b73df244d3aa654d5a0d0408b6834206be6ffe3
Date: Mon, 26 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769449433
