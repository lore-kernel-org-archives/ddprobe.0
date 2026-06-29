Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4279C3451B3
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782701314; cv=none; b=u6uXjF0N7x04TUIm8O2CqJTIXAqeGZgHyXg13z7GumFZ5N3aSHEyj418Csd8q6YwxSXllBg+P/IRcEML2QQW81Oip/cnQrbmsCLwTyWymKGCnBafjExhYOy7yvSxv6GSVsootrJMGzVHaQxhkVEhG7NZFUMe2ks6QObNc1BnWow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782701314; c=relaxed/simple;
	bh=5fjetOuGWEBAftW0WBMQQ1AzJCnMz75+mfjpNWCYHbM=;
	h=To:Subject:From:Message-Id:Date; b=exJqz6agEdL2ASMKbWUOZzE2+SCIq7BXuOrUCcR3TMiw3juO37ztnoAfEFE1LfB3hpFGPeJjvSJ0M6QRq5UJCIQnzdf62N5ED3eeObMHwS1bOy64yDeoQbV7RufmKpPdR3QO86O2u31ikc1lK7f95hBXzmgs891VJol4XJqdhfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRFe/jcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRFe/jcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7717C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782701313;
	bh=5fjetOuGWEBAftW0WBMQQ1AzJCnMz75+mfjpNWCYHbM=;
	h=To:Subject:From:Date:From;
	b=PRFe/jcZX3m1uF3ngw1ZGT3SUKBPrSrURB6uzwB6ltvalKSMxdImMZouMUlLL9exY
	 WKhVAaYLpkPlvkVCmZqVuI9iZ0xbkXZNmAvuXVwuHTWsUCJyp1SEiRc0oY0pZM33AW
	 aZa7ERSb+rvDmYSYD0eFtw2JmESPPlVIsAG0IPC+MQLMFkbPMllAoQBc/YZBIFQaup
	 mVdKAyHt18zDr98p2aCBV9uN/DixwrRPnRrUP4gR9uZPDDQHFZ7TdawKHNguysH+dw
	 0znPp9AcQFCRYNzONOeeFjA9Tzrcy0IxXCkieRuqYEjCJ273Z+iyJypcCnGCqJ91X4
	 XvoW+maQrS+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE340C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270131368.4415.14847908089580211055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a248ed104b738cd09ce81e0b32e995c0136857447194d1a72b74d6f56c5910
Date: Mon, 29 Jun 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782701313
