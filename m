Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2528C18FDBA
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724156154; cv=none; b=J9ediXIsIeufyjLM9lxpEtvQs3ohQamfIKY6xaFYcEb/6owYTKb7p6BPZeSTXQFAly73DT0UeHnjZNO4P8I/DqRcBUUnGFxjfKhaj8bp22+yw6j/Jmc9k6Yza+LOpQGYbD9WBB1/hugbXC9Sh7YBdPfL73KsRk6bkOpkF18gu84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724156154; c=relaxed/simple;
	bh=JK3YXj2fpye1AGRDLaUG4E9lGAsC4oyddgLBYLDbSu8=;
	h=To:Subject:From:Message-Id:Date; b=TEhEcrE9mzeht3L11FRlL7YUknT2YvTaX07YIPueywVgwax4xpkss4ty7MHDQ+wR+i6tG261yT8PwsqQ+biHFFbPw6Iy6LVpfa5OBpGObilfogYXQSYmRHI0dZSwbend1RBsnXPt14U5uKP5EJN+00W1ebEisqxKAoM8ivAnR1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5C5iqLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5C5iqLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A477CC4AF0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724156153;
	bh=JK3YXj2fpye1AGRDLaUG4E9lGAsC4oyddgLBYLDbSu8=;
	h=To:Subject:From:Date:From;
	b=q5C5iqLHeGsGZaEB3V+xTXOSgZ7xhTZ1HVLWBYbK2TJkQe1nx4zkR4bCzSKUcGxD/
	 jkyNUCFYuGwUIp6Db3084p0vcpXIrErdUPCQa57meUP7C/2c6lxoFcNG70lkAzLpU+
	 hNrP8GY2J3G9rAweLm6D2p17ArTiuDb1c5RrnOcsilAneVPWwESbQdEZlfGK9Iq0bk
	 U8CBo6S9nZeGfR1gciE1QyNIyYFJeI74TVn2ymg4aaIs5ubOT9nTkK/OAb0ZcelcnT
	 RhRxT0gBNIEtl4aR4aEd1UDLvKcINz+eKULw0RLzZB6anMvYFXMqbsyRSgmlQS16/m
	 q9ck1hUSgp3Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D2C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172415615359.4730.314983765562667554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0136d60a1b624d80deb9e19cb6bd6a39eb913b9cf229f5dc6d88718fd99ba80
Date: Tue, 20 Aug 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724156153
