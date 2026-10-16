Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5827248DB22
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792174834; cv=none; b=Tj/i9yKTUUNzN5D/YKdr8iG+L4kgdXNfDFQi5Nz3xV6hmmV86KMolkby3uWtPppWoWcVWDbUGktVpepzclt9mDnOcdhrd4i+yGUqmgQKHY8UQqa8WbQl4Hy48WAueRbQktzlEFdqQfuI6fUlRBnkF5UCwlZAdQXRzYLOnudU638=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792174834; c=relaxed/simple;
	bh=dr5CMqzH7d8JP6ML/V2mq2qQqSQr2SYIXEXnE9vWmO4=;
	h=To:Subject:From:Message-Id:Date; b=BNKJx04kk+WDPaZJol+D9FnBY9F5OtNVp/gVtBYaCxrwpU007WO0gwjNM6Jc/nZUgbrmbvHjgag7Z34nHMWyBIQi6Zz6e0stN//uWB5A037vih9Jx0Hq43im0r0em3hHpU70hreYd9TwZ60+KNQmQiV2Radzn+CF7p16d0RvUoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdgyxLu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdgyxLu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27ABC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792174833;
	bh=dr5CMqzH7d8JP6ML/V2mq2qQqSQr2SYIXEXnE9vWmO4=;
	h=To:Subject:From:Date:From;
	b=MdgyxLu13KYBhKWn28uHlTpuX2In5rLfVpp0etvsvIxdqg4vL5eQW0OI4eEnc5W/u
	 tJ7FoE5GufZItGthqP1zvrjezrDe6jsetuh6RnKLmOufBynhO0jyGEcNC2G947oTDH
	 +bPMam7/sbykMg/vHcVoB7Bn2ZewrtpgCCeR8an+yMnkrbL5o70e68XiGABbWg0Xvw
	 xoKyG8SVbzX1ZC49mGrQICwGfAfRu7XJckrvYkCiCXaLulG9HpxvjcO1lIVMqxfD46
	 eMUn3ZH8tPJw0Uu3GuQbIQZwOt+LagdvaKZstb+6j7akMjipqwrGh6uAyWuT8EnMDa
	 IMJasK8IGHUbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4D8CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217483370.32280.6403996143040728113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79750b642dd24cb26866c9e058e2886176b16037cce162a05a85e41b9f3053f
Date: Fri, 16 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792174833
