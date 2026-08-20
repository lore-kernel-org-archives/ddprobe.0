Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAA6282F16
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787269234; cv=none; b=MyPiAsEQStIaAgmE88X60PndbRJc46e//AZtVIvp/yFfNsDl/7wvGhfTHTHYPdtP4QikDM4er5rWUp+ReBY9HODzhAHQ2mARq5sfOcm0pFBag7p7yLgwVLZQpEfUSRXKl2orPL2AbcK+kcxtwD16zygnQkHU8yjfjqitXzfCD5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787269234; c=relaxed/simple;
	bh=RGnWWF6JHfcargKggE2eVSff0f7Wr5iXc/rsD4bhyDU=;
	h=To:Subject:From:Message-Id:Date; b=piirQW5+SEGLH3bC3VdkZGOHG+IpJg7JeqPrm6PcSWu1/SMAb5AHoaESWyb4PF2dY3Hb6McpSX7Ckth7if0FCIwptt7F8sEfHjePZEY+TQvzY98qrVIC1Aj56kW4nKF+0Dze+pFnMatx+sgC+nXpd99/hVQDC4to97qKmTn5rHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blZegfFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blZegfFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC962C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787269234;
	bh=RGnWWF6JHfcargKggE2eVSff0f7Wr5iXc/rsD4bhyDU=;
	h=To:Subject:From:Date:From;
	b=blZegfFRk7O4G93LcvtKWu4PSCXLFnv0NtqQzR5u5WVgL87GeCHFLcKoNH2xefGta
	 mGbkgoPVdcll+5+s55d0GdLc4gGJvFkR2Rq5rexMp27+izueXtCMNJjvCRho3zcOgF
	 SvOQccpPFh5Bgoiq7Bpmjgl796MSqYoJg3cIw88tkrmsztAaTAC60x6JT1eO3N7ekF
	 +5AsbWc3b/t+1s3Ogv3ZK2GR+E98gv01Vm1Qe5b8eCid45Fdh2Q7XbCp8MhPp/rWwd
	 pM3TNtt5VfCwrVg5STKB2zk0Tu7rqTydNdX632BbQtImAnn6D8kYo+7dLrfrbKGYZ0
	 /pi25q0xJXoiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC58C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726923376.18629.16610490823330483495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38046f256bf28390061c3a586ec9824dfd71535fcb9a8cbfe904be28fe60b248
Date: Thu, 20 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787269233
