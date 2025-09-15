Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345E2296BDA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757970594; cv=none; b=El9jwG8kK04zM2GbmZvTW/6xbZ9LS7qIfEEHf7kKHpjjdyD9oGvlNtzpddxO041ZkEPvflO+nKuBjuldkfYe6P80VFaAL8cAc3eOcYT7WQ7opP1DMrOFnjXgsCzyqL3Lv5spX2EW2mXGtjt363Gq58mEYjytxEIgahGI4lrhyn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757970594; c=relaxed/simple;
	bh=zOVdgcB0UEgz3Hfn7Hg/OylugdLW5W++OL2s/MXnIUY=;
	h=To:Subject:From:Message-Id:Date; b=Eofd+b+Qyvy12GM/2XYcMra/4RfortPnv2pT1j/e/d/qhJ5iMayTlwkelkmiEuaPcqGSoxWnK6fGFhtUePPhn8qfvPMIuZ1uRUZGYs7iKHFhAHqXkjH6J7wZwaGLYoi5E918jGotDKvNaIbHEsN4Aw0PULI5przCIMeCvG40qjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbDunAmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbDunAmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A28C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757970593;
	bh=zOVdgcB0UEgz3Hfn7Hg/OylugdLW5W++OL2s/MXnIUY=;
	h=To:Subject:From:Date:From;
	b=dbDunAmtSkPw5pzfmO5230CCLpOka28NyUpE7P00/UCNXDnhh/oONkPmYjppnAU7y
	 zJkUFbmwubrsGQMI94BDjV4XOljxsQZ4ei51Qf/XUBWb6cdR7mmNTrV3FUWq9sPDEW
	 De+C10LUmM58FNz8CRGSvlYrqogVOpFxnXCm7e82mlVyR301rGiEDZb9cOIcgUpMfM
	 qtK0EGyjHsqVmNBUm2zU+xjUcHzaY2vW13GhGkNaiV8E/hOdhwHE1bZref2Oy28Bt1
	 0/uqBEgOh7bIKAfpJq3Gi66QqP1kwsD4YJMIIxp3gB70HyGmhMBj7oR2ICtEFMxFxT
	 N9Oltse9qymaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B1CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797059357.23148.1725990456847628133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e9b5343a39255d56728ae372cd6b419a108ddbbf3ee171c57bd7f65d8252ac
Date: Mon, 15 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757970593
