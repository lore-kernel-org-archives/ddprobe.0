Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA311A6815
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774206894; cv=none; b=Zvxlxpmx572pGdXMkwnW0tyZ9xJs12+aUnVhsWb+5zoLIfDdXKcUJ+L+yDLT9brVcLXI9j/+uJPrQzZm/otkhcjtwP0x7w9sV8LyzkJknbSvSKif/yXejJnn1uUWAeAwD9VxVkeLl2TsC551PLoZn1eBURH5e0SPx3MhFM7ye4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774206894; c=relaxed/simple;
	bh=zm5klr4WxBhXWPhuzPbxn/J6KHjxQDI09nCPRoet9oY=;
	h=To:Subject:From:Message-Id:Date; b=jTmP2bHtZppGkZsV1yZjQ47oepFigFmdZqe0iN00drrZqW3twdlUoJijbsyJe72vfKfygAZAx2hSU3UwQLPLYPsj/Pc578vmHonz1+6M6yCQU3NpRwHVY/Pm/T001QYaRZf8l91qStCIlFoSDEjLpmAymnbKh3cE4R3r17rU+ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4gvV2qw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4gvV2qw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FE6C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774206893;
	bh=zm5klr4WxBhXWPhuzPbxn/J6KHjxQDI09nCPRoet9oY=;
	h=To:Subject:From:Date:From;
	b=u4gvV2qwh/GWlIWHkskAs08Zp9OZrfK3wFnISK737P238f9y3DGqmCcCnrUfLU7Ez
	 y0xsDNOWkzWS9y5Nz12LY2jbhDlWy0ihTPkMCx0BUn5gU9w+lhroze5wMcM5s+88o2
	 81sMN/p2upjUDgKieqAjkOSXaj42Cw8s0b9dH7HD5gdi174njfJzrnI/5Dr51Mk5nx
	 rEzYv0ibZZgCB14rYET+Bv0TJvczHcio2QYOyBwGJUsUIlCKBEKAz2RHFs5Lrdz43r
	 0P6/9/bPMIm7g929cge9dWKo3o+C/8hOxkn+gb/eB7S+KTwh8I0CJvuc1+26Yz0HhI
	 GwcPTewymVGTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E4FC72D6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420689358.25984.7449097804927312696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0b4dd3915c81335e35aeb8bde09d7c234b72e744a045f50d1a889ec2aa8857
Date: Sun, 22 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774206893
