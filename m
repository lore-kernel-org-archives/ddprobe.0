Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95FBDBE5A
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716735863; cv=none; b=ZMYsSkJOGzBH/9WGPtPuvJlLyjb9vUelgYqULnww3vHRaoH/lalDRFetPm/s30gjhHtO2eWPj8XKpulj2SsaeHOTzMmf4zl7bPMn/TNVxydRPVKEQpIq+95bMPe/XhI5Xm8S9ozS3vdigoVJfZ+c3tbEyzdG5W4pvGvfrSMdDn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716735863; c=relaxed/simple;
	bh=UpDLGCQGhdRZW5mcAMEy8IqEWIhIJvN/sn4bWvNa5sQ=;
	h=To:Subject:From:Message-Id:Date; b=gQU2KQtm1ZPMjI8uuKcZ/fIIx1XjnVnoRswZpgKQzizpTN0viH+Z9SLlEt8sUqYxg+6Zaz1e0yLhF0IuoIw41Nh9PfiTRT/9ySlXpbFgdd6dHIlXf7wBtA1tPkH7RU5UJv1lctmTHiiz7usjmsyMJe9h0nCqibxVccTx+I3DLVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SczgpAcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SczgpAcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0864C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716735862;
	bh=UpDLGCQGhdRZW5mcAMEy8IqEWIhIJvN/sn4bWvNa5sQ=;
	h=To:Subject:From:Date:From;
	b=SczgpAcPWq0v3zWLmmnywQyaefnBRn2cymyTKmFEOVvzNImM8PQ3vipC0ffLafvlX
	 FGQOQnS0VTVL+D4/sg78LkSB2u6U+6YwZWSberkTroYIaWhcnuExYLIz++w3rWa+AS
	 2Mv/2kpAnhxDVJIvJLbT7x54hNmhysdoc8iVhghP8bR1VDkmC7lx7lBsbEKGPzkWi4
	 GFfqS23hnKLaPIEvU+bDlRtiVx9nDYdZyl3OyF1PgfyAP1jUg28mXYXjYrnY8tZ1qb
	 iDQx144cnz0TmID6oAdwfY/A/3t2NFHq7pVlvtL21uJMeB163Dr/wSbG3iQZJSAX4A
	 pmeunWaj58hlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2DAC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673586279.14964.4554243619585089589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0d8c97a117d3b3ad8f1865091cea9dbf771b560b1c5166589231389c512a31
Date: Sun, 26 May 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716735862
