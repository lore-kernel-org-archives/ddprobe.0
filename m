Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210842BD0B
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778472634; cv=none; b=JqKvzHkJSjNYEG5XRvuWlI1yTVPMm263DDEEoB8mcgJ09Y6/53YT5/fVMHgn9PGA7OSvLb9mKRip5+swFnomMwf++uSwuazEGBShMWaCpfUKtDow1bIxebRRk4AR2biPx7l3wqhjYdEY6QyqykGqfULBpSNqeQcePZB3qL7388A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778472634; c=relaxed/simple;
	bh=iMfUiV3dwF4ISoSxvIcqjoK7X9E5tN6B3ycxQXZ6zgQ=;
	h=To:Subject:From:Message-Id:Date; b=d/PrU7vLUD6ou8Y11lwPfU1JDUFSkOUsQzG4v3RFd4oB9dCNLH7uqbkv7eIPP+O7dV/IhUc1TbvNrflG8pOgdky5QKWOKSUNIatvzm74/IFj1Xfwcnx4czG6BVhGW1Wcj/uluXCwOh+154h2MLp476zYS1iHY8gSlxHIP2XuB9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjR8hUrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjR8hUrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22FCC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778472633;
	bh=iMfUiV3dwF4ISoSxvIcqjoK7X9E5tN6B3ycxQXZ6zgQ=;
	h=To:Subject:From:Date:From;
	b=EjR8hUrVCmzqr1nKFhrbadKSUFpdgCcWfZ+cYLXePyQlqwqAfGmMjhtZ+WkuNOhdP
	 1SLYxw6lbBofwCxNThQNDpFS0t68lWSXK1yuiMqTYhiBPBsowOy4WLKdj5KfjELZ4Q
	 U58BzE5riX0MareseZypZGmeJdGq3gbJlfusxs+My3/49IzW34y/0eUWWLjlxeXUwm
	 /6Z4Tz5vSFLCX7XWXhI5KMQZk+Q49Wncm7fOY0cpxkfTG++u2ggEMN82XcR25QGOTH
	 Tx7r45bJrIVncweJ2aTyCDuVqQ6fbPPKtDJdrs9e0RhMKpx8QAm1HkunvTSYlHZ4os
	 5XRT6rXT0n/kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12EECD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847263369.4560.4519953734934135676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5b8c8b49a06a5c4d448c53b49264804edcf72a2eaf26e5ef8eac9a5b16e49d
Date: Mon, 11 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778472633
