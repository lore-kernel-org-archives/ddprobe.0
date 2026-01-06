Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD233431E3
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707034; cv=none; b=TfejRIjzqd6COlSed3ESVtYGBZlR6ZREQeHk65AxJJUNQWLoWoXv2Jg+nTC/r3roI6M9QoYvu8G5+/3I2WxHlWQhBGikgFlVOCVH2VzHKCRxqaF1CROSb8uU5vTB67oPJAbVQv56TeIba1x4T82KGwB53c0zt5q7IzJDXu04fdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707034; c=relaxed/simple;
	bh=XZpRP8gAIB/+kSLUSg6HB16Csjr8j/NRnL1DUshXsxs=;
	h=To:Subject:From:Message-Id:Date; b=Wq9LjHLeLQBVY/eApTk22UnjMnoKvgOxq2BpIsw3613mvTLfLQuuEkcn6a+N9jpkv+Ask7hlmgFnn/27wkiGZ51L2oCnNPmALnZz2EKylhjrLkrr6L5J1iUP7YwDV36CM8mr3wS9X7eiNFlHwQCXRGu6WkCjLwG19hKHkaVjUKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrkD+vj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrkD+vj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C5C19421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767707033;
	bh=XZpRP8gAIB/+kSLUSg6HB16Csjr8j/NRnL1DUshXsxs=;
	h=To:Subject:From:Date:From;
	b=NrkD+vj0XZtIqWjDU3Viz5frsxo5HmdIbHPzj36FvTKl/eJ0NcT21FdJAf2TEVpjp
	 RAXXxXKTAiTSG2hk5dSt7HyspXWhrJEDApxEUL2rKw0Q/qHlggsK38i2jNnbij/SPf
	 wT/BVgz9XNvxuio4UyVHdmkimDrJ+5MzHttFOllxfHlFxoYsZ6kI06dmZ3zL9fLo6h
	 2pZ6mwMdv4RRzLKbXWHgm8YiXy6SOj6CNamHeUSLBrHYgM1NsGw0gxgKo+ziYpzIBi
	 9XOlNNN8B65CsnDKhaeCQChrZ+PHEDd+0sWwoc6ENOF4i+W175XPdd/j9BQlASVUWl
	 mlEnvC8D22hXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC89CDC19F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770703357.12789.14900867282061260870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9dc9fed38882c049d5d368d17c19a58faecb8852e67d0c509d1b40f144045d
Date: Tue, 06 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767707033
