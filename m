Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDCE500947
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768031034; cv=none; b=u9K8uL7EvO2EMTAVapnwBKnGGBYxjQ9ploTViqjgP4HXhR8bHhphVVYG0oNC/eM4sTfcFVDU9+fe+clTEU5CgsrSxAwMHsMdq20Ys/F7dBWMMQ81l+OtoXq77atbdKbBL1D+/2U3Qs8+6JchUm/AhPf3xNBHkGzmT1k4OwDfeGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768031034; c=relaxed/simple;
	bh=zSfMAWBMme/bOvc9WdcF+8/PT4qsuSlXR6ymDaNT6/w=;
	h=To:Subject:From:Message-Id:Date; b=FL6p9ZvNlDp8iS/jhkUnpm3miMemQFka0tyY5m1DP1ZejLwts32MOTsByj6LcPq9R5FNvDD9d+TW5k9yl3eBmJ905HgJ1MQke3yfsGVnqnNUIHr6YaAQjBt1vDO1fosTBgNlGQG/vn/hoc4jbLI6uPsU70BH08rw8hetAnPb4zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+Lb4EU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+Lb4EU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDB9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768031033;
	bh=zSfMAWBMme/bOvc9WdcF+8/PT4qsuSlXR6ymDaNT6/w=;
	h=To:Subject:From:Date:From;
	b=u+Lb4EU9JBkMV6dlJFf0VQSC+yifoYzAO2vpv/n8ovqaN6HBR4oqmfWH7dcDDHNgQ
	 Ap1K71xVm9RiVXgTdcJVjqjIN3yos1Z2fLz+uPiNKSORZd6Robav7hHV83kfwggv9+
	 ccimDmyqhFUIaC6SPEt8w7xUDGgtpM76OekkivZIiNwlwxcAM+ni846wAbYB9/81a0
	 LnNW/VV4D6W8h1iwnMVnbeVHKgHkLc3hwJvjUoKJYPyp2tksbsxs2mtCsMfcNkhakn
	 k9eCqeFMUGvkqKAfRwt5h2ib4QuqQM7Aupfghf/d3h4d5+m/6/l43+X3Lz9cmXzbqX
	 OECvh49ghVSig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A5D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803103358.19409.3943631469602942638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe11fdd6f3c22c166806b9386ebbc6d304b2ece3a4d46a1f9ad26d5bb75a496
Date: Sat, 10 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768031033
