Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA5F4A00
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759790994; cv=none; b=hJ4g6sld60XCMPqz/NAK90ASjq3vBSpN1H6v1Np8dT1sYKbAbz+GIHzTdu3QEOzGEDBP3qDkHmzgajEyksu3jOZZBZUaoV7NYuZzh2G5cQaeFkCg53qOusQjGVlxH5oWmegjxnczvo3bgcZNfvgQ5b3OUpA+GMxJS3kweq3/+Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759790994; c=relaxed/simple;
	bh=HzcTP0xl+JtTDUOhTc8j/YOft6E/0c03Fi/dIR/8TW4=;
	h=To:Subject:From:Message-Id:Date; b=ZtUrlpX4Wu9PcooRiiUpKX87ExBqmeI++naJiqi83aQiXVXNKDYbZp4KL1IK6pr6gkvfyrvfAlxYBvyij/soODzZcWRbcMgdl5VrRi7VLHH02aNhtRxulLwwJ/ojPUbAXVsnM/W3xE11PtWRqrr/cgK0iUst9Fur2/HMhuB+GfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMooQy4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMooQy4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9563C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759790993;
	bh=HzcTP0xl+JtTDUOhTc8j/YOft6E/0c03Fi/dIR/8TW4=;
	h=To:Subject:From:Date:From;
	b=EMooQy4hZuo42oIsVwYy0BtTN49heDVyp5g+vtmm7TF4uTTGHA6rUgU8vr96TxU0W
	 RzuCv1M1Be/6oJh2cp4qdRzF61Iqon8G/CRyBKtJhPGZagV2T1RChD+wtu5eTZI+Ck
	 CSWrN2KYYgIYjeZRE4Pb8EbKxWQzm8HyXYwsuMSCmAeUaQTtybGYPD2qikOXg94NCE
	 2dGc5Ntqi74RAzNkDX7BC3rbnkJ3OjzqxQmSYOsHeJgQa7TluGG9pTmWlxvOQLZcmT
	 C4RbP+HBGIteZmGs0Kfm+fye2mhMyLrMnBj3sySl57szOs5oPgk8cg49W55faqd5Mn
	 TnRnaKXCl6SjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A81CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979099357.16602.1780148452900715863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3edf8dad6094ff87c317dfe65abad033d3dfbfc51b4133f5b6b1c04338c455
Date: Mon, 06 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759790993
