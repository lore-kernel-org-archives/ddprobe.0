Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27365242D69
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745403594; cv=none; b=AXBfu4YHIZzzFhMG9m+Sg/sYa6DQGscgWhLXdoMlsJqnBMIYT8CruWLNYYJ7xQF1Acfo3Wc2ahk4ImTT3UP08BEJefPgN2otHCb5huR7QzZD5So7KqsmfBquIjL3VMJeNpnP0FpfgyL7AQBRVpvhQPIEVXwUkgD6n3NOUTUVd6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745403594; c=relaxed/simple;
	bh=S+YD+Poo7m2T7fGFB1cA4IS22bly9epc7Lby+/Eei8I=;
	h=To:Subject:From:Message-Id:Date; b=d2U18wB5hxFXZCPhoomoQVrLH960nsF94TClS9Qn8UNqKp1gsq+CpK6j7FI70FxOvDokrfpJY2liMmFlQXenShUygcuCvhbZ0OCNyandlXYz2qJIFgV3256ldSFOTpgND8ptMI8SBWOM7JhhhltW5wD5imhZFZYT+VuGTxDZdy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwmRC3v+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwmRC3v+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E42BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745403593;
	bh=S+YD+Poo7m2T7fGFB1cA4IS22bly9epc7Lby+/Eei8I=;
	h=To:Subject:From:Date:From;
	b=RwmRC3v+K6bhLV4R43WsTB7/lKfGXSbSL6d4Z9tytb7I+DPrnSjNS0ChNv5YGigGF
	 r7K6YnXSwQ5f5QTeEJy6KzjOW5lnomWIrTx+tnq5stMicRItxg/uZEN4v+QHhlHT0T
	 dNoN8eI09aDRb3FDS4H5Tl7oZq0YfepmpyDLHSuiBmd1uD1EboR+HiWETLVN5HFPSl
	 9h8/1H7OH4W+VULnx/HV+OLnp0/9LoWayyDNFRqpJ0uS3Czh8rYk4zdQxuVa51CwOg
	 zZcly5xfo2cmmIu7jLTkbxF06YYcqrVtu0RoQLYLqRbX5vIl04y0FLKZ9oiS7/VrLb
	 O6mU7DXo2ULdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFDC369D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540359357.13681.12936174115961294897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9db99b643d38959bbdb8e7ab98e8aa53a16ff1c45fbba5e012ae86422d88e8
Date: Wed, 23 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745403593
