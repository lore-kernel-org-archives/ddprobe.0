Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EB5341678
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768297434; cv=none; b=LqdGfd3RXlEt45xu3U3IXL/L+2C6we3/gLmMqrJYWnevp+axapZHsVXHUGYWnyy5sXpJnNWaX738bzFi8QeBIPrQ33acMUkJgLnBpt8tdLz07UtxYv+KNVF5RQpHYkgOp/sEyUe0ydpXpvGeHey1z8j+yZ1kSL6IIQ1xtFGEb6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768297434; c=relaxed/simple;
	bh=XfKXXKk1cOuH/xyWMq94E3P03ou3sj6nozBBENmSd9w=;
	h=To:Subject:From:Message-Id:Date; b=NM2YPiUCle3nVvBkkDpkDef7PnLO1Vov04Kmoft0ZbyIvondtinp2BYgZPhgDFb58My8PfcG+PekCnDcI6L/Hl+pqYdr21OT2iRk8JenHigVrnuYjTCegaKaBSVjeJDGFwWckH4FEYWCs3rJhzJ9sbhwlGk7mIyloECEuaftz7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOXVkvOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOXVkvOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0265C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768297433;
	bh=XfKXXKk1cOuH/xyWMq94E3P03ou3sj6nozBBENmSd9w=;
	h=To:Subject:From:Date:From;
	b=ZOXVkvOr3/tLhs/C3wn9fDi3ZYdXGq8cezlQj/sM28jkTR0ApRyqkbZojFyZ8V+3Z
	 VYBMLPPlIQM+hlItniaSR0sFffJvGc77/4wIGgVH/dEYF4wxuSrDflG5ASM3vRC4ym
	 J38WM6zRyB889hqMPv0i5eNGW3dwAHY9FgKdi2eaWK5989P3/pTZmM9D/pcpzNd6Qu
	 BiLZKqTl6wD/hP51KFAVAb084zQ8z8hQy055L4OxWnmlzEc5qOZrMdp+h2knCbflUd
	 16Xl6ak6NpR4g9yRsDEbT+iUztz3fv9D3vzG0vBMXxm+/QYLp2VyIqsJJwpESTqwPp
	 tnDlEVopJrUNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91353D29DF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829743357.21401.12282099126970353057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77575cd66fed2fd30a3854b44ddaf314b5470b8e262739399ccdf063edc3cd5b
Date: Tue, 13 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768297433
