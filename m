Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051822FDC5D
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762764594; cv=none; b=fK3GN+CD6opL+GPCHGZZeh7fWdgVAsxglMBNrk1/nt1yOOMmt0I04j7PMsIyx1xiropsNhA0mloMRp2YT45u9nOBn78wOK6LFFBZItgf81wQD6OUxfDGWKGmDimoXSQMaJ8TTAwyy5Bl9HZsLYEcp5Jpbxr5Ge6OuMp0bs0HE/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762764594; c=relaxed/simple;
	bh=lia2nD1hhF2bd/8smRArH7DxugCBXxepEm20Ag9ac1Y=;
	h=To:Subject:From:Message-Id:Date; b=kFcSsEUyOB2U0nlnOVS53Ep17eAyfq6YFXsAJvho5oJfCsH2wWX4zRNWtkw4YkCVO8OPuvdcMuxN2iKPScgiLNTQ6kUSQ2HF0PqUmRTBdH9wxzxcrP58SprcoE8Y7FKjiPTX78cIRJkj05Z0y/iWBL1ld0CQhTTlyylEHChVemM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+BNgPgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+BNgPgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F52AC19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762764593;
	bh=lia2nD1hhF2bd/8smRArH7DxugCBXxepEm20Ag9ac1Y=;
	h=To:Subject:From:Date:From;
	b=B+BNgPgpolMYS1GviAOybKvYJvPzfuWvHx8CpYRl0R+fE/wop2t2uLWZwh8515Gv2
	 hMSswz5ffcY6ENuLl5uwe3A42ubSVooeOYRoH+6CYyUSAlmG1jr1e9n4cwcdNoPriW
	 jYMzBhmlzZAPMiXy5T5j7NYfoYFXr7CyqvKLS2VMRCZpBlO26/ST/cKSyQOh21+GHA
	 lZuvqVYJvNrEpycLFTJDbGzJUOLlr1KFfnb1E4Hu1cf3nnS/+3PqGwg5a4xFPxZ1fv
	 BDdog+jgF3xaPYk4IS8wNaO9CtfR+OOTlxMllI00aRjT59fH2Tp1+mDJwaIPBqplfd
	 rRjn3F5TQ+wHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A86CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276459358.7150.8349438663675763233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f81ea56d583640e9204906271073d1bf3bcdf3bd2f786cf73d00eeb90b4192f
Date: Mon, 10 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762764593
