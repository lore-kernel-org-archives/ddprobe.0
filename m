Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5060B36212C
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772859894; cv=none; b=X6oza7gyie+FNhw3Kh+aurbTX9PfPjk75Mly1KNPbaK4o7kzGKBuDg1d3kx6TQkl4cCcAHeIM30dsbegWqni+8mQR7/Dc/DCLMflzRQpYOTuCn4jGZ7mOyv2Mxha63G5D1y7Hv2vDd3TYcYyC7e/UbzuBr1CFjwMuMLeH4VvzwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772859894; c=relaxed/simple;
	bh=VSPT0eZVKPemOwJDHJF2KG5zR0QLnXyC/r9clyUthbI=;
	h=To:Subject:From:Message-Id:Date; b=QJJmdg44o3FDt5Iwo1jqpH7aaIn6UwfiT3v0FH3QTRlzDv02KrRter0okmsrfELohjyUau4ROEcY/tBE6+YcoPX+eTp4MXKpkCtMAXJxT0GQhMme5YBY8tF9FkQnrFG0aCCi61Y6ricvX3OfmhGFBUojTOXPW0sEe6Bpe2Aw2U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZr7WW5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZr7WW5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C54C19425
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772859893;
	bh=VSPT0eZVKPemOwJDHJF2KG5zR0QLnXyC/r9clyUthbI=;
	h=To:Subject:From:Date:From;
	b=mZr7WW5ENfmY2bqSjpcDiz6dBHr3P2IbDQmBZWlNZkoL/uQ4uTtjfW5ZAMomDATi8
	 uuT6GzNNrHwDohGiDcr2NLYVqtb9dxw6DJcuv0W0p5BLYWA8Pmm5bl0xvQ81CnKadr
	 aghp56SKaNuMO6syH+O1RQUL25hCTlQNSB2rkgLQLYGXG2LZPBk8bFkl0t/uv4D23W
	 LqRUfkvxODLXCWXgp0kHHXzo/s/0e3vCzd470nuH0+tGOTpRIip+UuySgGZzFiW9bL
	 93HCAzOGmkGvTXfB84CugKVkYqeZwC8jI9Z4wFlFFmm8VslZKW2b3nitx0urfeJ16A
	 JLANf53YD0tCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C33FC9ECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285989360.8969.6595019786292213655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a987f685dc78e4f4fcd7da603ddbb80e116853253d8f480bea88e4ad921e1ab
Date: Sat, 07 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772859893
