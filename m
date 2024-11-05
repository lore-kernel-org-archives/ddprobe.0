Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE231FBCB5
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730847353; cv=none; b=JBWYdaiq5oWrQqKM/X0glHPUQpC9t9dwwWFe3Sz8JA3DivXZ0dNGS6gj0OLscmjVBMTm3YWonF3gBjcGLyeQVrDI2xItIXMqa4bcdzUzYNxsQjrPUFHuzol4w+7v6RnLI6yhapoH0QAir4VRx7DAMw5tn2Q7+zmdtVf6uNf8S+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730847353; c=relaxed/simple;
	bh=VoV0hTj8KQ1/mNw6X4xAAOpH+C1sZDmmHcMNqynZ1ak=;
	h=To:Subject:From:Message-Id:Date; b=YdI6kW+dOhwJjaaBArw6BgFm2WGTFIu+jKDIFQiwOsN4EMkEC4rnjvnBgFHgpMoCPb4o9zC4ILbQIoWe4faktUyQ6H4yKug/zeWFZ78Jbdos1dzizLA21ZVg6M3vz+r9HJ7wIkxNzNEikQvacO1WZZPbEyL9QiULIqVlMJqDYV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulx2keHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulx2keHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BD1C4CED0
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730847353;
	bh=VoV0hTj8KQ1/mNw6X4xAAOpH+C1sZDmmHcMNqynZ1ak=;
	h=To:Subject:From:Date:From;
	b=ulx2keHfm4LpXHMcyQ9fypFJ7cEHwdgL8xuNUXoWb2QzBn6cF3k0e6ldccXKopd0a
	 pJUa7UcrLLI/aL5GQCX2QcI7fAcDyCp6y3+ZbcsmMz8qPOntFp4PLVndz6A+yMv8oU
	 iDg2QtxI0xkXoZrELeiE7rA/OPG+j54QDTETuyQp8YDux/wAbxR7dzf8X+MV8KJ7nm
	 V/N9ZAPmTQCxaxrVlZFIq2kUBUq1rTK/jbcaX451i6EYeN3p6LOOySWmcmp4rcgZzd
	 pgGVa1wTLXqnfWNySvhhTbSrSPB53x3+a/4fiSy0BrpXobHpLv4YLiuqteYtht4yxe
	 9rCBfApbZ06lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F8D3E77C
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173084735359.9701.10617473580117216747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e1cd1c9322c95280c936d1dfe78b6f9c33f03c878f843808eb663f1d01a5ca
Date: Tue, 05 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730847353
