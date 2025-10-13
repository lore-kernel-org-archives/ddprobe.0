Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEDB2FD7BB
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760347194; cv=none; b=YGzfX3yKXRnjqn52H7A48KUPsJDtKG5C25c/6Q1aVcFXxyeZ0ItuKe2Xrl6By1tyq/HA36oRS7CiMs8Q7dzh0ebpXU7o6EFX5GsM+gp9j3trJdjowU2r+QGHU3lGSUnghPrXdSENIIVOpHFIZ5rYHYu8hRf/XCqf0dnHWlhxOdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760347194; c=relaxed/simple;
	bh=pR9q3VOTTq/9EbU1pPGQeIN4uucOP3d8KTMK5S6qEmo=;
	h=To:Subject:From:Message-Id:Date; b=ki68SfLKEs39BlAq6fz+wr/KjGR29H254+gg0lpjLxDlZGZTErd8WJX78UthoYqvGAsUW+xE4fB7vIhvvBw7ddXrTeLYutz0/GO9TlIYTzTJy4tUk5WS67ZHV6SO0Jt+13nOQirAxS6QWvm3eTSg13XSgJZ9LCS9IiFU2K1mpFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buVtz4eJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buVtz4eJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9624FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760347193;
	bh=pR9q3VOTTq/9EbU1pPGQeIN4uucOP3d8KTMK5S6qEmo=;
	h=To:Subject:From:Date:From;
	b=buVtz4eJo3iE1YwBDN3WCbssEAoF4i4CmDSFjP62I8uRobYtjimd2ddT/Z5reZJS1
	 uzDgGzXTSLbC3ELG4omOzi57vG2B9Y2dhCXLCn85frU7xCPtostvVnXiSPYFpXDMtN
	 E9pKatbNPwZ3Xef/Y/ZFMZhapclR5PlRljAFiKxcPN+FjOnQ/DL6EsEGBQqqf2YUgB
	 m7NzxDuLLsd3vie6RwFlgUT0WcstSwMM9AreuVzwEnmxa51R3WJbKrWasdvFQeqmOX
	 CPdA8lm69ST08i2dSFKZnJMAzPatKSFRIkH9y37jWReB/oP7mRIR0Qtw2D0sc1rO5U
	 zVqD61+hcnQkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB00CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034719358.6850.17553207021909369849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64aa3bb3b261a19cedf6fadc8e9b87e45c3bb0b5c87c381927d3803aa071110
Date: Mon, 13 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760347193
