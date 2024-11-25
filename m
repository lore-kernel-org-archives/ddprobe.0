Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244322500C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732506954; cv=none; b=FBdgWBBAKzdhZcY1RPIDaJwX5zqeeawH0atj8znn5LVrB5ZgZYALLKWxTa1zQqU42uCMNHlnwcIpJtH8lu8euWZDyrbJ5rrzmxY/5vtvyVQDt6S8yPsZ8SBUuLsClcX99/t+uPxQlvIooJ6PtQrTxqSDtmbr9NC7ZW/D/BUQdaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732506954; c=relaxed/simple;
	bh=eVo65pMhSfJEYrhOHFRBMmIlfWJEqqvMqIpTfBMfo7I=;
	h=To:Subject:From:Message-Id:Date; b=o/xZ3Br9EevO/J9V5CcR5DbCzzXY9Q9CS1JcdxAGDapCvFVNERyQIbM5R1Ho6eKC2yPxVntuM7t/SlM7Do86YhbUJ1XVuTYld/M0IkwYnZPw8fct4JJOp0LKeZR3iAint/dfsKXN/0Q73pLLlnU2ip2CkgbjcclO7gTmsGgXvXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6JQ2TTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6JQ2TTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D2C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732506953;
	bh=eVo65pMhSfJEYrhOHFRBMmIlfWJEqqvMqIpTfBMfo7I=;
	h=To:Subject:From:Date:From;
	b=r6JQ2TToBE1nZ8D8hMG2Z3G2tF2wMKR3S6w2Kpfo/jy695bcjIQjIxX154lQiBl5X
	 HdLGci2Obum4VFdrfSxw96XNVLWdZHdyB3l2WV2/C9a6G8k1yL8zPiRQsJnUW5YS+p
	 ayTrtuiTjXAyUPkytC+biNQ7Cej2vUo9XKupnpPbF4onLSFZhyGmIihCPr2k9iHbjk
	 0dsZk8EA+OHT/DgXnfD80Kjp/ZIUGOdW4xgdokvzcFnNRYW8XAoOehDPh+k5KFTCjg
	 0zy6aws1rZgX0TNNzHii3V49Fw+yNia6nxVY04t+v+Jxx5OFffpyyhiE6Vo+dZcK/J
	 aCd6g5RwZdnAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF85D3B7CD
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173250695357.9904.3551916906354201067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b900342cd8909c6498843185a2094379c701a9c5aab81f969b75e054e613c6e
Date: Mon, 25 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732506953
