Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212ED13B7A3
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746523195; cv=none; b=DtlEs5vOeMsr9Rs9oBkOWO0behrjnUv9x9/ZWUxvdvPtIV8EBTZjaM68/vLViOTpeZrmtocsXTE+bsWkLLmfypoVhsmK4zeJox/P6IisfvLuGAF5D2ICDPMsfD2ldDlwkTMyROUrEGnZGM2RmrfnExX0kQsaVkstfk8z3PnaaqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746523195; c=relaxed/simple;
	bh=FwipS1N9NfaoqzmcsS9jK4Si9Mj0zm7WOwde1Wzo778=;
	h=To:Subject:From:Message-Id:Date; b=ZcbpIfZGGgV1A5+fpjBo9u1g8ZI83BJdETINm7KAwq+K8ag+HXO0T/l266OlCEIOY0zhJ5FjtHom3SMrKmhvizsj8t0z/IzAKR4fR7kj3QaIqUETogCYJpfibjOt2GrPHbCCTDWeZ5Bomxs0qqwTAQsb/TH5I6mdRCVr34QR610=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRnEv4Sf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRnEv4Sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF0CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746523193;
	bh=FwipS1N9NfaoqzmcsS9jK4Si9Mj0zm7WOwde1Wzo778=;
	h=To:Subject:From:Date:From;
	b=WRnEv4SfvPa7BVhauJx8k/s1nA3uR16rZJDx8SWkLysJ72Fk6x5tPjQBxW5u+emUD
	 hXBG47aJp7eCH9+vSOAZoCkkxeOMhh8KINNHP51TWMOy5zOjtTd2OMenhiENCsGygm
	 +jY0khaqyQa9WTxF/m2qvgWK6pnCqcamqfOs39mGjFX35aezHsLFSNFWeGB9JM/18h
	 cmOUcJXtnCfOZndrOqpD9fhQS3MxOxuxRuntuhJ7mtbErSwHuRwPQYXNwovgNkdQDb
	 pDWQUS1sPSlyt3wbqUIKMai+1fhYozd5BecUkweA14bWmvAHDU10YUKChGyqPqqHwt
	 xid9dq1hiuoQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91339C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652319357.11064.4394611461706532270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e5d951f827955ca4b8ef10c5b9c303fb205e3fde91e7238fa5fa844e1543cf
Date: Tue, 06 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746523193
