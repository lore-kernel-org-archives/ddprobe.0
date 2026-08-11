Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A0C360EF0
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786431034; cv=none; b=T1RuGus01SWZYCbtDAAsUMMEEzlkuK4mwH6dLstqal4ZMMDEYcM4S8LCs9957Z0TBwIiYmD4jYAgDXjGr3+DcHHU70GPsN1LT2XFOC47Mn/I2jR9Qb5qlKndfBL9Mbo5kdqpZREPmZJJh3SnJeebSGTrr2NGD15FmIPVPZYR2nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786431034; c=relaxed/simple;
	bh=2jhNqkA1mDBtZFzpC6h4YD/MntfW3SdQDXrtfUvHr5c=;
	h=To:Subject:From:Message-Id:Date; b=UYKksokgcr9igJL7sN4xMWTsj0zlpPN1lTWdgmiM51CrX2xPj67A0eYARdKLQFyOy63pVFfxPmK7eidqV9VVKWofh3RxI+Sab2VHOmM7AQqGRxmkqq0/JN4ndwnvuoO+Ovz2UuxEs14Qq4YYzMkpG115cQxoC6VuM/R/pjADX4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0I17kBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0I17kBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0805C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786431033;
	bh=2jhNqkA1mDBtZFzpC6h4YD/MntfW3SdQDXrtfUvHr5c=;
	h=To:Subject:From:Date:From;
	b=Y0I17kBzBTHmsJ51HFjN2iOX9DV5rl9z1pKM+N84f4bU8/r4AVT0Zfx6oHwSNQzwt
	 oa8BRS3WQzNkIKsjssU981x1qTpqupcIguO1BPetmYhWLFnQd0VPjIswtdSZ8fXJFS
	 sRSuf60gu5EERYV/TXAFrmDQnvOdkxwLFpEPrIRLUkI9X4FGpQ5N/1xwge2f26vuxK
	 Efwk34YHR1XhCitke/oDCqBZsIi3Z8zj+tvCdnZyTgrYBGJTr2OtTQtVkPQheXrp4Z
	 H7hQfjxo+1Emaf1NK/OOmtfi0yy0ckVpuHt6XUODeSbDBuAydR0EXzMBB3X7CoG+pr
	 zCDSJVnS8zmjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A956EC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643103368.24538.2773918858019208406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49570d90faf13d33b4bacc9620c1dd69d2f3d830fe13dbc6658a9d03f3299012
Date: Tue, 11 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786431033
