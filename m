Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3534B3BBC9
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726937754; cv=none; b=VKwhyk8euQRMrD+nLw2V4dZrr0cHa2JfmhDBDcZXh034mZU/fba3RkEQDxXC+TUxf1pEr4bc0jX7pOxa3T3xLTMoNJJrth+yLkD6AeW5Afw9mySn1FA9I40xDunBjFyv0qlNfeC9VYMuJ1GuDgHQ/2oS4vnK1kxQo9e6DfBEM6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726937754; c=relaxed/simple;
	bh=JdyiDc2YG0aWgGlKDWxng7jEUSsm7hfFhA9WRXm9hk8=;
	h=To:Subject:From:Message-Id:Date; b=EiRs3sEx+3+gm5XYwDY9z5fvhUeU6S5aAhQrcPa5o3cfs0ssTaqidjBNWqspQ49PmKnaPbOKoUjN07IAvqcmREC1Oh0K0rid0xNerk84yAn90WYQ3VTt3h03WKBMu22PySg8zfSGFqD+G42EjOPItp42eYgYnsx8KNr1rWLFT/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyCLQW8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyCLQW8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8977C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726937753;
	bh=JdyiDc2YG0aWgGlKDWxng7jEUSsm7hfFhA9WRXm9hk8=;
	h=To:Subject:From:Date:From;
	b=hyCLQW8WmZvB3nSxarAsZAaKbvqThUywc9kmA6rjy5ijt9Rfo1PanRkpHrXrk9FRE
	 eE8VO1Y7Slo3QIDceQ9AfnkAaimPFQiB+jcvpM+aoiY8rYKzc9Ek6dDO0iyuZdngOe
	 DaaoB82ubjjoO1cjwUJMmog7ncuiFB4dYn5LFy+MXM/kG4sRTz2TgP7rfbJ8UdNDtD
	 NUQ0theqUP/v5PVLXU9U4EpGwqFZT4hwnnAxcmtciHoNNJsIyS45+Ch6J/HbuNwcgQ
	 oCYP3+Nbtw10Q2KCciyxqTspfzTuNesO72mhzBr7Zpz1lnPj8p4S6NXohbxB2P2a4i
	 M0oaJh2fc/mLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993D4CF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693775359.11155.17032322357129444930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0a7bc1d57a4c37f47888e09f9e9d79644d8f6aa3ffa2407960fd25fbc34489
Date: Sat, 21 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726937753
