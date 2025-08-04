Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4F821C9E7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754322595; cv=none; b=XVRY76vAZ/Lng9N0+IsYzUEOjsjeqvFTZXXW9UIxW4mS9CjGJc5Xf6K6c2XQzG0LnImfehDS9BkkbRkoQqMXPEZe8NEC4nzoPi1LuVJGMlNdNw/SvX798pWF3vOhK+5E8FlXgq+cecrn0APHoru/4UK/y/i7OxKStT0oeuOdiv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754322595; c=relaxed/simple;
	bh=lQ+nB0QqYdturePLyC4Pgf3OnpimmW1/Sk5EWAADhGk=;
	h=To:Subject:From:Message-Id:Date; b=AX+WZy055+hSL+KVkL1sB9xoV+Im5pIeavOh/qfPcxe1qxvq/cMLt4rL4B8a5Q7gv+UJqCSx0Q/DpPMWmN8VBT8h+tIVH9WixqblpAEOOVZ3jJo+WQHPKSecwCfJ4H8qKLuJMjZHWfE3PqLWMvlc/vWB65qnOfmLsYAdYgEI3sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWLxJaGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWLxJaGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A186DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754322593;
	bh=lQ+nB0QqYdturePLyC4Pgf3OnpimmW1/Sk5EWAADhGk=;
	h=To:Subject:From:Date:From;
	b=pWLxJaGZxPuSf6noscEt6eE8arjF3vIA3rNu7lUL53nJB+JqUDjHv8XasJ1M1EiTT
	 5jto8MTL2psNyPROKMr5sfB7V4GCOGSwmMejKfzqIfozUWK0SqabmDmxlN+5q12oOo
	 OMSETd7tom7JIs9o43u4ruKVgXM1FKKwcPjspiPLEt+WRmyUYbN+OFmOZoNDzkd33a
	 x6WGWJpfbXTTKhqButKV9fuWVmiSDshs60GDUrlw9dV5fqKMSvaDJv/kW4J6qFy1bZ
	 M3tdxp0XAoDKizkHcYDPhWeYaCma8LtnTaqRTX+/SIN1kC0HHd9wH8jdkbeEsNsDsf
	 +6EGv36aDotqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F111C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432259357.3263.5922313193910942797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b1de4d2bb15e40601d83ea8cbb73ec7d08b7903618d84679c8f07ce1b1a623
Date: Mon, 04 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754322593
