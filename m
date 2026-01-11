Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194EA33BBBC
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768135434; cv=none; b=OcBO97G00jmGcxD//hurevpMks5dWGIXl8S1Pam013h5dHhQXrknWDsidYLzPJAedEqk6Y4eT3iCf/A1hZfK/4nNBiBVim8k907qvRsCywgsq1wslG2/E7O3HVVUwo+DKb/eWwz5jGysnkXE5ePWrxJY4nhnYkocT/n+bOKpU9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768135434; c=relaxed/simple;
	bh=y/a9tByp3ihSfXzLmtbMpd51wVjWyRYNUsxxTp04AfM=;
	h=To:Subject:From:Message-Id:Date; b=I2XGxifTsxHUDi8N5YRJhcmO23VwxAQNhn32ZuDzvWpLrCJnQ5HGEHjeZ+j7/cJjRXCHu/UtzUoLHVrhCiUYmOBy5ejJtO9E7tttZyCEJdubQRWbh2DTpfBZ9Nu2Szv3B3stpMmXLj/DvrwENkEQ2EAjojX5wtHUA1tFUi9bGzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqSxlHWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqSxlHWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6278C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768135433;
	bh=y/a9tByp3ihSfXzLmtbMpd51wVjWyRYNUsxxTp04AfM=;
	h=To:Subject:From:Date:From;
	b=JqSxlHWcwxqnAdF42uJzbaXXWElVxyzdvUsbqx2L6NOM0KfOxvKEEnsWPSD8AO4Ld
	 MJjUzSsLqdBz1a3w6oecficjPsY7ONMqe1A4kYz8XAixyAhrGDBoI3J9S8iBUz/9f+
	 MAMZPO+HMTQuV1Y4csp79vSPXTOp+UlpSZo5/iM0iNi+LzcB+7vuUanXUct9IWgGR/
	 dNAF/oqT8Frg21ql3om746AmiWyAfwGnHN2jjl0hdrwKUg2kXh7PH0KrFbNoWK6yyG
	 d0n/fidpav2kTiNjjjHhadsxSjIdUV5ptmn/wMIcBCPuiXiL1NDMWKCobDDpUDHkYc
	 ICSggHika35yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FED2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813543358.32394.11576796654853212112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b6684d520b2d688d3d7660b9d26b23ad0fb0da2432a07df023b2c3e92cf4d9
Date: Sun, 11 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768135433
