Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1633E7BC4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787654434; cv=none; b=CjDbEaFvAPnwM8TIKTroLV5ANvhCklvU8rhrJ3MQ5S9b4BiaxHy7aIitA5ZOHJ0rP+cFnHltE3yxhYfOJXtUnmo5AnKfB02DxKNikCgX4DcG6OuiRTi6UsMqogzf2b4XjypmF/nmHpZ9rISZeGdoYYVhADvMM9VQPCLrKybB8Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787654434; c=relaxed/simple;
	bh=OH35wk7qZPU67Ahrjj2MwiiDMamyIgou/P86hJ/tfPI=;
	h=To:Subject:From:Message-Id:Date; b=Ix3hWX3w7i2OogYHWCcL3v+csxrro1HsddfCvbOQKre1Ud5oSjJrN2rBheFMMP//TY++rz9IIXQyqJrywzWZfnufNep1XQ5vYR9W8lF8xc3aF0GP5CFTX/Od37pzP6RRMeG8LhjlvyW4T2NzQk+7fQDh06JOBvA4mfGNFEiilV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjASl3DU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjASl3DU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62F4C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787654433;
	bh=OH35wk7qZPU67Ahrjj2MwiiDMamyIgou/P86hJ/tfPI=;
	h=To:Subject:From:Date:From;
	b=NjASl3DUFkBdelaPgWlfMwnYeAXoQQ2M90KvJ0s4gZdEGPdaWfJzGiQqB47QKRkzk
	 qManQupEskl/bvwPcz16bNF4uMcskd5SeROag3lGa3Yv6uZk+5scGWrzpdzlJC5CTp
	 pvAl96/Tec/wPQ9aOjZ0EX6eBOmDH4WLWhbn6RT5Z4hQJgDHF1NI84/9btD25UnUH3
	 oMFLEoRhpDmUCft/E00EbK0o5PWYG5fhI82UT6ws2Ms5uF/pSTydsu5y8qJI/bLAjP
	 4LET/QHIYRuXcbqViGIvGadaD3sF5nDoNqrTJ3LZnFv0z1Ocb8V1pncTftd6u6b+Vt
	 I4akY6DWKRwVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B108DC61CE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765443371.7298.7766808726077793714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a61a232966ca9c90bc6fa9ac6253b64d1017ede8a43c3ea480c22e14100fe6
Date: Tue, 25 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787654433
