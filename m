Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EF818BC3D
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764667375; cv=none; b=kdwGUBV5fhfDduUfh+fLM4cDGFRTHjc0dfCIH/67UAFYwVEm8uXjKFSQHSNeiYgzCF7A9hHrUXMCA8yVFDzVzo7h6EtGtD6nzkZ/qZITGMCHEXe5ZisyxSsAC1QIFpLG7NH2IU7/0BKyUeuZd4z22L1oYcNovUVoNRkwRgTYtQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764667375; c=relaxed/simple;
	bh=gSWAT8B0uyOLgDhXvQQtETH9ZoNULdNrBy6vWFUBF0k=;
	h=To:Subject:From:Message-Id:Date; b=rcYH8ZjjxdZZ2wa0zigoONY99XDRxxLOfsdRzVaBkkGHEkSGocMToG1gr20jmJfi+BiXX1Iu5ErOBjLWQaaufKVH6CCRcTYuazXXfFZZrdyasW0ldJkpQvliQvHcCvm/q7Ss+F+5iTQyBctzKZERmX00usv66MQzKaCRG8Hg/XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c70aSy94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c70aSy94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82EBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764667373;
	bh=gSWAT8B0uyOLgDhXvQQtETH9ZoNULdNrBy6vWFUBF0k=;
	h=To:Subject:From:Date:From;
	b=c70aSy94oWaas35IzLleg+oSiqWAMEDmT8QmoEfkE7sQF4NWvcxv4trJHsxriNLqT
	 VnK+wH02GcGB3T23EV9fBJKZ6QvNh7UbrkJi03eiaxCqEpYMjVV9p4s2y+MdOKE6uT
	 WLSoEW3nR5TB6sWbSZxJSm16itlbwjvyeSJyiAGBSccvzfixlMvfHErl/KG+Msw1R5
	 63JfbatN4MxipHznA93kCb+ueiGzkHwJpUy1Dz4ugshNaBljrdU1Te6WM2bDw5ZD9w
	 M++lYh8LjSUs8n6xbVpkMHyAuUu4kJ+55Zl/2hK0ZWqMSL4BF1Xufc4npbXlirk3Ar
	 xxr2EqygPkKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92672CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466737359.12357.12824321749596742347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d53591f6415ad896280e09a2ee27d580226ac6ef1acc5bc010a068b8af5ea54
Date: Tue, 02 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764667373
