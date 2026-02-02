Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300D21D5ABA
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770030834; cv=none; b=DMv5A3GemNBkg++RrVR89H6vnO7y9DZ9LVyRkl1VJUi+Y+K/vrV1XsOXGjVzgEnaIXY/xS9l62cGWV1B+++wkQm6pRKo3ZP+FY2zufWx7G/AIcYLeQeOFYQ0+JnJFX7QD9Sp8npQmypHGMDvHE/kuWK76QasQHfyqK4m3LmQajc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770030834; c=relaxed/simple;
	bh=ki4U4nU6weW4NitTEAYPPG9NLMeEq1plKa1jxo+xr1A=;
	h=To:Subject:From:Message-Id:Date; b=f5gSaRWFXAAjq4kKJ4zwICztokMoEZVUHZld43kEcZCcFJPK/oH3RVd7f+ejdK4gLdSZn2vko8cDEVF6h2jYuDUV5cJUgNM/bL+gLVyi34D0O93z53Qd2DlU8JK8DxwzhKzTfvQILTl/l5mXlCULEfc/9LDg0FIWv6sJo8fCWXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSrV8j71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSrV8j71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB89C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770030833;
	bh=ki4U4nU6weW4NitTEAYPPG9NLMeEq1plKa1jxo+xr1A=;
	h=To:Subject:From:Date:From;
	b=FSrV8j71MTrtsSfaAxceuaa4jgERtq8LhqmmgIW0swyfYEIvyXwFol0cM60V5NX6F
	 ZjQHqEKnUeKI9tdQBAmpJjV5s2VkYsKx8ch2HbX0GggzTFUXR7WxQ2hRBPrrqhVi2c
	 76m5jqNQMRlhRwD2EzDmQQAG6peNMW/L6SV7R2tPsWvslo5Ko+/AEAzR1ZMhP6Z6r3
	 uWKqxmYzMtboMagWuDvqBGEtM2rnS84wdNpESEjZskJTnmKUFtacOakvOEtvRNwTA4
	 i79lYO5e2J+K7nvriaE1xVNAoHs1Gh/mok2SJnlGPvoVq8CKljFrZjYhOmk+Va7kuj
	 KtVUDUZ55jU/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8FDE73158
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003083362.31789.5008855195981219318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4eb66125d180f0f37fd7ebd3a452d79a70c6f4589ed6ade4b0636bdafc9fdc3
Date: Mon, 02 Feb 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770030833
