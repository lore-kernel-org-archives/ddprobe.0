Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7331C860A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750999194; cv=none; b=sERFQty6hLk1oB53VDIUt/Su3DM1zotqjZ/6awgLavOu8G99ia9U2PKKiuIQF5Ng7xImuh/pfGPor7RAQC5ieaB1FXM0BU0DaBnPSrdyVjuWKBvOd9c+YITkJBSknS4hjutkzHp9H/JrqfuX2oX0jVqQ02GXxbXTrqcGoXN9FSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750999194; c=relaxed/simple;
	bh=W9iilehsd42lynWalwYzu7BIE4Hs5MlusruL0nr7+eQ=;
	h=To:Subject:From:Message-Id:Date; b=cEmy9ZtMhiZqaa1o4NBKwEti4lL5Dio+1Tu2Ydnoy9t2JP+2BuafgvkRi9i8cipxLhPp1LBqDz5LiPZ0skCKUHOyWbOqTDwhHb7bN0tk1hwQcx759Plap7NG6BGuVA7NZhhWTv9Sk3DUsSkO3qD58XJcviVwjSrBztdbc/sU/JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbtXpNZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbtXpNZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80B6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750999193;
	bh=W9iilehsd42lynWalwYzu7BIE4Hs5MlusruL0nr7+eQ=;
	h=To:Subject:From:Date:From;
	b=EbtXpNZX9HfW9pmYlgpLfsScti1+MPGuvCGXhKZtdFP8kAVEm1/im0hLinmcbLZsp
	 K55A5lPpLsB1ZBkiosuZn4kJwcOxT1eTAicpgPb3eGubcnadxXynFGx+MfalaFaZ21
	 XWrhJkVJlpyOob8Nd+BH0PtpH5BaThS+QTMdwNgXXsRlTLpLIH87fhMh3VyrBzpQse
	 d231hHpUgm9erTl6gbpjQ0CQsRrsjEf8CS9ig2boI9odQM9azMiM7Ef0fO9/yU7QmD
	 G5I4f6E6b7AmAINGF4XgUBzZ6FmddE3/dDvfdB0G93TugEoffyo7DgYERTCS7m6+31
	 YL0FJjWA2mHNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A71C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099919358.31908.6882247639007013770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c52cc101d5c7621a4214bb6552d3a0894f51e9e7f337ad4ce1613f25525008
Date: Fri, 27 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750999193
