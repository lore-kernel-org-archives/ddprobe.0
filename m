Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075F830ACF6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768323234; cv=none; b=Po53T+7xJpDQKuTRJ8osEHHoV4hSpAh7uTHsH7XvrWFGkkDrarQfJrjx9xPakiJE2BzN2JjfQA+JZM5b6hwt+uYBLXJtQML9E/8hlVTaHwY+1aKoJupCXcrrW252H4UwZknymijwtHs2DmQg1al6xHpLzR3sjaFpA70I9eAcsto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768323234; c=relaxed/simple;
	bh=D7lrgq0nlB2bij1RgYr+MhsKxlPNAsPdPODWepkks9c=;
	h=To:Subject:From:Message-Id:Date; b=pXhx53VGPtvgc0UwSTPBfy8QZ3YlnMlba4CWIJChH/JBx8hWC21pprs9lYICi8rQjNa/GZ6PF371NjPghtVwsRlhJd91woYt5U2GoNtdfA545TKT8F8vg8XRWMUURUjTWcvG6efe3sPDEqxgTf0wCXzic1psxFq5xIC8rqsHeJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY3q49mP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SY3q49mP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2DDC19422
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768323233;
	bh=D7lrgq0nlB2bij1RgYr+MhsKxlPNAsPdPODWepkks9c=;
	h=To:Subject:From:Date:From;
	b=SY3q49mPBXGCAa3m1OEWPGNLtoHS1ah1IrP1J73TVx72ZiL8n48VEbCvcyTXP0gOA
	 d5c5UagY9+HWvBM8B2da1YJdtDR0KGPuhTZlh/ebK86LYd47OpK7qN3TJJeBp8z+L1
	 qUS6B3e8EvvFQ5kLwWgUiA+fr7xlt2S97xqi39gB3lMgEoLQNa6Py140k1LL9/PtHS
	 Z/XECb4wJUnu2LfDoSUSWBA0AThK9vk2BTOQyqLk8Fdd7yF51P3pAPA+E8h6FBxJ3O
	 +4iXHc12LEwWFUs9U9OJsYNbYrtSXv+I7x3Ti6ZvrpnlNMlgqyblPmxnBAQEKy6LS3
	 B6RrbkgqEQPJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E920D2F345
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832323357.30181.11651929954694097191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b63152d837487a0486e0dc3188a45dc25f9748c68e9b8d2986cf242c49f7bc
Date: Tue, 13 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768323233
