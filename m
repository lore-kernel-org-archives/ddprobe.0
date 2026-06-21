Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DBB445039
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782049594; cv=none; b=Dhq6/2HXGmssqAAMZAp71CqXL6tsR5onbz/Uquqgyf/QiKESHYUuJEv8QW5+kEdXE+yVyXldHJ2pa02RXkn3sMmigAhe/Gs1YfcR7Zrz2BMBHpSHYTzxd0fPhac8/L0B5SZ4DAW9sPMZ5kPVB3p74DhPYRq59WEuRHG2P4vjq1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782049594; c=relaxed/simple;
	bh=1LmNAMFgMQXCU327JSjXgmciF+YewwNXTcBMJuJk4KA=;
	h=To:Subject:From:Message-Id:Date; b=IO2goniVX/oF066aROQvQyhC6zhxq0x+n7ABmuH8HopqeNY9G+NsfSjRjv7sUmne/EBuwe5TGIgv44iCHJ4uvc7mkcFeU66P/fNH/0Aqch39zn+baaxQfZzvWKdluBq2u90OrB2J94OuW31UdVBjOw8t33rRrC4Y/GFVAwfv/Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7bvec2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7bvec2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7549C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782049593;
	bh=1LmNAMFgMQXCU327JSjXgmciF+YewwNXTcBMJuJk4KA=;
	h=To:Subject:From:Date:From;
	b=H7bvec2djReBOjeeNeNB1CiKmaAsXszr8GxQVppOa8n3SCv5wO27o1rwSDSsXoby+
	 98lH+rC5RNi45lWdVD8xb097V55WtMYXpBKt8pwmapoF6f0nNFK1R092dXPyQoKeyX
	 ttpDc4A3NUVGJDd8vzUWi2dBIRQJu8rQ8QiocDqdfLTF2W8LLJF44hLK/lUrsrR+J4
	 Z4wD3OnAnHIw3AyFjZ1X2oS6+cpzRXzBBa8Y0u8kvsrtJZtGPYi9pJiqlNLnqFaJXa
	 G2Qp6VMaGB5AKIPeML6kiTFCFekWTdoZw8T66FNtMEh1bpd+UNK9v09DSEV8T5L67q
	 CvBhWwF46I22A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9800CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204959371.3839.4955460904864103537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfc3b839fa333ac7c541c315344ec709152e17b2540b932a44f73f3ef02722f
Date: Sun, 21 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782049593
