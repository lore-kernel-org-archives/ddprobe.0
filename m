Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D57E3451D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791568834; cv=none; b=mMaIXPe2l1vorAS0JH0T6vwvPhXUsiHfvlY8cLe5fCycOY7RALnNGJDymC6RQ6o4K8FDiiWHXrlhfBCh/+0I4EyCrUdoFG2QCrBLcidYV6cvf7c5dpBQaUPl2ojqS/hLN+XoaG1OzlABlBgT8KCmoM6vvf+mKJ4ra3nXkEWdXDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791568834; c=relaxed/simple;
	bh=XoVxPUstxHeS7OtQa5enUFtDRLWfZP4Y6kxeYpYytCw=;
	h=To:Subject:From:Message-Id:Date; b=N/A9B7e6z2jzXgx1kmeGCQ0ibCWDqWdvRQD/fmYQDYNO1nJKDLpV/07naBEHjzvabVlEeMfSAc/2AQ44Q37TsWOGze5ylQdc/8oosEs47kwcOqHPiuaaC96PHbRfgHKDUE3QgFBkkQmGEnNtVch+4iyZyQ4hlhYfxLPDqSKw0Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SN/3jQ0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN/3jQ0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3000C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791568833;
	bh=XoVxPUstxHeS7OtQa5enUFtDRLWfZP4Y6kxeYpYytCw=;
	h=To:Subject:From:Date:From;
	b=SN/3jQ0SEAQMvGovETKsU69PYUtypLKvV1Mr3v3bHD+EkQ1wPEOqqAqIo/C+IWsT3
	 EuWyqu9+gVhBXEWKIsd+ppkGR0WscLs3TSAjKG9ubhufX3pjvMh9wvpJMIXXo5NOof
	 ATMAitwJjNYjvvVa8zeeqkJqc+99ECqjASpuGlsSiq2V8Gr0vqRUk2e5Ooi4c6WxJO
	 nlaK4s6RNihSg65AZQ6s8lDln1cX63iYUXci7bSeJor9avUA74BE9YJbcwzbMof4p0
	 mC87j06CIcrTCDvsw/dy4X0BK8Nuk66EX6Ysn7+AC530x3ssIiSKuoi66rVPvOZZRe
	 KwdTfOCSsyA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB025CA601F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156883369.29841.3396445986610162977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac9137d94e40ad39b21a2fa68ae89c5fd6f5cfb0816d36ca756750bd9dd651f
Date: Fri, 09 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791568833
