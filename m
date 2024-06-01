Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D44AD48
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717263923; cv=none; b=MepPbZrRihNwmAOWaE/vqYCBIWv333KOr2yl/CQfrguYBhvosMpHA5r3g9IZjXxhyUmT8pdWiGXJ0Lv8FKpmFIicqzGOOg1/WdxphDW6W65mELtVW40g5tKFq7LsU6vaaPhGrz5Xrb5ni5+VileDs+RiGngb111h2ejZWXQmgMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717263923; c=relaxed/simple;
	bh=gMcO8vMBmZBqCFJRw074Ytoyp9L2pS9X4VOXa0vKte0=;
	h=To:Subject:From:Message-Id:Date; b=CUhQYor8yj0JUtuiWEbl4P7OczCg0b+oFnrwC4tz/yZneGwWKlr8IoybJlYq2znLG0JPZJBXGF7UAfVLqbJk3G/TsscsaZxkFK9kYjG4uEcCSVTbioysZQA/vQQ+uPQRGPD6TNpw1QV6vHQ5ic4eRZurDYDKXdFicndjsOsrZdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWLXOv+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWLXOv+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F91C32781
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717263922;
	bh=gMcO8vMBmZBqCFJRw074Ytoyp9L2pS9X4VOXa0vKte0=;
	h=To:Subject:From:Date:From;
	b=HWLXOv+b8614AGUYLhB7NXPi3sJ3VurzZfFF84OYqrxYsTY7Oue09i1jfy7CaXj83
	 AuOPx+KCKSOCpOuXtyVCtBj49adVwrq6a3PRv6d6IWz2Ako5GmgKvOZ2Zl1x656Tei
	 YX3bKoEP5ep4iL9/qNj9DwAh188Kz4D/V1WNrZPUSuNFbcHelhaS8JjR4d7S2QXVP1
	 DCFthXs7ka9lgP5qvYwFIYJihbgCgrEbMJ+voT21IT8z8lYW5lTrVrgWHkROY6F4fr
	 uP5ZopsWFI1j9l/GGc8CozFNNFXL9NjaOMBWS46dKJslynCGVLB6XmYw0HD+OVWwLt
	 NpEPhiFePwzQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D078DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726392282.31425.15579628502493663977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be8e05da020477416fcaae8ff36972890018649fd7b071e46a3af7d705bf52c
Date: Sat, 01 Jun 2024 17:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717263922
