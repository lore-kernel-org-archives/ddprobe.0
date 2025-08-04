Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3385170838
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754275794; cv=none; b=BIOnBrcxNZzJGjxUr9Sst/v/LXP61Z/CI4cwKKy5t3HuIpR0XIrrOj82RCs8B8bX2SU65ve0w3z1Qt19VK4cDY/3m6PQS6t1PYFNtc6Fe2OXODQ5CM5ymbIRb6HwJpn2VMcg8XWxEGy6CLIPprYoBZeSa48+0ajEZwuEjhcMKUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754275794; c=relaxed/simple;
	bh=Ux1PcfCP7Ig+dZPCdQCCUcVfjVZPllxevvaFL0aAl7I=;
	h=To:Subject:From:Message-Id:Date; b=JuSVxRyi63Qn2ic4vO+MAB/rpbJg7HDU/SR2Wm+bvRQzTjlciuCOYvMY9NJnICf4ACAaQrxCMuVbYmuS5qkSgEljWb2C/tFz61t1JryPKFgxg5u4YjYKCzfXwrQu2SanWTt9+CFpYUePHTsl4K9CR5RjgTGSjCzAM9pSAxPog9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtkqxFkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtkqxFkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85EAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754275793;
	bh=Ux1PcfCP7Ig+dZPCdQCCUcVfjVZPllxevvaFL0aAl7I=;
	h=To:Subject:From:Date:From;
	b=QtkqxFkR3bDBwZjM3CfrRc1pw/2Y242TdT8Qo7JbjLgqSWlqocYPDiYRc8aFy+GCX
	 8su1a3W+5Yyg6An6+OWONIyfInFMaA1vtBuN0YwGEb0d4xabLTNsAX5x3NSnGHmDVE
	 W7n9hzdQSrcxUBtxN4i4Sv7A9bdvJ1DZiKhvcsmCMB4iw7BSf38JeCbxsuKMhjsS5Y
	 vPN/tJJGxo9SWWWSqa3a1S36Igd9GgrdvREinV06OM43bYYaIFXXhFXBH3nXzL9qs9
	 j+Q5oAvyZHwkrXXLji5UvTjDgoqJMuuZ5ORPTeZgYrRlwbTkeaKjfFnAdBg3ie1v16
	 VLpGyc+sJ/65g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D4FC87FCA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427579358.4223.17036806316300501817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87f74fefde84cf20f9527d15a7b407b8f7126b3b9b9ec6b9e0b4e4ddc6336a51
Date: Mon, 04 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754275793
