Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018A212836F
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707934097; cv=none; b=TvtrVkupdKVRQo2E1zwYA5gdDJE6c8wBfOwQsvcVQBFYx15CkFaixXangsycUxOkBGhh/b7IjDnwrDr6aHbvpUfC/btlD/z6l/Dpa990EmAEI44NBVRQIfoSvjttwZ+kaDrE68HAOymyg9R7Z/pe0HjWQxjs4PfsM5cVqIHioQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707934097; c=relaxed/simple;
	bh=/MO4qnPJUQH3lSvonRXN4+Cc5Wa99ZmNjzXsQ3p0tXc=;
	h=To:Subject:From:Message-Id:Date; b=ZH9FNfhOD99UfDdYKbNtRcgqGLskVBfB0nGqcA+6oCKMBKSOUplHkilScY4KCahsNtLi/soEvp7kxBStdkG963ZqsrAbF74SkDVNtLSpMRDSuxc2sEZzlRBFDAaBgnjWIoTuA63H9//yyMest3ex8yZSsExDE/4lrXhkpnFZLI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foa5KqZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foa5KqZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768DFC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707934096;
	bh=/MO4qnPJUQH3lSvonRXN4+Cc5Wa99ZmNjzXsQ3p0tXc=;
	h=To:Subject:From:Date:From;
	b=foa5KqZqJTDsGqrEnqJPiN9R8xL/vvZp+Tpk5pzz6F9xZTA5ZNGpvMqRDaTe0ivlu
	 2hDLqxFjnerelpBj2OrvvjRGP6Ik2ahAnlLUyl0S6UU50Z6CmqVvu6k86RxZlWdvTj
	 CusWeoogInAOpKkRC1xlQUOpW9lnUERVxf27N7jyrSetM6LZ122ZZXQqA1mGf+Oo34
	 gwDKwrn0ACprv3NjX7j73I+CzYtvdcy7W2cEWeOvvHld3N6UoDTxrfqVSiPVr2OamH
	 XbmeX/V5sWsp3oK39a51PEVXnrki9MSPrCYm9io671KiHwVDalPquN2nmt0T7WMM/4
	 FFFHhlTf5XNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6002BC48BC1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170793409638.18080.11905739454071124939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2ea4d49f60cc4cbc3cb0312397cc5083059aa1d94ae336de88e9b03ba57663
Date: Wed, 14 Feb 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707934096
