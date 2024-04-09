Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0ACD25757
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712626697; cv=none; b=rfpIJwG6yEzUAW7shZZ0rkGCAuwAjO3ac20PeYyp0KU1qpKP29Su6WO5AQfCnoaB1uBi9f8GAZCuNll2KGWXBDfFcqsvhW8L4JQ9p9ae0xSagFsmJEGf293ZbVxQGs/P6hKxZq+H0q/Zw/tCrdpsZm2klPeZxhOr9FpA5ziHgSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712626697; c=relaxed/simple;
	bh=No4/QsDIVp6UrYDfXeLgc+lREYij3ZbxIJcnVIAtyrw=;
	h=To:Subject:From:Message-Id:Date; b=jJ0mTOVTHlfFO8luu/QoDg/oXhH47UK9z+NM/NRz/cPW1K3oFL3xnDNAjf85PtKobLZfG8CoF3t0h/P3in2zHu+3Xe/qZud45otFsrD+cY9zhQxR7P5EkHSvGuSXu/PKLrJaSlF1Jj8a6qixwfcNWaJcdyu3322RxH1DiCQQPwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdtX1M1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdtX1M1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE41C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712626696;
	bh=No4/QsDIVp6UrYDfXeLgc+lREYij3ZbxIJcnVIAtyrw=;
	h=To:Subject:From:Date:From;
	b=XdtX1M1jwxGSTSZpNiCRGijdheyQjcdIZvA+IKs4tSBQ90I7iq80mvqqhfYm77X04
	 OMTFpWa/ZY0e98yS2TauNYOTgJvwReOCtvvW5vjhlVsilY8lsckqqUmNW4NeriEOzp
	 6IOmjcTUXk3LJQ08JPPUCK1lYXYdQd1HBj8k5rTrqn0SLnI4QzOTIh3ATJw0dC5vk6
	 oOKQKC5j8gHBcj3v9O1Q3yOHKvyaiGCdlc/P4grDT/x6D4AnVoYDTKqb+4KWP46iRA
	 y7w7mDfhUequeBSEkp5EJSaBqhMAhNCeKyXWfFgo1Bk/3cAHzsSXjHTCQ1tlNHC2Ue
	 mdlfH6wQSqYfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8D8C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171262669642.14412.16374315308003223328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646353285deaeb9d1fa8bea8dcfabdeb2d259ee8669967b0aed95180fe74d037
Date: Tue, 09 Apr 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712626696
