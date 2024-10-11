Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA271C2DB7
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728673554; cv=none; b=CQsd1tEewpEhoPYZeprutLZIS/2ecMU1CdbS4vlU+VM4PEEB0cJ2XEEJ/D7jv4C/SIaPvniHcWc30lCImq4Wv95xtwTf11DWqzuASwL2P8sKFD0R7BTjyaebdEQbPDNNm+XJPA7kr2v4kCx/7gu8Te8BF60qtJusb+pabeivT5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728673554; c=relaxed/simple;
	bh=bpzG9FestDAbC14M4/8NKtBMczCZq56TOWILTCp9URk=;
	h=To:Subject:From:Message-Id:Date; b=HrMi6zHCM9P75M+sJPimNFxwjmzeF254rTADYT+F6Ag2uPK77H1958imq5J3lx5CyReaPBCO3IRnZ0Dv15a2dnINY9dkZfeDFlfPeInreKqpO3nn6Eh27QE9XXyFZD+gl3Sx11Nt13RPiis4y9q6pjV/nNQejESYtXsJ4pUYgZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJtmeL/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJtmeL/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9460C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728673553;
	bh=bpzG9FestDAbC14M4/8NKtBMczCZq56TOWILTCp9URk=;
	h=To:Subject:From:Date:From;
	b=gJtmeL/kzx+Uud7CVceJ3Ih7cU3QDoy8SDNT0Lplbms++OhvEazIFbni5us4YI1eW
	 kE/lX3AwxUe0D5feAxLfQ2UAasVo++O9D4qRbNHOxB+6Z2KRtpDY2hMRzEJTClBU57
	 jJa+qQYQcwAiBlgdQN0sq91QZbsH+QypaB/LgCxORx9E2v7aiN4MPVcLga51KD/kLF
	 yomJsdoYd8rVzQCZ20vzXMlsDjygwUBNf4Wrz4fb17BNiJFHxA9hfVmIZx3c3s938y
	 ztnzuVmQnsbcik6QVip/mwngoLyQvDFdREOlIROCWRA1ckXI44WWD2Ejm3G7jiH3So
	 hnTv4rSZi469w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C63D0EE20
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172867355361.2152.17887952382790315392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d56ab7419c1e9333d5480fabb623670d2e60f499982d957087c802389cf739
Date: Fri, 11 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728673553
