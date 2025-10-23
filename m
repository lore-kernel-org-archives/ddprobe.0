Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2214C17C21C
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761251994; cv=none; b=fMYuY6iXKfoQfI/Rug0EprGtWnaS/Peb/r1EyOfSr5sBf6jUMT6XlV7FF9wkBhWZcIS0PYpUit0CQQOZR9VQ7XM37yTEjiLYSd/Sj7QXGyn7B1+4B6g/Baj1UfI2lJ9OW4FObZ2ajvph6TU00/xiFGsRs1HYx1Qoe147ZPiAB44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761251994; c=relaxed/simple;
	bh=TI1+mQfXTCBP1CSOzLIvmIvJD0oZT1snW2sdIGu9fNI=;
	h=To:Subject:From:Message-Id:Date; b=DYslPapgq6JtkPvi852rsLhACp9w7JvPea+qPMqnZWHkgT9rq17Yb6nMtQOFW7WQqS3ZZW/wuDJyewKwRLAFYMPwtnjb+yNClzhnYCjfUFspbQoGGb/JulbhtSlhBGUl/zSBy5ZSHwPnTpNciClAD4NoREg1LPOhk8v3PX3/U1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZJjkQv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZJjkQv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B9FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761251993;
	bh=TI1+mQfXTCBP1CSOzLIvmIvJD0oZT1snW2sdIGu9fNI=;
	h=To:Subject:From:Date:From;
	b=EZJjkQv3+UlNZQHba5qHvGrSaQkPzque9aQzVKiz5R8qgO/rY5dothXN/vE9n3YHk
	 qsrfWmKYsqJraz1pfczZdtTv+1pHhBfGMGUm1PKpXLUig97THbW86nka/UiPF7wCos
	 gTEzIgCHQbGkPwJAJAlvFGS2Z36f8NLLz3kAh6CPpvlmUFI7hi874+In0iSKZva6oa
	 EaTR4VogDqYu3d1COo/k08JajAsOSJ3g3QBxjwCFLSVUX0cw7t38GgO09KHlvFP7Wv
	 Z2MwSlxkiq7BuuzvdpRWrrBydi2aMglBAmXYMlgC6yqBuMXHLRjx+7pcRo8OIbUA6Z
	 zXylmcsktHAzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950E8CCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125199360.19240.4784689688836503887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72935aba8c42b967aa03abd180fb8f79d31a1fe44b5f602d6cc450ab6869cce
Date: Thu, 23 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761251993
