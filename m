Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404FE314A8D
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780739074; cv=none; b=OEucPueTcYovkdxbSbVsJH/2VHnAh6crcNTbg6oqcYK2Mp07pX+5g+rDDZSDN+Wdqgm7dAJMS30umecFO4y9oc2a0C9uhN5E2qcRCcMJdr/URTsaWCn2P/NU2rfQsQqQC5WIrUaLeIKEbnqD9a2Bz6qYh8Lj54ZQrUwhgSBDhqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780739074; c=relaxed/simple;
	bh=+rYANk9+qAMPbRmpg8xwCCrPBYUkHo9/hIFa3vXowI8=;
	h=To:Subject:From:Message-Id:Date; b=e3odsaq00Ny+7vfzSxtV0SrTYKAABL+wcTCM8iZ0HG4ZMuWhTHIZQJNRHjxlOBTC0U1VG7GQ/uY5wCMaC1UkNJIieI89M+zreMI8gWueO9Knh/7RG3mGkYZcdnHsWzx3omXQ3AX7htVYcn97tuu4r3C5TkQofczAM49/4li7kVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/h7mqNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/h7mqNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5812C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780739073;
	bh=+rYANk9+qAMPbRmpg8xwCCrPBYUkHo9/hIFa3vXowI8=;
	h=To:Subject:From:Date:From;
	b=E/h7mqNAILJp/mFCM8auuBjTr37UoFDkV58X6QKFGqbAmMlvn1WEd4cfL2d7fooG5
	 VsPhz0Nq1ftmXkylawdCTMMCMRg2KbYBmTcUqTjWy8/0jftBCv6vV8NUVjON85RweD
	 yTA4oSXg0jDpTeMvdteDZOSYcmi6fmA6wCrhdHvdIBjmgm5jyOc6B9uWIuA0Uhyr43
	 0XhFT67bYDFdXMMjeO7DCQjG9JXi8I5zEQdi7CCsoIoiEebU8qu3wjJnxzPeetpIZ3
	 YrXk3RxfABKHMra0KOzVYpAJUkYRoIOz22xJul/M8BoDVlXYDBmI9UvQKyrJxIoC4k
	 r45CRAYns02Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4EDCD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073907369.20723.12119133264876914667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd96e7aa9d2b3a2f50c0a56f40c2af79db9bf8d0685ff663572c6f10a57de8c
Date: Sat, 06 Jun 2026 09:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780739073
