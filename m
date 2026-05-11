Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115ED370D69
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778499034; cv=none; b=llZr/KIklKX6G5u69qnXC0Q42besnDAtZRy14nWQV1ocORrkAjTSfIN4yYqUzpO/76INMPLdSNSPbEWe7YoU/s2MW/jk+HgWSeL/xTX7rh7j3InQtLxuoPutTVgWqQYxA/5rLn7QVG6mDA2pFT6sPCcoZvB/eJFnEdhlSP2Jscw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778499034; c=relaxed/simple;
	bh=wCd7Cy4/iBakAG2y/J4SRWyW07LZN4X9cnI/KsSS8DU=;
	h=To:Subject:From:Message-Id:Date; b=u/4NF9PzRBUeysfLmusDVfT0/fug6SyXMQmMtNDA8qN9DgRd8+X053RAa/XPyE9F9KSNCJk2Dkt0ZSIVNCylaaJIxWFXgyx5YD3DIhCMga2byDqL5BwYLIlHe89XmVzhHHKLb5raF0Vk88qLeegQ/WZi1wTNglO70IlSQhEod/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9xGsAP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9xGsAP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80A2C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778499033;
	bh=wCd7Cy4/iBakAG2y/J4SRWyW07LZN4X9cnI/KsSS8DU=;
	h=To:Subject:From:Date:From;
	b=l9xGsAP63DENDJhWWS9f9nQfgYvYhYPpGIa8dhFazmoHAr7LGsaef2YPlSAwtzI5q
	 oA2GxWnPaCPq56Q58QvGh7ERAp13Zhf/v6sp+n8VmLFC6xKvZb/6ivDxen7uwEdX6r
	 LGFK00zbinABT2WLHkoNLUFX7zMHi8kJxRyl8TpzGe20gQxOc/3Ta+cAHjDgfnNBj4
	 KFMUP1NNfFhjCYO+2LTU9060+sk1vrnSDtboN9M/uYMhw0zatG30iEF3JcNcCzH10g
	 pMSyS/t+DJt3bzA6q9oyFweZ4+LWHna5bdv7xsp58XrkbDmhwef8Qb0L1TK7x4zKYV
	 SJkD/FDrhENRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C35CD37B9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849903368.12273.4898108015259973125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735598889eec19a7423c7ea0cc3155d4a2d39856e7c3f377438a247ccb921450
Date: Mon, 11 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778499033
