Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402853009E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780321474; cv=none; b=CSxqoq1T7tuwdYXmbBNpp9LJt3E5oMPG+1pSH2YV9DonAw41Y1AFKHWMbAW4iiccUsPTDDB/0pGZv1+7h167uDn7cBys/iC7VOibxKoQ3yHa41QFjCVBeBtwkPef6OLO6iJnLYJOF5iH2lV3dtG0WFhgAweIOxBktsbECHHX/yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780321474; c=relaxed/simple;
	bh=KbD/VlgR7zlTTQhXJnhJ581NdFp8oX0iGyLo7lxGioE=;
	h=To:Subject:From:Message-Id:Date; b=r/L7Fq7krBm5tQm4JpAAOb/hrY+ElrcNIPFx5ABLNfHv/o2awB6NWHHe0czq/ZrJM5V7Ng8BH55w8FSlL7C+rGXoEiY6cMVrMSWayHCxHhq4r4/HcR5WgI+oWhGqZLHMxoJiG5HGYX+eSFssTtHKzwpLeC09Wmq75h8mhdDcCa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ru8Bv6MC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ru8Bv6MC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79FBC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780321473;
	bh=KbD/VlgR7zlTTQhXJnhJ581NdFp8oX0iGyLo7lxGioE=;
	h=To:Subject:From:Date:From;
	b=ru8Bv6MCLUQYcBi6LEVaJkVCLtlYHlX8zXHQT1ajIC6pwhLmEdtREltb0T2ITPogi
	 3YMGmmpyNd9YgQ6S+k/yEl7MnLWVwhJmzmj2rmrhLKy9QHD7TgmNN+bV9TfnZzOlTE
	 mcTPnmSQh1G+G1zumhRwhoDriafLZ0z9XNQcvu8eOPcK92OJthGPilxl6hpy30gYps
	 zoKhc7CRBfvssPmv20nFIiBwJ7H3qrk9dUy8p2rAnHAPFrfnbE2vUibkUAPimxNdoW
	 ek9eo/0rRPv7qS1QN7syxQfQgzOK6Fti4topqUHuYDcOes09q6e4joJE+pe13C2Ei9
	 Y/zVUVrZ9we7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B567BCD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032147373.21842.18370691819975639861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a7b25d01c2979afaa3864c23de16a656b39f5b5ce758f1399a3ef29e26adb4
Date: Mon, 01 Jun 2026 13:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780321473
