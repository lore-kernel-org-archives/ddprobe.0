Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1868131D375
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774292094; cv=none; b=RrwlRZ3s+GrBDhPE5o526+qjiLccYfswLlQFV6DqLdZ/UJUF3+hrD/A7aHoKK14WMg5+eo6YZpSCwvIuqVerI7K0TB7BuYWxzBYTKfRI3S3zWoztUdy/fZqtktklwzNymDNH+IlTgsK+nYkOX2Qo5wx3Eyq//uJk6QD56rOc78I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774292094; c=relaxed/simple;
	bh=crgqNoUoL5Enbw1k7TQA660m223tCj2ruqGeq5zeB5M=;
	h=To:Subject:From:Message-Id:Date; b=uPdOY+me/QZwFphYNp9SFY9xqxgQX72CyhXL9EKwMljHGpCzEE5S8Jul0afNu41nRq46sXrz/IsRgUus5Hs5X/7jd7pfpnrgKrLY37/y59e3gzuP+AXSueyo5VUf1LYiQ5Gn6wqf5eWDUgC56P6lV0WLf7h95ZqtmcjalvE7w0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM3Tjy5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM3Tjy5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7707C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774292093;
	bh=crgqNoUoL5Enbw1k7TQA660m223tCj2ruqGeq5zeB5M=;
	h=To:Subject:From:Date:From;
	b=iM3Tjy5qtovsagcpw9S6XM+DiWdXEmmt40yX69ixer/yW5czE50Wpzs4ALiBtYngz
	 KkAKfQI4BvPgMJ82dFcPX6YshAnF4CoRpgGKAdz1+yn6I25uBlzfgtR3fJaUxt7+A6
	 sSvOHqlZWPM4fXYCjes6gTF880egz8eGkOBayO3vGxO09uA1/wLTkrMLVEYCt+F85p
	 m+lLW+GfGs9FKbkBus+fRcsB/zwPkj8N4RgXUMmLsnp8AqIirrnqlbKtmsHLyrpwGD
	 cJ8gTx0vx9Jj5mo6HrDN5nRhQB0X4RSY6pwE+XphlofDLvWocxiHfQpnfa5Wh8/oRC
	 H7Hn8Dbqm98Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94647F483E5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429209359.5209.712455918886997067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2269b66d3c470aab96ed0afce1ca38453fd9cf4ad096dd532ef9127bdf2fd0ce
Date: Mon, 23 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774292093
