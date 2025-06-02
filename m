Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411EF13BC35
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748885994; cv=none; b=Cr2cK865NqsYYH9LKrFUYixKijDDJUoPqLg/5ESxoB3qHr2hCScg6sLIrpIhraUtjeE/V4tdgUXMhVqHUgbRVHeVmai0B99ndpPFIV9gXjP+qG+pMaEnRcTyooVL7eCEB+qXq6c9nFUuUD+pCj5fl8wj9QyyPAXOhjnmyV4NvqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748885994; c=relaxed/simple;
	bh=0RJAvo2bwTt06KwHz9Ku+7k82ZuYczvhcIKRbTvfYRI=;
	h=To:Subject:From:Message-Id:Date; b=NrmALVBHm6RkxH1bjWHyxkBP5krTGqkYvn2oHFT3aShAjfd2yG72VbisiLV1b2t5MLL2Ab9Zm10CiO7u9L7qfSg2xjgtq4s2PAQmyUaunyfTIIlIrfPa5ZJzDQuiIoO1ju/7Vnr8uVqMbzo2zJ1yWHOwtM+N4bgjysCueXO7R3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHMcDeCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHMcDeCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA831C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748885993;
	bh=0RJAvo2bwTt06KwHz9Ku+7k82ZuYczvhcIKRbTvfYRI=;
	h=To:Subject:From:Date:From;
	b=MHMcDeCQ2+xi+jxRcwNdojIL4CUmow/te95hQP0uh4mSp4qe2lkc7Jai34FjkvA38
	 2fjqgtXHJvQ1eF50vl6pGaAziI5U8PawEnlhdttF6rgX/qvipPXu64hAjDnc8TWrS0
	 Z/D4+Lor4iRduMBl5GfhX3gMEYBBGejV6SKQX/m4O6Cyy2c2gndhvM++EXFD0lWJCj
	 7P/ksLdTgJbH9i6eOqQaBpLIuK/60ZhbFkkbAsdRo6HBdivkrSBH1i9BF/TOdJHEP/
	 8BKJn2Pl6C/EpZTC2oawUq3wFZrVxIGs8Y4viRv27kg4vcAiajZn4nWI1FYcY+hXuB
	 1LYVeFxI1SNPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E97C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888599357.28546.14575219700641807421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a018dc87cc84d0e21a66c224fbe75c893c001d14027b59d666373b3c8bc372ba
Date: Mon, 02 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748885993
