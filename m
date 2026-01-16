Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A2E25B2FA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768524834; cv=none; b=pYI9Uwwx6ncSo8BwvS1lUXgbSYEK1kZCt5cGMuevXvnPiSBBhbRcvq7RdGvTBSUfF6xQrDAXEeSoWvAUAvk9x4Z2quKYnuV8NMnyE/juB1wFnMpDdzftriq3KP/92yAK4QtRwP6HX/RAjUwoIcF0EwKVHeC9+Tm+022z2lmXGAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768524834; c=relaxed/simple;
	bh=vwQxeTxk2Z9bvoan5Sn5/F47UmScR75I/J4IE3ZyfMU=;
	h=To:Subject:From:Message-Id:Date; b=XB97i1JY2e8dtR5rN1I0uwKEepzcVx0pHmmsw4nW9o7mPKeOIW9LYf6yxDuvz5enVCgiobyS5Yn3pr26tddf25CI1/WOmbpJtaE3EVsGdoPwUxiNypkukiFPY7CKQFEZAb7Ea4E0BYT8lRPtXO1heHvUN01lxpTqVy6MbrD2UrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jll3xIIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jll3xIIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D734C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768524833;
	bh=vwQxeTxk2Z9bvoan5Sn5/F47UmScR75I/J4IE3ZyfMU=;
	h=To:Subject:From:Date:From;
	b=Jll3xIIr8xMUNodOpNkWFngUkFRTs4dCmAgIn/lgHihOSstdncUIjTEe2wlI92qQQ
	 EouNSrJOHlbkbeb8Uo9eyxR/0++7TVyObvQUkj0aTagO89wXZzyJpi76VJeiBO51F6
	 YPs0GUprfkNetiYlwoDOZHkE7KJRX0qqqiQzo7A4LTRIdeyR/t0Besg6foxnntNC5D
	 6qq8VIxsRQHN23ODI0Ah1Ffy4ryjYJb/1pa0+VV+0O30lUHzlZyLjHrPbZ4l+HWZ/E
	 WPPngt+/a0IOGzULJ/aUxmg/fdR2Vm+6Gttl9yrvNe8GjVHX/wLEX1cR9z5g2R7hRd
	 nSAXxVkyM6JiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F467D47CA3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852483357.3786.12842428108964076937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e3b72beb3d950744beeea85c01efdd59a8ea23f4004a0913b229c469027cdb
Date: Fri, 16 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768524833
