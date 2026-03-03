Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAC225DB1C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772512494; cv=none; b=Y/RdILVlrUKtZRAbbMNTNceaIR93LbH4iATN4/5IgWSixNyxto2qwX9+hQlESJMhJ185IPdHzjoyxBN78NYcbTlophkF9kmAg8smMXATshOiXVGqEj/qOWIHWqWpZZtztrZ74PwOGCW/R/32drfiHZmJb8uHBhy6Pewg9+pCALE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772512494; c=relaxed/simple;
	bh=n8/1cw7JKW54hyN1uItqW5stou8dBbG0NDMdwqJN2sw=;
	h=To:Subject:From:Message-Id:Date; b=q6Bu3Ct3ZwFGB2s3B/5nRHRLhbsovMY/sadg+G04VbQj+c6Ly4QtHn3h6pnb0RkJ0ChFzO/1kFKAHCTWYEKzvh30tL/rSX+fleTkR1hKvdLJP4oyVkeRuCUPq/cqpnrmRl62CN55sjfDxwEAKhZCx3MxEzO8x+38JGfO/k6FI7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1oWiIgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1oWiIgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E086BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772512493;
	bh=n8/1cw7JKW54hyN1uItqW5stou8dBbG0NDMdwqJN2sw=;
	h=To:Subject:From:Date:From;
	b=d1oWiIgVqPDSY3P8/vrpDI6CBsm1EEtQcFfzLrenK/sF6VtTCMgO1qavUPoTaX6xR
	 vV/LFsm6MtPjJZoPPd/EO0xNry4GgTd3TTbt6NDkHFal5XbLX798r1oMqeBdlU58Ob
	 TIQ1cAkMua7QboLh6EWGBUV2sz2Pbap1/1vbvISA+jmRdRF7li6ML2n6ciLvSieOci
	 0zwHa8VCIryY6Iwny1FdIqxvR4O30GoImEPCQFf+a9bXA3DP7Fthk9O7BBbMJ/uyNZ
	 u9mNzw264+2xUaE+5URVqFcwq7H9suEtMfIZIr2gOXRKEZLJBmnlwQvghtb6ip3qBs
	 5x3vYuFgVGfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C5AE67A65
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251249370.21517.640328968523351003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7759dd4ad3ab31a1c8c02a1de5e1cc7f6eed81791783e8878a86296ca682dfdd
Date: Tue, 03 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772512493
