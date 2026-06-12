Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513A03630AF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781297194; cv=none; b=g7bJVV7SwY1chvQ/4RLXJ0QAWX+lzums1IgUeSt6rcYlryDlacqOKQU3LvF9qlM8l5yOLkb9s8FPX7zHVVoD8z6XphFYjvtkRN/deg9G7fKSD5JX4VLzamGhMkvhSt95I+VrRb0UJd7h0KA944yzIwWQ0kZln8w0ghVFtmQsPn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781297194; c=relaxed/simple;
	bh=7eNCe0PUd+c0bFayeMH+uwB2jI46sNsoNRDqdonskws=;
	h=To:Subject:From:Message-Id:Date; b=N7rVI7nsC3XqAGoHxOL392hewQlpoZxn/3Nz0P+IomdrsVksIgJ8+jQeyKJDVwZwFrygyC4gBUJHdZXFvY0BECejSdmAN7/0EooUhRqIvKTkiqJ46FK+YS3bcITNDgSiURvOUn0Cpc6P3fHkuUcVaxOW5ymInxf6bJCi12TtRWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCD/Ff5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCD/Ff5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC91C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781297193;
	bh=7eNCe0PUd+c0bFayeMH+uwB2jI46sNsoNRDqdonskws=;
	h=To:Subject:From:Date:From;
	b=LCD/Ff5E8N+91MUeAjBejrnw0SkwLKWEFbdN7rFo1wqlBxRcONQOGFzZfgV2E4RLv
	 Cd5QJ7GzrDUaMSL2B/9CFtblzoa44kGy85jTls/4wEFkurD+VEKckebNEmIqk9Zn5H
	 kyuFf1Cx2srvFOMc/7vGwswQdZWCnSQGCRgQxZUNBQSb2zp/uJF/cAI9CnnhBXlg3k
	 3Wl0T0ezpm1lItuqCphREfxeEjPsHwU3wowSs/j/Qbn2EB2MZQUQdU895OmXTPZUKp
	 fJAimYHWautyzFCcO9aFgIFCFszy6bkq7oOaUJJOB9F60t5MfxziFGg3ZIpIUXHHYc
	 Dyuz6O4yem0ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F48CD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129719368.8708.13099506131045716417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15379bec90cf7138e9b7381c10bd2ecea41b9c2ccd995269e1b7006ac13b514a
Date: Fri, 12 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781297193
