Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F7C230BD9
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761677394; cv=none; b=VdEok8tqJPvLYa4cbhezKYtKPux0KVUF9FK+NZG00JeDiqGTBi1Tk14hxQFdu/fqvB6FAY4imfhNmjB6XACrs7O/fk4VpK4xrSVH4FwSRk5vs26wqw5MEKwsaSm6+O6Ch+34751fnZt8Nn7CBarWmdearAcqFugdxjAEO930bkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761677394; c=relaxed/simple;
	bh=6jbrKweZR4wpM/mgnwCDPLHz1xtSMjVSyMYrmnT1A1c=;
	h=To:Subject:From:Message-Id:Date; b=cDk5uknv31Sjj5J/6ArrACeB0NI75oayFB7HkuDn7cRR84ZQdOA/E4NI41agzQjYmSI4hEXK1Zts//6sH8rKuzIFwWm7piq7M9s22UMsQDReOPQptmfti693QqHq1TpQzJZSlr6lRe7i9LfPzHmF1GHBXXi9KJ5TlSyZWYHpmaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8j4MCvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8j4MCvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B9C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761677393;
	bh=6jbrKweZR4wpM/mgnwCDPLHz1xtSMjVSyMYrmnT1A1c=;
	h=To:Subject:From:Date:From;
	b=h8j4MCvEm9xJBjKVPzN3Z3PRZr+xv6Gz8m27aN9tfbtl0/d1+EmR/kkbs6TX/jB6w
	 GiU0EzUdpkFt1YThrbWXGwNvmh7ZxuahWbKfKWugictqTrZX9yfViPJP+4BsbzNzHV
	 g0xCKDr4nKjRQ/tmUgblZXLv20EpiA6lG0Dm0rlW4yXm0X4lRKvkiWUnWIiPzbtWcI
	 V1Kqndjx1veynqTFl6gBfxLvqc4nLeyDSJdha5/m1NmL2X7cG7Lho+J9hoRFtqTZbM
	 9tlcwINZC0z4f03GR+6TMvDdIKOU/8mREvYY+Ji5rPFgypG1sVo0IF/rPv6RuufHMs
	 O0mcaFgfZid0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A2CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167739357.22772.11132610692990771779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b776bd82d6a17bbe2613430f302e6b3ec327bfd5943ff4123dc9d0eca5aa226a
Date: Tue, 28 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761677393
