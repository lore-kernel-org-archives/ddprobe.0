Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CE7212FB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761966594; cv=none; b=PJ9SU1UNsNPMXoR8A8Y8TIaMoWYWEDscW0bQL2xIaeCAU87upTL1u2w3HJnkpCSclj2pIk9gSv1Rh5J8CK6hhMl+Gkgt5F70LDSP7QOIGNU7uV5RKGEUKNTyjM7ah47MbOMsnVERZS08wNcLl0BqIlgK6LVUm5jR3xHwkTfJ6C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761966594; c=relaxed/simple;
	bh=QYdEQDQCAsnjofPaLXHxYNsbG8tVzujoUXImFPEGapg=;
	h=To:Subject:From:Message-Id:Date; b=pwQTqsTxoo+Z1KDkmiUCP88tM9c++gbhbDZ7Cw3LF9Uz/BiAHyNt4xt/7Fw9rLkiV7LUShI/87faYUfkLcmtrZR3n2H/so1FEoNjWa7Wbm7/hayc5ad5/oltXpDQSBQhgK/MDBfd+DrFLWq1TXBLIVV5VIA63SoeqrjV3Ah98vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eedPsqXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eedPsqXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98F3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761966593;
	bh=QYdEQDQCAsnjofPaLXHxYNsbG8tVzujoUXImFPEGapg=;
	h=To:Subject:From:Date:From;
	b=eedPsqXtt5hxFzhlcfG2kCCjkAmGp+/yPviZq0DAmO/66MWuxRAm8ZA/L27axv8ZO
	 FQ+uVg4SYkKLWUl2OucV05GxQiNui1GKdpKmg06qauIOYnwW04Vg5f1MwAmunrAGzv
	 sEdEUr+QtzKH8osqBrk9fBx0XeE66q8DykvHpNu9IlD7zcXcTUut3/ZpEZaE1vQUvo
	 y/ubSzIfLmCrlSVj7DpSd3pgQZAKFntc8Nm0jcDUdKyPVTpkNeUFjkBWvVB4WRTL+4
	 XCG/m3ScCxzxRGo6nntLnWUUejjdDYrM8YVrx0C2An4+BJIvOe476luRNFR5V6H9Yq
	 4ho7vAD57Ci1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA93CCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196659360.16294.13057483326396309476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cf27601ee44025dea6535f4dbbaaff5e996a0fdb49f8b70c102f7bbfd7ac1c
Date: Sat, 01 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761966593
