Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275F4194A63
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733511354; cv=none; b=H4WgkOw1cRSCWgSUyJc1KK41NCC5zd+aRgkPl+MQErfVMtERJ+zshQOFJ5duD5bsMWfHJxz8TFLeMRqtU4topMqLk70OaTV0U5j2Vt2osnQfwR+9SW9/Nt10HdgohL07JlQz6k1rDn8gOTbZH39xkxCAt7iyMOGiS/HK+US/g6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733511354; c=relaxed/simple;
	bh=kCuccytA5YOWPIvwxgVh6pSDsE0/5rDlDm+7TsQN2q0=;
	h=To:Subject:From:Message-Id:Date; b=Z+7SD7RvfOLkRKP1R6zbKmlLQeNDxYuHIrZS9PQreYOWBtlbyZo45xRr+mmJ7gP09eo7NgTowfKIpbAHVSFNSIMbiCxwfpgQvbJWjkocf0qfbn2qKye6WVnGtVhZ/FYV6p5DYrEVS5fB1Y/aH3EPlZN9ynFQ4UJahvhFW9U9F4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDczAfaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDczAfaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD95FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733511353;
	bh=kCuccytA5YOWPIvwxgVh6pSDsE0/5rDlDm+7TsQN2q0=;
	h=To:Subject:From:Date:From;
	b=EDczAfaZi4S27sPniz+sS5BY0Wm28NeyNqBlJ8W6IKlJVGIcdKA3KLCldgMWQbXt0
	 sohXj7XM0lKuM9vs39o5YM9XFjz7rni61RhOt0Qjd+MuyTlcXXnERND9DojqA6c0g0
	 +2uuAWXFTCmf4XuwK90QYfsyx7fE7LQbNdUFTeTTLm2RARJrxOor74k47dNUKM3N6Y
	 wpq4PAUOF+977JSJHAc2OiBl8nJtFb/EtwCKDwyKf2Nu64YeLpejeSDV+BnuGCPUG6
	 K7QXVaAgkeDbHCpkDbbL5LFf4+csBiBe9jLmssoy2fmBNIkuyyvIKEJtKWi41HyFJJ
	 WXSqeBFBdaRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCB7E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351135367.27852.9959845819612000099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd34154fc1e420f14878671c3aebf01d27399383ef66dd69eb948df5c2f055d7
Date: Fri, 06 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733511353
