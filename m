Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53693B669
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716722663; cv=none; b=PI9bZMC+mGxBt7DRRoVTGYQu8sQlmRkkDlgnT4n/wzMhoW8ovpr5euVIN23giDSbsSCODaYbkruJpCJ0JVgTxj9ArzjY8DKsjv8krMbIFqAHPtrbd+xRoQcDuVpgLZxpUSYZB7GbGdpLABQLmz3GnUtfWqzqGsun8smTQbSQe8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716722663; c=relaxed/simple;
	bh=ONOiu+km8ov9jfcplaZCZnohoVU4kTbw1gfo+kbbIQA=;
	h=To:Subject:From:Message-Id:Date; b=LAaDtE623ouNq/s1j4ZaDqwxZeHKKhPvmLvnYu6p1nTiZcasbgeLI1LOm2TQimLQaBngy786yB70TADcLbljMTnWq5jYQT8jVmMeYGFH2BQD4YgxlVprS0xuHE1DeB9GZzTRlwV4nRDnu2qZHdXkLQ9ZNkDeW5tntP1tC587FH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcYpWwVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcYpWwVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E275AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716722662;
	bh=ONOiu+km8ov9jfcplaZCZnohoVU4kTbw1gfo+kbbIQA=;
	h=To:Subject:From:Date:From;
	b=jcYpWwVOS55VfNAFDfTJpMHnGmnvrq+Zf2MXz0t6pn+NzXSpHqeH8VtV89Pb5lQmG
	 Rj/55UMo78CkWw36Vish8fHewPJts+D904qgg9f/9ouqC2tbDrT/x+nHs58o2Rc2uR
	 Xwiv0SQ3bSLzHuwjKvYh7qCjjQH0b1cWa7zsCYX4H4wtEZUgBiq1qYQpZQZWtHC/P7
	 qua8reaSO8CxuuxsEtuU3S9fgYqrLIFLUi2o1MWuSQ8u9Ryk5WiXvnTfaY1kwR/7SU
	 Bl6TycADyTTwuBmKQOmmQ85pKB+GPFbdDsgV8wv/NXscGplDtFy6vfbPk4b9tZEgBl
	 VOO447v6Qis2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CB6C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672266278.22829.5883076163857958538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb055eeb29246683c958a3abf0fdad3d2ee1a5dca28c1585a385e6d744079cdc
Date: Sun, 26 May 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716722662
