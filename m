Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1506E3C9ED4
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773422694; cv=none; b=fyzAl32oDtaP6t9QLzl2Fqb9zJQ4S552/NsZnjnBf4l8O4rXvRJ57R1KnU4ZVCe/UIsu/rxgzwiipRhGd14ZsVpRdr/poIBW+8AasBIf/ESFPxHpu7e+st50PeZ3b9vw8BlxHgoFzYsTFFyXxIaGPaeEszOqUhZAXtcXjMZOGwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773422694; c=relaxed/simple;
	bh=Lz0XWzrdRb10LvqTip8JP1EpnllHtx3gNZkGhnxZv78=;
	h=To:Subject:From:Message-Id:Date; b=Zd6yypR3FjOub5qYIhXzDVvVZ7B7ApS2n43s1I2D/mfMvxvsiwTjdrmSXhSrce/nJX9Zn28jXLSkJyAxBcSA+d1RJD9QnehhKV449wtRdNW+lUi2Vmjn18snkAWWiehY4k6vAvomrrGRxqYUpYjWSmqinVeN+K31VPs4OiwFAkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/6nyuiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/6nyuiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D479C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773422693;
	bh=Lz0XWzrdRb10LvqTip8JP1EpnllHtx3gNZkGhnxZv78=;
	h=To:Subject:From:Date:From;
	b=U/6nyuiHitOHEYLFAPWpXcuISAgKKynC0qHno01GRo6FozQ+UsBy1raZgQMcw/zc4
	 +d3Zdvn1W8e8vYIwTyV321WmvY33kWTtvEq81UtKb6+SgYQcK8ljvGxem7pHRiBOpb
	 fGJAedQVRDLDCMoosAAbBjW+c+ALmx2FI6K1L6EoY3AHtJf6vUgMMKyq2Wsk2Zj9dd
	 +CZL6sEmnaVtGighyuF0v1lQ0Z7O0+w0690pJvu2alaEGBbHYJjvFSRnidz2Peays7
	 Xu9iGqxAbxrGygEMMn29chfJ5RH6ULHwzh7GCwp3hnWZGHoc0Jdtt9wLcGzdAmQmm7
	 f376uKVqC+ghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F671107BCD5
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342269357.8803.312431957976923744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab36482a2863036746018510be6036e9e80ed2101b262172afc7c928b5ddb85
Date: Fri, 13 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773422693
