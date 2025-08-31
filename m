Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAD338DF9
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756625994; cv=none; b=Y0kWBHfUxoUaurrVmBmKjadb5Ggk39b5uQntz0HkpzgXSozygEonfZ3ZjDwvrsDJd8EA54kv6I2gc8dcCm+HCoeMAW0U4DowZGP4T8uJ/hjfmi0VEWToUJgiDCmqZJr/M0/h30rn758/t36M4nbm5kC6rGsnX7jlzZ+3WCaVamM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756625994; c=relaxed/simple;
	bh=0OUBYhWRVmA4V7TY1LL8ULDqVzITXWAw5G2TGHk/cHA=;
	h=To:Subject:From:Message-Id:Date; b=srMkqB4BICcQ4iu7rhVdX4r/7jNly82Qhn9L5eTyBgrX8458n+A+/B8O8A8R2samPzV4zrau2RONr32dHtafZI+96Ja+Rf5+2pkhfN18ZaH8vsJzLdlOkvEkyibKWYh14V49T3+DExuIBilNNnjZh7h8gvhf/482/tKCmtuqCow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kmb0rprT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kmb0rprT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A308DC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756625993;
	bh=0OUBYhWRVmA4V7TY1LL8ULDqVzITXWAw5G2TGHk/cHA=;
	h=To:Subject:From:Date:From;
	b=Kmb0rprTdjE0DPO4+kNRyVksp5QNoIW4QzJLkXAb/L6tTuLGNpXQNs/WAsE6BMiih
	 2zQ2qrNKcXw2nO8HufZ1uejW2CAT/ml2oaIlEMUXmkFbyhCd2Xu/z9ahxBpSi0kyWZ
	 gmfUY49/JXsVKHFkktIktT3BNNPtabckIf5TVCVXqcDX1peR4/1cSeCasTyZ6r46zV
	 HBPoDBkTNEB0uWnZXt2k6dWl72dntrg0+cFqQJb3nC32J3N3o9HTwAq7eFzetzN3MB
	 tQQXO57+A0YxW0B05vnEpn3XxtvAjDPR6k+NaBLEIPWnSAxhkM2IspFd3NIgjsddC4
	 nwQlL/t/NGnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9117DCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662599357.11317.15294289375247734152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4318fb72ff48425cc90c21e74e1686c874adbe580836e6693fa0551ffc58c1d
Date: Sun, 31 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756625993
