Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED89F28E9
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762645194; cv=none; b=jAHsWp6AOHjufRu1wH8pSg6Nawh0eaqwjfEdKuW+QXbxkmuF5kQ47jeeYZ9R1Cc6/yTFbCurHgkjH9lzc6PaLWhVG8o2Ub2EXmMzUraEyqZLtepT8xQSzWuXg/Whq3UUI+36mjrfjJpD6gAQTghhPpMf2k5/Kfv1b7/+pkhFm/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762645194; c=relaxed/simple;
	bh=G06So2We0F9VHn7wXkdV7+lHh9fP54pjDS2iVn2F6jw=;
	h=To:Subject:From:Message-Id:Date; b=hZp4wTogfid72g/qjKX3ugegR2l+4NS7nOb5Eh129FS2QwoL7XXQnVAEl8uyTZxCRJbR9Rkw06xetQsutv6m/DD3usXZ7hyqxe6PJXCgjH5PdG8QzY01zUQfgyDzLmfqUqj5ovioOQvPifejSRXfyX6GhRXMkHQLjJhjb03CtKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHEsUjjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHEsUjjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA2CC116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762645193;
	bh=G06So2We0F9VHn7wXkdV7+lHh9fP54pjDS2iVn2F6jw=;
	h=To:Subject:From:Date:From;
	b=RHEsUjjwFoh+38A0rpGT4hLSBTcvb6D5ADSHp6Wh7c9OZSWpBXqFtiLP1+xulVY/0
	 UBOll0xV2RSMxSCwzAPqyQKbcCDSELJGEE4Oo7ym/XCE/pJx4oMVbBk2cX9sNOkIe2
	 30+8aHAYfm43wDrxe5nzbBo4RgkT7VUkX5M9q/CUxXKluMaO4W8UbLnkyIayfworgy
	 TojPIzMoRWNrxnApSQ5b7AuuJUTHZsVDHxqTAmJM3gIJJ0M011BDkAaa748t7qW1lW
	 qYlRxg0ryj6eyBOMICoPR0tPPrsilDMQyyu5YTepFUm2OZxA76A8F4ogMFhuXK5TvU
	 AuJ21eb57q7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBFDCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264519360.5954.3045526157478360443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ceab85d728510ce2bd2870f1b029a7473c24d2554c0fb953cb9004adf857fee
Date: Sat, 08 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762645193
