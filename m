Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326902749F3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748518795; cv=none; b=jDvhAFauzlnF8Gwkm/W/QRY5dgKWWu1G0X2D0zk6Ulb0T3egKVQPfYtAzyN4obGOA63xDvbmz0I0tjAZjKayMAHcFVgx/OiFNYKwNReJw30XDTBgATyKwndAN3nFuYRmqJfuMsomTI79m5xQih8JvFfqzXwtW6TPlOxrR69ubUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748518795; c=relaxed/simple;
	bh=kUxn+/r/Ys7s56UEycC+2PsRHOVGjKuSdlqazTBn81A=;
	h=To:Subject:From:Message-Id:Date; b=gZr/Ah7pGnHOhZW0ZVJ1QGjmAasejCpzyRrBYnfT0odxHmSxY8Mjf16vUSn1EqMTzirVFr4tj192sqhkC5zXfCCNZ6Bv185WIi4Mn697f7bPGFHFWNDrSzKRB/imaEjXHCdm66sUReDyccbZmPDQj6zS0dD9pNYlbUR8uhEvO/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JD++guxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JD++guxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1358C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748518793;
	bh=kUxn+/r/Ys7s56UEycC+2PsRHOVGjKuSdlqazTBn81A=;
	h=To:Subject:From:Date:From;
	b=JD++guxqjHMrCmUce8GQSn1zFJkljrojRBnNyAcs6CVzcy6cCJeWDQSGsTWZFMyCB
	 OEb/bdjwT8+UDJ5TVE5MEOtCaWe3XWal3+OTIBwUwv7L1qsEF7dEz5twq5XLJk32U9
	 dfLud/lcQM6bp2jCuXkOhJGLAsQ2mN1+9zFuPyBuyfRkVM6R/SuJTsFshRHaQG3Bw9
	 aHEhlZuWZNFyNz+sTXVJEvTIJUzgXy7IkKfwkvrSEaHr4b6RWHxqHe+xXRoDOaLWag
	 YgXF8X8qECLiiAomOgoLlMPhvtLJxj4+E2Tnh1VaOyX60uZtEL3V+gRkqjV/3o4JNi
	 Fd3qEjBiVnVzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E71C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851879357.24624.17705312229682169128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7efde5dbdd2c68f4a7dca4052f5bddb780c466fc6fc0e1a03a363adda487d79
Date: Thu, 29 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748518793
