Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACE051C44
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710181097; cv=none; b=BoEDSakp2+oV44Q+RmPZkTN5XXu36a2qtyQGsGf/VDVDyyhwdvQUa1l+cGXscIY3x0BtelPqPU5WZewvA8Z4tLnKIExQcWU7jwDYZ/nA8Aelxr9UqOHNo3cp5Vp+NPKV9rKXQVZ9tAC63X/mJF7dMuzLaLgVqfggK/Q8qxRnW7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710181097; c=relaxed/simple;
	bh=uIXoCRU9bPXpJgv+5w2h0EA/QS3eP180tVEUADnAbfo=;
	h=To:Subject:From:Message-Id:Date; b=tnGL5nCPSNI0+gFjcavCRTbcTRILVJWHYAL8u/tS7iZddgdkbLVAgx8+Q40hVd9fAFs9xXRC6ofpWP+lLdwKXKDrvRZIeYtimqu9mmIMQaEJNqqT2fEruGqAzFQpRb+Ud8H9atJPDd/6aC/WYZy+b9fM4kLqk0UGdfnutVlUxGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhuWG2Xm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhuWG2Xm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73775C433F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710181096;
	bh=uIXoCRU9bPXpJgv+5w2h0EA/QS3eP180tVEUADnAbfo=;
	h=To:Subject:From:Date:From;
	b=KhuWG2XmmYU2WW9gE26j3XctsxqRiN2+oTlBQAiNHyJcmt/e8OFUr8h8qgasmtYei
	 xo6MOH7O5yjYeRitB3ELYp7muVTszdbksLJYWDNqpUL2ksGGQniANTofw5lBxPuRfr
	 LnrWTri1lb1yAOWLtqyFxpLFAm05HXTcuF08Rlf7I3GzXQEQ4oYE+xp6o8HQg0ijdC
	 vz46MBEwQttMwfllMKsXHBLRTlN67U1Mx05gq9JVGluUo3Des4OmREdiurTsk+jU2l
	 cJm7/GkaUC3B4r+g8bH46BogV5vzMmMkbj7/nmunv3sCMe4rduJvDwv5qr725nUV6R
	 i7ibNB/PTS46Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF55C5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171018109637.31257.11622966938355205249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f94f5e40d41c58c960d2480b1bf428c080e513f761664ebe493d760933dfb1c
Date: Mon, 11 Mar 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710181096
