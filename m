Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344331DDC06
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728389154; cv=none; b=hSDRYxrllzkpZ57e93v+gNPvf2KvfPV8Av3QOWseMah9AK8gmw6L8VrD1snKrn24Rah+O2TOY3UX9YqKVthXPgAGO84zpLhWCbhPjICRQwB6ykJmaB/o3S5W36fOqgUKUczXtW56QtM82KpbWPHgpx21U9fE59N6jEGKDebr0M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728389154; c=relaxed/simple;
	bh=GVfACSboPb3JCgLpvKDCCvc0rUszReqFa083ZPETpDk=;
	h=To:Subject:From:Message-Id:Date; b=P++YIZ0eXHYuBYavJBav1w/TeNo7d4aU7MtPnnnqaH0ylqGcKR80j3PmgtaFPJ3YPN6uMfAzqcdxtKbMLim5ScG2VD8AtJvoxzcM+nEPSa/Xq+oLXV61/tvv+9lm59jWijGK1HAUsUaYEc4UvAiuI/4W2VxAWGT+zwMHz/cesXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h28bF2Qq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h28bF2Qq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE576C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728389153;
	bh=GVfACSboPb3JCgLpvKDCCvc0rUszReqFa083ZPETpDk=;
	h=To:Subject:From:Date:From;
	b=h28bF2Qqr4IAcSzNfegLKsHxGsKG6pcHmFjhrj6ZfC4vSj58DR332w6437YaQrMzm
	 HTXMTZ5f6jqhuw42EXf8tVtJdHQUhvc9t89C+eTTnu/1iGagdnoEpz5/PYiklT3sfn
	 1bRTE9KNuLtNRt2X14EsUqa46HdEsKYXQR7KUV3Z+8LkuNU2pMWYLB9x1GAmla5Ig8
	 1fzoR9gF0zSXA47dAEwh+rIeh6Tz9vKsAl3YFxBIfueX4rs50zrAiJyqRo+1/HcAqS
	 XpKeM3lxv7h/Mw/R6L3H/FEXcsP9H7/G2aMs5Gb0Ex2yLhSmegEf7010xnCMRKPvF5
	 7G1B990ResYKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0F7CEF15B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838915362.739.7445898061464401405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c8ac1a9b9b3821176899019d3a3d6fee3506cf3477bc575dff8105d9d8f28f
Date: Tue, 08 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728389153
