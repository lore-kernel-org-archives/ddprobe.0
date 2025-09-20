Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC661F2B88
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758388194; cv=none; b=qNLKFofLSp5DJ8/zGrH3Uxt+2uv64xVLiJob5mRDWMZJ0KVTfpCGTTcSzW64U3HUt+SLAS+TpsfghzXHLzsaKWm9Jsh8UFP24q43gERUWCLz2FWNR7TdCTKyBfaiVPOiXJxoglDEsGn3ZI9Nb0U2RK7EtQ3VN6K4SURamva8Ddc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758388194; c=relaxed/simple;
	bh=heIXPh0mbSv33NrTDU2OltIFlt8yqUZ5MIizACAurDY=;
	h=To:Subject:From:Message-Id:Date; b=Ndx/YRW5iqglRRf3NgdLBtHO103B/ngPB17v/4uHMUAVLNpidE0+qbIg/5FmScnwIJRfjcL234c3xhGcdh/l+yP1iJ1gTc9AJcXqrAMmAgrDAEmhSul4Wpz2M0UZs2QInzpXSQ0ET3PhvkkZWyO99Avmb7YSlCM0ZW1+IRX5lbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deZxubCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deZxubCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A068BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758388193;
	bh=heIXPh0mbSv33NrTDU2OltIFlt8yqUZ5MIizACAurDY=;
	h=To:Subject:From:Date:From;
	b=deZxubCNOjVU0rAksDaelWFsZ8mn4fWsGJUtKLpVh+j+symHIx0I4BlOLchFNSuYs
	 FZ5pkzxvpimW9JB/kh7xehyJQeSMJ+mgg9ZWSf722jWNqjyGDljB7l97pLGOoR/cE2
	 2egjQcJUzYzmlbhxLgJvEwGEThiNLRArE1go7phLJTuwmfCxdvf0MlvJqrDnM6f5TY
	 MIEQ5vCTwbWiy4l/jkQ5mOE7bdeghVnTi8PMRDufxHR2b+zzFqssMcL/ywXMYsGYi1
	 KNBA+8iwmCoq+72bN5Eoh0XTflkdTXiOAfAyCC2JaMfINTzQLY0tEbFQSdF/lrYePV
	 /HteRgRAfypAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DECAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838819357.12815.6199566231183261290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e50422eebbabfffe0308f1bdf24b6f52ca94244e8af3cde32d88b6a79e4899
Date: Sat, 20 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758388193
