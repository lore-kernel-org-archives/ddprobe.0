Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40987280337
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745969994; cv=none; b=cc+owCQy8t5upodrbnqqdPMDCiboZeLa6af1FkBLwLuXfmrV4Kv+s+8WHb8x5tgowscLcEdlUyAgc/HphLe41gTuFTfnv+hPeuQzJylED+YNTE6Jl15eFN6my3GEdz+LwxV3aDkZq2q/FCcopa5YUylu0bNUUKyE469ipV8RU7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745969994; c=relaxed/simple;
	bh=/pQ+pV21U4dYdMcu0Gvv+Ubo019Jke+SMKXMShQjoTI=;
	h=To:Subject:From:Message-Id:Date; b=VhJ7Yz2VLA4h6mEHO8j7eJuEz77g6Pk/ig7GPqEVaWcnNm58qAxMfPpXfPZOJfNjm+gR0r+r0CseDAHnIbJTX6amJN2Qc8RQ+yws0/oYQSOLoTnZSaPpZw7+mBi30r/BylI3sQTRo8VCPa7aaC/cDjNWdPQ+r52xACrqlzEOZ5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YebRNnHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YebRNnHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47F1C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745969993;
	bh=/pQ+pV21U4dYdMcu0Gvv+Ubo019Jke+SMKXMShQjoTI=;
	h=To:Subject:From:Date:From;
	b=YebRNnHTKlYZJDzajM/wf9K6ETUeTfBkWYZhf+6JVXGoctl2BgnSHtHtddFhsZchf
	 bIfk5Q5K5spa/mUYDnKf3UQgpMwn48f/hCfJVd1bHgqOJBE7UVp9vdlFF0lWJT5/k4
	 HHvClow40puojkdtDtEQpAwt7CR7r3Lpb8FC2vtDZPcy4Je+Qo8mck77/1rtU3xVLi
	 Jt6xbcIz1t6y1cCiDBXa6UcCb+keuqQmY69HNCa5+FrOW3bfNdtqtIYPUuQECm+/NZ
	 ums+SMZhst5srzdRtDP+pO++rm22TizZDXBTarI0/NmfZng6n0ikExWEsauuEDaBbw
	 AcuKsQ6lqVCeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917EFC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596999357.11710.12497903814978406283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8bb5e7353d8655480bd1e2f320608fbc5c1923eda0be02809cae05b0ef1121
Date: Tue, 29 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745969993
