Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EAD2FF15B
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760503196; cv=none; b=MaE5AanZ8XnHU+lMVmtSYqoKtc6dseMJsyAHizF7NFEkmZ1hVgnpP8i1EWFGWALW9Epn8w9PDlDdumFrO0MAa7cCvtb2Zt4sLomPQ/8+qEKBD722bxHlpie1GeNCcRW1OUKvjlVK8hIY9h2aUY7wkFF9qFlSMm2y+Xit7FGRP/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760503196; c=relaxed/simple;
	bh=tS8+Atck1CvPoU8BD6Jg0VD6Z0vAv+n+Geb+jODwX5U=;
	h=To:Subject:From:Message-Id:Date; b=nTUTZDrlhxcmMJibBnl3KtsN6sAmXTnXEOaMjBzOuPJhr4kh8CAOp7x3/It9Z78vjtNXSZWwOJa6UBaXu6tAMLOJFPAZP6ewdtvwhErSwdmc5A7nt122P8FtFHQ57tFcK7XgvvC7i+RlbQwIH+3x1vlwQHYeuBSqk60BBWHa5RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJ9GaDau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJ9GaDau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7548C113D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760503195;
	bh=tS8+Atck1CvPoU8BD6Jg0VD6Z0vAv+n+Geb+jODwX5U=;
	h=To:Subject:From:Date:From;
	b=OJ9GaDauC6UZ/80eIJMS6Gi6mQj/Br8xYubg6xEXfKbelWVNiVqorLsBcIrgu63Mh
	 OQssJ8gQdj6rrmY6lYGtgcKDdw+lfOpLoJBm+dIOBUiPEKPpoLA4ES2tHwGnc3AQzU
	 tEijBKgtB/2qmaM0GYpGpeYaMxIztYJy3ewHrdOH2+Ol9mLqI2TTdis5GAmFtfFmSp
	 xzIGsLN0wYzL/0iRopuecxY/5BM9RfvECQPOTCzP6CypbwBdcJPAjFVNKWKkWQAlGi
	 v8zjkE1WMokKJXbXr4YeltLySRc8Q6Ml3+T4ByV0L7LG72upMJxV2pwqkJweWmOiow
	 zNfcCYeBjeE9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE77CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050319358.6451.8527534991167483189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebe2999a1e783cacf61bdd231302dedcb874a0a001622014523a22a61cfc9c7
Date: Wed, 15 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760503193
