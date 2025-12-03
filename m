Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376B4281504
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764738774; cv=none; b=UM5492WE72LZUmkW0iQfaYWOohaJ2DeT0NMYP79rDfUaoWOcvzLZmBQVrRB/mPbqthuiaU5Knk68yfcZC78LNOHfwJ80mP3eslfmDnIF0ld5BMdq85BPLc80gIZAYfFOBQ41DnXNDrxLNrOV+UBeAHlDh43ZcDAQgGH8tl4HZGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764738774; c=relaxed/simple;
	bh=4ivtm414hMwUBCIIUgQOoM0FgCLFJzWSWqEvHlaux8g=;
	h=To:Subject:From:Message-Id:Date; b=LVjIWtrhcyCT7ZqDCwBaStDHdXbhQH59ynBzJOiOtGkta355+I3xf/y/Wu64EaauhWWDQIe8fO23fPQCXHCg/pUSVHumCguZjfllrUR+oNjKYgihiIQ7zTmrt3FuBPCPFaZaeDpLYYUgYR+5JiPo88IiwrdmkTvSFT+ZhaIgyU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOqWcS4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOqWcS4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECE3C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764738773;
	bh=4ivtm414hMwUBCIIUgQOoM0FgCLFJzWSWqEvHlaux8g=;
	h=To:Subject:From:Date:From;
	b=mOqWcS4xoKRXn591YP5Mm8i0QlnhuYBvZqXkn0Nj6ehe8mLHU9wOYdNpDpC+4zDLo
	 xy/e19iN4JsFRoPDuyfc60SFSmH3yrPWSAsEBYVwQmLh2BnrR+QHa6z74/32a0+Zo+
	 WqC1QKXHuKyxtMg0sKi0NAViWOZh5CyQx36h2SERpTBhzKmLyc2np0Ksd3xsPZ5NxP
	 QREmE8xx0BAtvIflXakYeE8YtaTUn/8YBkEiP5MKWuwIo/0avnE6f9zthnei+1Qghy
	 UJGDrBNNFe8rwJDFcRpjytGDpglQDHOgRkXu2c3ceKJ1o4fSvuAdtrknMJA0tfcMNh
	 7PapZ0xmHncyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99138D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473877359.26005.11515955093854691265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d1fb93d261e00375af195a94dd535a697d35e6ba145fa1755be290f72e6c40
Date: Wed, 03 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764738773
