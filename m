Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2DB217716
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753622994; cv=none; b=kssGfKGX+y3xxgMm6UPotFAsgNKereYxFyx/lgSTMZPqO6WvY+9Ir5pfoAsFOKzBrxysMUxWlYsLW3O0xdJuxiggyvwEv71FjAB2dysUTkiiuejXNqseAOzYoqskh5bne2uDHkQCeIr2ydGD8judKXiucWy1a3rmo30X7MhbLds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753622994; c=relaxed/simple;
	bh=b0mQW9Wfgc1UoXXouSYvu/O/6G0UYMCo6F5iupYSHH8=;
	h=To:Subject:From:Message-Id:Date; b=lB7trxxmOFW0qvLGSXK7c7ysa3hpgGyh2HPENznELRHV680H6ETMi7Ftd4jX3dZShMimyPT66zl09KoGCWlIuP931S/zYRVLF58wV619f8n959OUAfeRN7e7Cb5UyLmt9bzxPLqtrKLty5DftYtyo+/ryOSqRJ9FXlhScfboxjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWmaYBUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWmaYBUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99FEC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753622993;
	bh=b0mQW9Wfgc1UoXXouSYvu/O/6G0UYMCo6F5iupYSHH8=;
	h=To:Subject:From:Date:From;
	b=QWmaYBUOSh7+CP7I10e6+0odF1Vv6SJ0uSJJkbrfjeH5dJXZg2cNHExRzpcPSSpIX
	 0WdvBj0xh2O34xjnw1lIWDRP4dJY+rxc5TjdzI4/NG0ho5WWe198mDDvPvoUxKs2AM
	 4Txs3mu1wo8N7UMueIczhMkDlunGRxoaTzzG6Yziunzg+mkUpZ74J7rwKwDu0gsw2+
	 HVM26AFk274objbfm/C04crpXIFYAQ6X4/Niq/NP3fpUXB7rmm4Hb2v/em52trITxT
	 6kREZZa+pSNXV9S8seEke3gbwMdGAJgDqhDbi57cBpV2nWQl9mAnodPC5pnn+TvYkZ
	 26ow404IsKcmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974B3C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362299357.23673.6147939901311071386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09054e2b537f97ef6aff0aeecf881f886781c1d4dcd3ff4a4b3dc80af14a355b
Date: Sun, 27 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753622993
