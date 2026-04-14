Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2182E358379
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776206854; cv=none; b=BgO9c0z1656MrFMJ4WFt0VAQFj6yS4gIZYJ3XxK6sS17W1W+wjx/CALSdaB3lBrnnqxUg+A0A6OUcCwSD6Vv/ccQEyPWvk5xfdmz/o5j4EPbs4JXPlaEixVmMyrO0cd82kioBMBwJYKMokKDhMDpLMEkBWQnPWNqW6eqKQJiupg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776206854; c=relaxed/simple;
	bh=TH0JdImk5aAfa85yMT7EvPfaGakT4eSp0/e66fggJtk=;
	h=To:Subject:From:Message-Id:Date; b=QvKFyG7cGEzyspMJkT477Jal17Pe7JiSWjYMDhz2dKJqm0tlxhqZz31+lHQMAko41/a1fyVTHqsPWOYcurmDJrdP4gqLqNu54ouESHPtzwidHlvkxfySt8X4liYY4O+G9ybZ0xZqLGj19MY5OLQklQN9M+IN1Qh7glLu9KJMV30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SruX8ofX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SruX8ofX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE28AC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776206853;
	bh=TH0JdImk5aAfa85yMT7EvPfaGakT4eSp0/e66fggJtk=;
	h=To:Subject:From:Date:From;
	b=SruX8ofXgxpK2oNl7iuHua3U8XG4QzrdZE/B88KEGQnou7zc1qGY4r9lkrFOYRnCM
	 tbBYu89zCZty7K5ak7y1V171IewsxtpeBxK19wLWu9mdE5ozfMycUIUB0hRYzXAxGt
	 LMe7wykAv/aAx0N1au/XyTaIgOxzJEchi/9u0dn16izYCNNPVgmqTrGwdSbDVhxfW9
	 TNXSXiIeU8XGckn4oatXEBfVu2aSeS1xn4f5oqdB30opRSlpUrfofQK6kWe1cZFMMI
	 5VBGylwvXOPkB+NOGQQt6KGJ9zdWDjK00uuPp3OdBNExecp9riF1prymGPcXTpxtzt
	 mK5hF3zANFMAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC722F9D0F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620685368.12116.3863946125918887185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26544dafa25d84db11f4f101349852b72dcd5f05152426b68b45a2978f80a9cc
Date: Tue, 14 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776206853
