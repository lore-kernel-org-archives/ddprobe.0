Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395801A9B37
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731100554; cv=none; b=nkZNxYRr9V7FUj1h2VhuqIDzaxA65JGMzoASAAVYHpZybaLcT37z9YgeiTQjaH6hp2O+hhZBChankLEU3j0YA/om7N6OP0m5EHteQ6XyFVj4YVv+nBhoA5voN7HPpsuoF301HIgQuc3yqwganJcmBJjpwK2MfsthGXX6P9DgYrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731100554; c=relaxed/simple;
	bh=eg6hZokVJ1Rr7vYaaFi9/Y8ZICFVHODl36YK9LLuUfg=;
	h=To:Subject:From:Message-Id:Date; b=DcP23DLQuRO/XkmEpwZx45zhe2SI0sGYLilXQ4Y9MKt2iqh4FPkI1c+NQjNagsg7ajKWkG0FsS+3y53Etn3rKyBo95N8kQzEC4LzgtAxAjwcnNtW6e1DjKMWwJ8d9DgOyHNu0Mw+uMQTQJRjl6Yx4LjrfhhHXmM4HZk/Vn7pduk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAfPd9rR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAfPd9rR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B0EC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731100553;
	bh=eg6hZokVJ1Rr7vYaaFi9/Y8ZICFVHODl36YK9LLuUfg=;
	h=To:Subject:From:Date:From;
	b=OAfPd9rRExPjxAtifcEgMJqTZLAJz2h2RGk7QjXlbbU3Mg0hU47k9gv5E5Zn5YqSo
	 C/BnxgBUow03SxTPx2/FBCf0/Afv+GALvmD8Y7zf9mQxMKkKhL1DJj1L+8hQLFEGVj
	 9HrN/nyDd7T/xEXrZ5Ip3gZ8AE49X7t5J59WaGNdBMHmng2VbOEhkBL6tp7hffcYZZ
	 zXKTaDGUwJ80+LcZSewpTGHwQy2v2MfUSDrZxARCti5hdF6ixike6N4TiijqEsuF4A
	 zR/ktj0x3yL7b8l7GN4I/Uv6XLRaN2vNlPZn2VMoomdnchSSvTroqfVzXBg0OQXQ8b
	 tnOk/XB8EC3gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C31D6408A
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173110055358.15309.11201044953487607168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd409fe3eab960c87f54305ffec3b44c41b31626264843d23f2399a5b7b6de7
Date: Fri, 08 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731100553
