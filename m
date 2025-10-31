Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C019307487
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761939594; cv=none; b=KCTppey6nUQxOHMEc4i+MdbIX4uRliQCMYhJUOyHSTznelQ82SvF3HTz+BtpsH8XfoW9aNmM18O4m0BH9S2jn1Hl+iqelIlkRXiCAieLp3qVtih9FQR6fs72+KQfciNdLLqmSTQtNGTgc5kxjycvz3/PLjbrSkWL6LKwgDAFqfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761939594; c=relaxed/simple;
	bh=x7khPS4cxoRgQpA3UP9oQq9gIgsJc/sNU1GsJ2iPbL8=;
	h=To:Subject:From:Message-Id:Date; b=YUavmzIO6suw0Wd/vndB0oibNN4ouDrJhMpHRXwr7wzq0Gb9x/38qvd7LK5bFkNbmQjrv1k16b2Cdieaekulr5uW5BFjFmy5ynvJZogJQ4gSAQA/xLW+RlmC0PjgnvGvV8WVeTfmE6C1Ubo52xlw8jXzxLLH7LVghlw/Q6KGg6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXDBiQE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXDBiQE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45B5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761939593;
	bh=x7khPS4cxoRgQpA3UP9oQq9gIgsJc/sNU1GsJ2iPbL8=;
	h=To:Subject:From:Date:From;
	b=cXDBiQE9a+ypxjsE3nAC7yZm93ImSov+JuvZSZ8Kd9GcnJ8bxwwILNWoAdrCRfKbZ
	 +unnAsORcrZkfxfG3a695QbX6MYrCEOw44W5qhN9Cnr+pZ0yof41loLzkGSRexJbCa
	 hSVpIzHe9fiaPZTYgt16YqBVquzBs4DmW6lDZzIzdoGf4yuDhB6cFnQjENbEUccIRu
	 s+sfTsdoBBCuYKIyXv+FDWKPZcng+L7zXs5hjF19VD9L64gKdTyTyF+Khv7uPBPs0H
	 +agb4a+w4ep31Fbk8+xhll9IH34BIl6O04EB7JE8/v16lKbrpGMgAzVn18zctECScQ
	 wnJpei1eKXkZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29F6CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193959362.1728.15006709936784319659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b33ba134e9dadad25b3b11dab4b8390f5ec0aeb217ceb11b2b3a45bc08ec6d
Date: Fri, 31 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761939593
