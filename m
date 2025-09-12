Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A0B327A19
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757697594; cv=none; b=XsFGQFBmRcX+KgT4JwElSfhAJCyoJjZCGqotK57DFUlu7NMJhCOs6ucNSTvZ9kOZO/jLs1b0eyEZScxyvvs6DOAptU7UUvSvyKj5BtLKDDgW/9KAoksvy97NnA8wwhEGIiOGWhk61VMe4tZlF/14f4Q7OoDXxqU+5DVJOgHT3nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757697594; c=relaxed/simple;
	bh=G7/eeTu5U4vs25sJ96PRAMbkgdBmCgIi/W162X/Nh/8=;
	h=To:Subject:From:Message-Id:Date; b=hehyiXMwDwqxGYyuWXl2HL9zK0Ba7pkNtoez/jG6ppgRUQBxsq7oA6NdEM/ocRi7YOkuQ/obnYvPYU/x492Zwqyk0LZf7jccmKbRB8gGCUhwUVBEvKouPe4JPdOuFBpwPwRN3/ywLCNOuRku/GTtE5vj6pG4Pup64Llx/BOkj3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEdUZZtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEdUZZtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AACC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757697593;
	bh=G7/eeTu5U4vs25sJ96PRAMbkgdBmCgIi/W162X/Nh/8=;
	h=To:Subject:From:Date:From;
	b=PEdUZZtNTA8iXtd9xtKB8gIAP20PkwYl3bt+7wTRFEn7YivJtgme7k+Jkd7fhPf2Y
	 kE+SfvXr6girElIxVOJs6ho18q3rbx19P0zqVtbNRpdtw1Au/ngIzOLz0tkMK6CLcH
	 nvIWM1dKwakl4/ctTDDLGIIydHA2l9BflzSXMD0yHydiedHrfZ/djW85kHtIOofwH4
	 4XM1EXrsohGNWgUYoG8/qOYN1XAGRk7oExOW87uiLiNJPmTcXwwI6VwP24Wry/gwmw
	 sd/yqFiuHlXHFD9R/xexLPMEpedrPcO0Km73+Pm2gQCDYjrUrZIeVLd728XRX6esx2
	 fQHY02g/t8MBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF7CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769759358.23432.1291062766829636134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f530a237918239051a8020c07a72a7b9abd49304ae41bb7c7e6dc9c443ba1f
Date: Fri, 12 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757697593
