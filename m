Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDAE4F7972
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788456034; cv=none; b=ONnkw7189KNMmmVyjJ7UbxzUBnTlsJlrJTn/HnBaklAlmLDW9T0r4Y17IXH8t8qu3HOm0TatgOwROZUmd14TVna8UPRQ+mPGdMIJbtgSU5/U44t5iFa4FSY1RxSm627wewRODs4gwjbCeP1O0FB7y/OIePHAcTniY0ukg8n5xvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788456034; c=relaxed/simple;
	bh=SLoRS4ODLAnlIqQ/hqYGfFiddjSrIeBm9gZUgG5ASz0=;
	h=To:Subject:From:Message-Id:Date; b=qjgYEQ+nz2r0pCRCswEkWYJP6d9fv7NCW+gB+666pLrmb10qdvnkmxQG+mov5ZlPXhRDsetmsOGrr9jI/P/bWiYDc+Zl7DPjnE8iTHh4cGiHsLD51St1TRp93JhG5i4hwGS4ZMtgpC2J61+KIqR/xC/xpOPjIniCCVGfy4hHdRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGkhQQl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGkhQQl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D717CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788456033;
	bh=SLoRS4ODLAnlIqQ/hqYGfFiddjSrIeBm9gZUgG5ASz0=;
	h=To:Subject:From:Date:From;
	b=mGkhQQl6vNxBlOSmYBdkEzQ+MaJixKlfH490rEFOyLkrXvwMff1MKdwJv1sskyxXm
	 ZOtwO2s/itHLRriOybqa9RyH/VOSgvJPZstVSCKRneMe2Txb2u6NTHvlcatTkd/D1u
	 wr99WItctJZjfF0cXc8LxcBdTOJJj3fgpxGHlSEiX3gWm8TMMtVEY3UyoKi5Uip5V/
	 uVC/nmWgWb0QMWwAFbwRzSSEYt8YIJXKAsfG/2z4vJZHoPvNrOROVdmSbx2F9lqTAw
	 uPkpf35Rabkbma0Dk0zxYSNpjO1gXlRhj96hod2O0bHXHgT+vXm7sRdNQ15ECzaJLM
	 bOVpRVhv6a35Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A5AC624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845603372.8056.3155004794714375085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bbe1ad14e95270c88979af3e065bfb1835134dd4371970a05213970ddf2dd6
Date: Thu, 03 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788456033
