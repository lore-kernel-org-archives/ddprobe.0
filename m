Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E411DA22
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716884663; cv=none; b=TUSgYBVs8sW5oqBHimipo3JzR1VvNeRrI82S6kMqMhBWBPWKXPgN8/AJl7IlEcI/utVQD3B/li9slTGdWd1ohoWqnv1mPZB663QgGmrPgOYrdoYLc76Nt8UVuBUZRsPDh/vsmjsP8HbHfjhqPSb78II4bc/TuzmlDOkKD7pgpek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716884663; c=relaxed/simple;
	bh=RDQmEjrmZ+rThuosxt2uhbDIkXUVoUNzxcW9IdHz9XI=;
	h=To:Subject:From:Message-Id:Date; b=Dn2nd4i+hAVU+LLZAkAnB8U7f+wIg0TD7tpcif6WcpjDZT1J/RPPPIO72JXP5S7rxEkEWVZZxpYIEKl9w7u+945XGbgqZThfmuEQRrxaErZ+Al+nQpSHSx8aemIT64owi+Gugz8/a9YhhPm/4dWLR9q2i8sZFadDkO0TW30irj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAWs6SzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAWs6SzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4370C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716884662;
	bh=RDQmEjrmZ+rThuosxt2uhbDIkXUVoUNzxcW9IdHz9XI=;
	h=To:Subject:From:Date:From;
	b=AAWs6SzKEMBQ12kvxvtP2uiIpJtsG49nttMcvVwR2+ZUAtm3PmW3pD3g+aU58rxaF
	 FE9smLepQcQymvmKBUu1V2N91jitYGZKkaMvBPuhJBrpU2dhQkvY9Qigp1n1U1aVDX
	 l8ZYLPCIGCMZDzS3rG6d5H5Ktz53mcejMtyhfDtUAhX/XjwkdDY9PwFpWd8REFhjpf
	 S5dplcKp5+IIZ4Hx5e3FFAXeaBxXT8xJULHK77SQ2Mob3LRavaNG2e671N2ufj+SvV
	 mWYmyeTRVJmLHXBIXnZA9TUMMWMuGBRYCMPCFDwAULPKWUzH/6rbwlLVJ5KJkc021R
	 FX+iuxbbfmamw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAB1C25B79
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688466277.7478.3913265903218171936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbcb0ba6572bf8fe42a5e4529f2d0c1aebeee10e7dc485aa5f1462d28d824ed
Date: Tue, 28 May 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716884662
