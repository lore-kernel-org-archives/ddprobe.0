Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052A7200C2
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768716234; cv=none; b=Nivlt69Ydp7YmjegIydBcS4O+U4LR9ZjSTUz8UUY3XQ4Sa7IZDwIWqOTemjQZ07eBY7b5OHGWhp40kq7wYQGbgJnun1z+X3u9dWsSLvm3kbvBdTHHazKkmRcx6/X5ObdeaxZz7xHQKaNlWlpWOcwI4Xp+GlBjH5dD/bIT82DbG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768716234; c=relaxed/simple;
	bh=9GGWAu45GyrIN08AdxRdEaKeCpBxM4C81ZoQZOdH2rc=;
	h=To:Subject:From:Message-Id:Date; b=m1lpcXmQElF0yD6HjIXJMVNyP33mIVnO/pRpFvjdDx18z4A0gzj/tbeD2awCBoOovmJthb9ZxDgPHazzdjRqZHcPMAQx2Arqsz9q5pkn9wDw/jLptCCOTiLQgbyW2WrThDiuhB2jJZsNmDN7UDi+VOaYtRK8mPBpmvi91xUgGTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bc3oxsLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bc3oxsLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB81C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768716233;
	bh=9GGWAu45GyrIN08AdxRdEaKeCpBxM4C81ZoQZOdH2rc=;
	h=To:Subject:From:Date:From;
	b=Bc3oxsLJ4HnxJsxRyXpODksfIJF/TrETeM+r535DWrLWSnk+jARKEmlE3C/ntfNMH
	 btpsigOJkq1mXUMtew2WDmtwNcaKOe/AcsPUw9reqENSGq6G9ievtS4BFB5rX3EB9j
	 BzucvGmBf7Dlpya4MKT0WCFRHsOK6Ch8I2Phy+FTIV/fgjT4t1wQD+MUSE2N7Wjhdl
	 qwW2Lk+b9tp/TlGkWjbQ4Z93eKkOlZbqb1nh3MP0Fs7X2ogNqcWW8ZC6ClphdRdBSN
	 G7BIOhBN+lE9PoIZ7y233Ivh1cydIHspL4eQtyT+U5bcbgSFlefU3/NAXe3fRfKD/X
	 VBsKJe8dpf+7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98435C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871623359.17027.5134892028688383740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c01328d1b0f71c4cc6e48f4e7316e1085a39b26cb34caff45c3958f2a6b637d
Date: Sun, 18 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768716233
