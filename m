Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1395718C008
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777598254; cv=none; b=XgGdKufVBTcBvtnfRhAxxK9IIig0FkKTH5sDup6ThXpic61KaP+5crz8oyQY6TrrPYQKsaB9FrKoQBrtljP6tQ6SHsoNsZGD0mBWS8IkF7CK6QC9pY2rtB9L+QCxdM8o9dsMRJEhyA4O+8XGy8fHV7lcIHhDvViXgZjuC77yGX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777598254; c=relaxed/simple;
	bh=detUFCOU3dSVvVlCA8yd95y7bDtPfyOnklsoyTOJIkI=;
	h=To:Subject:From:Message-Id:Date; b=B6h2l4T922JH0xBO2ji35EewsKiHs6OLYaqEIIdePoZrr6CaCCISn7uDskfzUqh3+QzK1ss5C6E2INrHcK6bDrq9LyZQo8FNxHIpMmgRgTWL1Hl4OCfygi9LX8EkbIUEw3sOxACTNU7JgweaPuyrK1vL924YA/daMmJRdtjihi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sas84w86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sas84w86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4D3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777598253;
	bh=detUFCOU3dSVvVlCA8yd95y7bDtPfyOnklsoyTOJIkI=;
	h=To:Subject:From:Date:From;
	b=sas84w86mt/0RCxi0FzhblKc1pAw453WaFf0gYuesVPGICakB1+TS0lJMd9d8M6CU
	 q7uqAGNOwc/3F0/qza5ueFpWlJ8NgL7oeXvJLYdjcAobUmYNJ6HVimOSlLVT403nAe
	 aD1xyZkHO0/vs5hzUOOBrLQ0f6LEFR5YtvvLLHWXTheSPdbuJSJjiqa+ikcUihyhcf
	 5tLdDw7x1b9En/iWaQ9TN6s++5bv+7/BPk7eDJVZFeSc9gO4X1rTR6+mgDhamajv9K
	 YfZ7Uqwt+otXO+n/XchrRFnJM6zcjec3tXjBiFdEgTvQhXRwPjQQ9sIYm/78kFfr8y
	 JhefPoEWzaW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9BCCD13DE
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759825368.3886.2480967534147718382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5108b6740e56f47757916306874fa6e9c98c84efff50963fd1dd42c1af05a046
Date: Fri, 01 May 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777598253
