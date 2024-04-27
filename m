Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B8A44C7A
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714215743; cv=none; b=PVglZGqkM8qMDzILK23rSbimQawmSPPAwCDRIGr8ocq0E/BAy3jbGs0KntMvwcTeqMAy2imfmFSWo7iM3ftggJUFh0EuqwIQV+kvxtc66V6A9HuGQZJyaaOH8smkFIwI1LkSqGzgA13LTGhapOogBy2qler7uDV0Ot1xSliDlGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714215743; c=relaxed/simple;
	bh=xv0CCYDFWqbhkzriFiHHMiuUEIPAruFYe6h0wKjOweE=;
	h=To:Subject:From:Message-Id:Date; b=B6X+k5V8/1+SJZwnSjIfR0+5/2GgNDqRy7YtuMKMTu1lmT163TYN0l7SbxlFiQoUQ9Mp+F2CXKDTZOn1Pz1BhftO28KNYXGiQ8nlAnWOuefTS/uA3wVJQiySvfPTjNTkNK2eFaKKelGEibo+B1ic5e45iGoU5Q4Eg3F0ckE5DlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxnXFfVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxnXFfVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D870AC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714215742;
	bh=xv0CCYDFWqbhkzriFiHHMiuUEIPAruFYe6h0wKjOweE=;
	h=To:Subject:From:Date:From;
	b=jxnXFfVB801nGWvdDtmw0BI/uU7uZZ+t+2nqml4C8/MJejD1NwEv+xZobm5S2cCB0
	 w4fCmrM3X6mbu8tuLFYv/ZflaR7xZq77+KtXB8C6YuYUkQCnrdJaG2loiIADfTYEYY
	 rKg/xtimezLN/cHODq7+EWwTTnWfKDasiU/ItRCMRiL31gO67zHKCegCRbuMI5ntYn
	 iOdVu1tel0o7TZDf/BTw6EtSX3oRjvuCqYRqel5EpTBzbdn/XssMYEjB+WMDBi3knl
	 AiktqEr7sd9LSFLA8WfkL6QUFVrMyt7QKlsk5oUKF+CTuoGSlumPTVfUfxCuG614Rl
	 y8nmilmskXJPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C490FC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171421574277.3036.3084968817090815214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b5c73ca94b1189a791ae1f9d1db272d57ce6b819d740245f3607fb82454575
Date: Sat, 27 Apr 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714215742
