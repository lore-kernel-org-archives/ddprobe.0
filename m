Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F711395AC3
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791643834; cv=none; b=LlWj3uG6VpqJNbaUeFftEka8pfHNnZ38CjsOkt0RUqJQ8pt5ahkRPiOH04AhByIeuRmt2hEzaYKSIsDn9sYkA23+MVf64lVML7fCp7vtSrBu5+D6wkGruef7/ZCzKdAjngryGnrSbBX6LVuLdQ/U8ssDSmzA+AgLmTgk/uk6lps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791643834; c=relaxed/simple;
	bh=pmjOw7i6kpCfy9TzBhlPxjScJWPaiyfmAHK6oHLhsbA=;
	h=To:Subject:From:Message-Id:Date; b=Go00a6fHeR4suT8h4TWXTTT1bbFcyO9RxSlOrzFub21CX7weFtGtTAQOpfOye7MU3fC19SvIroAnqZkewK31jQqX0qpQDChKePUV0kZ0Rdq7dKG8Nc5cpF+iV8nTiUKotyHLWy7Uu06WKB735Y7ZemrwjvANeTqi6TUfk6Aw0A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtJXAoBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtJXAoBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA984C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791643833;
	bh=pmjOw7i6kpCfy9TzBhlPxjScJWPaiyfmAHK6oHLhsbA=;
	h=To:Subject:From:Date:From;
	b=mtJXAoBFvyeX8N/pBdF/Gl1Te3OtPu8/ixmiPp5R1Wk0f0KEb/BR3dUmaaWXaN6WV
	 ZBMXskTMu8hp+tYcmWIhKDGM63NhhDGNiZzNRGYlW0cormTlx8vQw+VzAkNkyy4geV
	 l8eBBTTmPKzdLt25fwY3YpFjreDAekvTKkV9b7hFfh5AiSKuNvpSKTCZok768tivTp
	 yqUnc72cjjkM9sa1iuWSDrXAo80fR4g1YeJMukDu0cRCkhQPE9Oc5V7oDloUeLiP4e
	 XHSyH3Q7vdbQlV/9bxDwSvxvIDwBFa7Ypbn6Qr5m41t/j4fojVmg/9cE1ZRUQZmQT1
	 /krwwz3/BKmCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DF1CA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164383368.4386.987067876209381484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94c7e7a53719a256dc1d5a9450e1b66d0769fec1a05fdeba2e9640a68f1ab61
Date: Sat, 10 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791643833
