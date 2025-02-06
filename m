Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E4E21C195
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738850754; cv=none; b=jskj5FmswCc/LrdAKktiJHTNruGPuIWushm0MsGKMnk3OcC7UqtxWCwofv0JhZ3DsY7KZUTgvWQB2LXObAHx/j57JL16QRILvSewWWqmwqSMDRp2ZtBeR6aiaQPavTSFknD0buNGwnRCp5P0ogD+citNCY8LkUvOttf6tC+h9QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738850754; c=relaxed/simple;
	bh=yfnr8hEzd5X9rnQ0feWbHMfRhabgfiDlaDf2F57oC2o=;
	h=To:Subject:From:Message-Id:Date; b=hERrbrBjbtxGrxK4xV0cVxoILWHAem92iw9d6zXKdv7Fi7pdYSXIUdrzHxjzmztFQXiYxdOPruNMENpuOqN8IcVpvOivIkJgyi0VfLIKNAT+x3iqpwqKqfeV/nEpHUxPkruY9f2uxyojZf2465BwcpwOLW1g/yy9uCYUpVVpmhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjFda7x1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjFda7x1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2079C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738850753;
	bh=yfnr8hEzd5X9rnQ0feWbHMfRhabgfiDlaDf2F57oC2o=;
	h=To:Subject:From:Date:From;
	b=gjFda7x1/HagYofbJBazPpHjaxhbdE+p/Ivxt8b6SpEx3khnbkoGusfsSDlCn0eL2
	 AIZSCSfdHjkaq123DS7aPb6zTIQ+/lQtJ3XXT37ALvbzsbNvhFElBaH0xvSdl0R6eH
	 rnF8QwnW3GNEx8Tg3cctJCDhMo9d4/AxY+iHhX/Fj2EJJ09w97zzOBUlUATB1KD/gQ
	 gV9B65nLtrhg4LiylpZEClZVuJ/eAV+Bkj+ggUMCSryXjNE/xvgFat0LLfcyvxoeyW
	 ny3D32DnUfV4PgTUW+NWOzCiaV3diD1zweiZPh4ISfdDYTUHYrnG3m/B/c2V8CEggI
	 8PRMKX36WgdIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E4C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173885075365.11388.4013184706737718191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e529dab9013874c8a43868096b71997bbec811cdadfe888d0d05891024289ee
Date: Thu, 06 Feb 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738850753
