Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435AC21D585
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769313834; cv=none; b=G4mm3t+aUZgz5S97aiAwZQziiTP1wWb0XdVN8ed6mXcroJiKP8wvqlg7SfG6NrApHNv1WsYxyRfwD+lJWVT8hRuXE7Hyj+76XSqThHObE/JQ4E2+hY5wy+pyUYoob3VUK82wXbckEMKlvpYuTaGfEokNQgV0+7SdYyuUzMTM/NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769313834; c=relaxed/simple;
	bh=WsLPY5IDfbPadvLXodLcSnEaXlDtPLAnTfJFKyRkNos=;
	h=To:Subject:From:Message-Id:Date; b=HK6E+i13+fXezDcur0ukn/DwlvIsH9YFmVnP+dj/FIRciX55BqmYWcSIOoDkemPQlTG8VKplj66imMW278yguaXjOq7VIq+W820h4OfwD9s/7hP5IYe00n2Yt2QrpDswRcNc5g62U46kMlqRPBAXX5F+mhh/HKbA04lRs/i6U+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDlmdRp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDlmdRp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26A3C116C6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769313833;
	bh=WsLPY5IDfbPadvLXodLcSnEaXlDtPLAnTfJFKyRkNos=;
	h=To:Subject:From:Date:From;
	b=sDlmdRp4ibIMXQry9RxK2Hx0xamyWcHTXJ/8puVEPLNrGjVunvj/ZtMcNsCE0JT4I
	 +1kOKlJjYD/T4772lHAKuNIvWYz6K5hbTzdAySEq8q/PtbiVMycHX+PoSs1taNTWzB
	 n4PJ91kHS5TqbnEAfXwZRMeoDbsr5ya18sR/ufQfDpAz9uBqW1e7QgJBGNCnPOJzD3
	 8z4yQjUQqxIa/S7ag/lUxjC2t9wc38JAUWBN0KBey7HjLENGSkVzJzU4reINFG8nGF
	 UZS8q6GuLE69ZvHJ/3VqkLighieazNH8/hAiwm2CDV2PH1By+02GeUF/g2yJPQ7fVU
	 XCUyEG4A+lXbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9507CE63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931383359.15015.17553691160797650246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396027dea6ea88f978f919f6b54c07b87b0e0e7199ac17e9b9586dce4b41ec83
Date: Sun, 25 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769313833
