Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88F5347C6
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778375314; cv=none; b=ApzRALX9wdPDhJqimcCLxBsIdynr8ppM07Yg3mvl8KKtzv+VqjkDocZSsmVTHm2Wn7zAp5YRPhEt9/Ncr4lpLj2pnYJwO4DZg3+BUX+0IxAH9CitMI0eDJl8Kbio2Fleflw2sKqzkVovPioif+OqTx9UfnwLZby4Gj+0mQIhVc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778375314; c=relaxed/simple;
	bh=geVyHFwaSRQbMDhjQGhPuZwf/oao1Xl7tWk5RVKWgNc=;
	h=To:Subject:From:Message-Id:Date; b=XClx1z9JwHbdmdIuZOoeaHu9gI9EKchh0+//CLgrD8jgnT+aA4PCbOZ1r6EOYM6fJ2l7LulvndAo1ac74920UDcfIA22Pg9q+tR5W+djG5gf1IGhDFQWgawfX5wedbg/QrxKYxBMzVKvNT4p44eQ8t59y4nziXJQwnb3onTcBeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWvPZv9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWvPZv9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 40A8DC2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778375314;
	bh=geVyHFwaSRQbMDhjQGhPuZwf/oao1Xl7tWk5RVKWgNc=;
	h=To:Subject:From:Date:From;
	b=bWvPZv9O7PqnOG0j6wusZpCsyhPEVsh+GQ2YMshDwiItII0J6lp6EElxXPX91fxst
	 /VwslK0VAKnA+sYkIEoI1X7qRdlayaXkkCgsSW6Ryvutl7PvVtchToKe3juRPGwUY5
	 NQA1EoPC5M9UtFIfy9NnfcVIQKsTmmxQmn+PKaPUNZ6GccnlrVbDr86RgjhYAZXfLN
	 CAPNacHVwa6F4LHj2pzDXf+qLGAwVJA1GuP67pSV832XHsBIEAA3ikVWlkkPMeoFo9
	 bT9uA/W2A2zmKj5VFEqDeP6r6F+V+DtOs8IttcwHS2mkgwmPQyPrLAMOk3HbT4nuA7
	 07/FX63w2lilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE9F9CD3447
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837531392.7617.2325087963909779710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27ee1e3b76542f8fcf9d31b7eafe21ff01b07676da7cf7a0ffc93af86d01f54
Date: Sun, 10 May 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778375313
