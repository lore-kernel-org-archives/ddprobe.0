Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153FF30E82C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768553634; cv=none; b=gtarXJFHLGIjvMc92lIrUXPaclR3JMs4jpLJdzt2zNiwSjG7vnMLBpms6kCzMeFffJ2Oo8b3nVCnuX1vw5TTmGZhD0lx/v43l2p6+WIYfYgpBF17gj9zoI5ymd233vqfpmBXvP+aSZm22vswAwdbGgBzyIU4AShXnRNychWrHDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768553634; c=relaxed/simple;
	bh=pZxp6ymM7jdwKQ3tbMbeyAiQzPFeBoChjKgYNZLe7bI=;
	h=To:Subject:From:Message-Id:Date; b=tFk6kPjTYAMp4zt/D3/WgCE/aEZV7Dq1rlmwYpHJ+CDzp915ZFo88NjdC5ObztYV9v1xI5uSVco930wt4DBpzSqIPzszTrT+M/d7riH6kxmJ0qLjjOehACDWXRW32erz8BfuD30ONSTbB7jkB0eficsY6UxJPq1t0puZZgXQA7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4X4Ob8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4X4Ob8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADC2C19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768553633;
	bh=pZxp6ymM7jdwKQ3tbMbeyAiQzPFeBoChjKgYNZLe7bI=;
	h=To:Subject:From:Date:From;
	b=E4X4Ob8jxZOqa8ntHuPPGu1W92JZWTAYHtfakdc6TFPen3B4Od8mFKfzWhfW9ifWn
	 E/7DtSBblyMxohrNVYpN84Jfd+5r4yr3D7KzDvp9kiZAbmMS9cN98TFCMkopQC4NAC
	 LrQ1Y2QJCRsTryyNlix92fNJ11GV8aIlTb1Y8M2eiQSbmI6Hs6EYRPo+cUXjbhXlCP
	 JnXJu0JwOBS6zYM1023rrfG02qBUc6UnwOr6OlyksWWNa4hx2c/0TmFD42cLR866pR
	 MYIIecMerhNYuf02ihwaVI6iSxgGFEY8vZ2Zz1OoiKnTImYc3Nmmtqc3bE6zTaFjys
	 jz4GFKIcfP+yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA9FD4A613
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855363362.7531.11027272917524886377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d903e9030c4fc447f77136586812893fe3af397b6ab483e8618221b795da56
Date: Fri, 16 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768553633
