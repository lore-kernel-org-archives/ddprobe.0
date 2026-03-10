Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075A43ED127
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773130494; cv=none; b=gvjKejpBDrFvnz7JXqCicSBUhfoi0qUrHUevwqh5+P8cksZHsdvZFApXc77bFPo0wg80Hr4LD2b+AhkTxXKzaG9dmsxFfDd9H9345Z099+8+tNK6a/wsgw+OV/xD2cMDwSTQXBPK5jloafyiNwzfO14BHkWQWpN+ncrUGqiRwYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773130494; c=relaxed/simple;
	bh=BDczypUTgw0w5+42VP73D7CjZsLxzl5o0/87v7xBmdU=;
	h=To:Subject:From:Message-Id:Date; b=VoiCc4ArCIdiHmLu/QtWDNAdHzUDYeLlbzWS+hd8cpyZAnBRjFYCF1TblN96yJsOiOi9qcAajUurouXP3UtVsMtEsLzvbcLa9S3VEO+WVSs7VVSo8paS+kv6Uvd4v4n6k5G4PklDeRsMj61kKDbDIEOByQunAWc7F7aX3RP3hdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESCrK3i9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESCrK3i9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E33C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773130493;
	bh=BDczypUTgw0w5+42VP73D7CjZsLxzl5o0/87v7xBmdU=;
	h=To:Subject:From:Date:From;
	b=ESCrK3i9rDtSuJQYBU2V3RZykeRZkskcIl7RErlKYWaN9Ob5scvNL2BC0E1wUfWyp
	 YF54m4m9c212FDOH+WJteMbKFhdm9d3nrITHzylv6Edig99VWa3IIGMdsVzXBGouso
	 l64zuyKcF0eO5qy7HFuAuVy2bGaTaODm3VCBVq3FS66n79OkgmxoJ3X6e6+CWT5RGd
	 6Y1oQV0zC2QbAFj4YL6eDHyJUJIa85fOYGbUwrnYFxvir0kn2wkDgdU16hLbA7b3c3
	 vQEYt/VbTSSeYIuzWshha0wa9iKyHgj0k0cgFTT+XHl56DpKtX0wG0rYqTcUUjGArW
	 ReKl5wquki8jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9406AFCC9DB
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313049359.9274.14558721124551769680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f910c24cb1327d133d233e79487539fc067acdbdd9b523dd9236e803fd52099
Date: Tue, 10 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773130493
