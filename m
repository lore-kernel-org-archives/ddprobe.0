Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9591FB4
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737250555; cv=none; b=lsH9I66Kw2S8bsGoI+yviSZkaOc37+u9GfeioxMbCOrzuPEyD03fHNJiFEiaNqDCt5MT5ZhJHkMeeaW5bKaXMueOvN5oZYRq9W7m8T03XjjKMDSZWNt+Dqyx+9HUwgJ2rjxBboqa16JiCWmiJTeOBLqevRIbAnH27bP8DOWpTO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737250555; c=relaxed/simple;
	bh=Z2ylSzikd4KNCjjhZPQ1+ROWoTIsxjp0ahXC8Hf/tI0=;
	h=To:Subject:From:Message-Id:Date; b=kkE5BV5hkj4QCWEyFz+MA664U1aSAn11peLtRgnkiGOKV/dibXs828hpfDLiUUskCDCcBh6u71eyNjcPw8xpNRL6twDnBbGoWfCRj6BSTRmNSHm97WF5v7jwRiJ/K9czAFn8m4fb5CMIFlyT/xnmevYz/71rDGvHhH5UV31GrQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF/IMa8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF/IMa8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E347C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737250553;
	bh=Z2ylSzikd4KNCjjhZPQ1+ROWoTIsxjp0ahXC8Hf/tI0=;
	h=To:Subject:From:Date:From;
	b=vF/IMa8CF5f+98wh8wL6XVGAWgNB6yjaBy/efJV7/wzYIMlSoc3seK6XfQj8vZEjr
	 qAgZ1xwSXKlGZNSTd5JmeKfEqyJ1SB1f0DIunMKmqmB5miMTftQDQpIr7YgY8Ilt+8
	 +arYEDzilhF6w0UzbHg2T6vcUZgltY3Z9se+VEGtaObu9LEcJO5rZOfYcYMMxXWf1N
	 3ph5ym+wivgz7FIaqeOpmeS5A3h5WGJErei8XDAwmLP0qlBGnvmYxr1XlpBGj9npiV
	 PINCxav2chuxYlaKgDXHJKar28WBLrXDGsIoRBwB1T+kaHiEMOVH7Wa3ezKUlc+IwC
	 kVVqu5YjvQSNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB57C02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173725055358.21549.9947344379031421827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2007ef7e30567e3943b50e51c9615eebd7ea3fd722fce2add9a656ea74e8fb
Date: Sun, 19 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737250553
