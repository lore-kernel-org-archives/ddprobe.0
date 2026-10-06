Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BE51D432D
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791262834; cv=none; b=DV2fYk6e/bKmbDdGYF8vYWylgV/l8LZSURyPJg5KhVMt/SI5iV5X+wck6e+2Avw9KTll7gkFPIglBpTW9SJgQ5x1vW75HmpJuAIrZK62ZTEyAKb6vYciEoAQWijGuSdARLGD/7/xny8yXxuQZkXJnrlt8nzhWwWpH5dSk74Gk2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791262834; c=relaxed/simple;
	bh=GmV0k05cWH3+bdow2+UnCA/W9mFL1XfkG1uSrw7PBcM=;
	h=To:Subject:From:Message-Id:Date; b=T+Dkx9JCPtcBV0wCBvRMtPZAYQ0rOZdMHC8VQerRCDdkUOew4dgyNOqIIz1wO78RIi3rDjHLjUhzhFUBrS0QKUeI8bwFYzbIb72dTDZTrrLg6JZ7fujAo4eMZF+hY0ehHBa/bPHIuHCkCWTgZzU+J5ACsYHcUVCwvLpAvh91WfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBt3IGhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBt3IGhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D695CC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791262833;
	bh=GmV0k05cWH3+bdow2+UnCA/W9mFL1XfkG1uSrw7PBcM=;
	h=To:Subject:From:Date:From;
	b=CBt3IGhQ/I6gnLSpZ0Al+96Q1L10J66IiA4KH8rqIVBrj85uuZcEvQjhYDjA/3O4Q
	 +sN1XX4UmPC7wyTlJDA/N50I0eAJIY4SImigcDpbusEy/yoO97zQao4NktiW7KAMVd
	 tycAC7i1F5NMV6rek5Zz2xMcp+tAFqyUeYyIKn19oycbtQZKw6v/zRUGl3EcVB37s1
	 Nvwf/K9ChUsQhMcocvy2n6AbszYHQjOjAP3mkYr7oyVKz8jxt34f/AcH+xZ/sp70/J
	 PUH950vNDQIkYPNdbPwtfAnF+7Of0bt35+4vwSYDQ0WMo7bQ4j34bO+kk3eSUH+8/W
	 pnRpbgiURsFqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8DDCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126283369.10842.3098049171680576890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbbf9ee7a6341482fbb4054b6bbee0133bde50f12cb31b440b1a2cf2ac75d46
Date: Tue, 06 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791262833
