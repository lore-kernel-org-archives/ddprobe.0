Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426F71C84CF
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743346794; cv=none; b=aF+sFRESsimAEPNzLhGMpKV1FV8tkL8DUHKkFTTsNF41lgqpAoZ4Uk8yvYPchnIXwegAsrwxGE/VIvRzbJny5s9xz35Wmep6EL1TpLduJac940rh6AxsKOgwV1sS/kRjjyJdYk3iJlh5eWibomnD9YVmsI5AsmFJqxkezY+kCbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743346794; c=relaxed/simple;
	bh=iZmo6WM4K1YMWZ8XmgEz1ToaSVlyXwMmUmHn4T2JVv0=;
	h=To:Subject:From:Message-Id:Date; b=Zh8D+FfW+ZBi7YfJE7CdOqIBZCSNR7of2gMcB32cILZfl7zEpoHrRB+5YXoc1HPZ/d/NukS1MLWkpEmropsi1W/m+8EUV2CA7dXKCZnlkSWq+Bps8vxOWCXpDhmnkwlBEMJQ40FSo0lFNLjLSCZv0n/6MYQCMIOZhWap8ka7L/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLHzRUEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLHzRUEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE90DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743346793;
	bh=iZmo6WM4K1YMWZ8XmgEz1ToaSVlyXwMmUmHn4T2JVv0=;
	h=To:Subject:From:Date:From;
	b=BLHzRUEwNil2WNZM/cBE5BuE7dQ9SO0kNbjT2g1ER9aX453ZIQsAml+4+Uzu5g5PN
	 IlPUe18NOGg7AOFCdPYgQBPic8fHOFt8BpkU+ldccyqhN1VN4QHjo0hC1dqiH5Wjc3
	 lcdUsVPCYpAlvZE0Fp5o/q2484/7lhdYSy8CMVW8BYA614Y+cabZBab43jkIbuqB6P
	 oiflGBEREWMa2nezxdWwT0C21KRNdZ+u7f6q3TyP5v1DETGRMbIq2oQcOA0Q+Pd21h
	 0++hnT5XRy+hmWQkvRPeCm/P0A52GNOM4ByDGTNVpj6OYeRlq1cCPEDjjKtT9Mqzad
	 BVxNfdBSoKhug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D8C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334679358.29808.3938121627110958711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8a1081e9b0ae21fd8b1077dd483d1d659d9f7f3e31b7b4b3f6119f45f2b310
Date: Sun, 30 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743346793
