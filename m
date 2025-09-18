Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D4E283FD7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758188994; cv=none; b=PDWTOzpJdK2qq4oGgsLeuhrm9FlYSpi0UKi2R5hZD7bM27Vzvsuk47EX+mVNxPgVlqt3sq4jmflGZTQrmqeNTh2ArlNUQxP9xemYJX6tqyyBjCpFmUEBeqw/q9R2TY8dUyzlRPbwa9QaLJpHMY2HWGRMRHchTMVRC634c/ce3PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758188994; c=relaxed/simple;
	bh=F9G4uCOU+zvjIMC7DiFRv5nxCcgC3a6FwrOYqt0+TJk=;
	h=To:Subject:From:Message-Id:Date; b=uUMpCZEid8x5JyMQugtJ/pMW45wfWcKtpNNkk60wbv+n2gk/evMJUYm6rtGxFUNmNQFGb2fRUJtElhCp9n2wHRkZnPvkR85cu7sLJhSnlGsNHde7Rp/RypmimnU4A6VbcDxSI0VypYFraKDYAwuusrPdyGZAdZHKAl4Lwbv6Mz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0E4c+23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0E4c+23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A7EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758188993;
	bh=F9G4uCOU+zvjIMC7DiFRv5nxCcgC3a6FwrOYqt0+TJk=;
	h=To:Subject:From:Date:From;
	b=a0E4c+23k2vcHPHr28tYaqr6QwoPhGkV69dZspBlOUfDzJ5OQ0Rbkr8v5VruiJqLb
	 E+J8h3v+YY2578Y0BjWk3QiXVip4B/1oLm1EVbyUrEqybVwIV8JgaZBpg+MiYGoB9R
	 o53WER2iDv4MGLaqgLycicwN4FilBMq4ItKch65IciDHZr0lHy+9bawla7gWnA6yTo
	 IfBmzjbbkGi10/W2crCYoAjEbX4UxLZgCN3Y4dtFYFY9Q0MrpnogLCe3tzGJRgc4rI
	 3/weU9IpjkVrXUR0ELL6d1LHZWeB/IzjyiNb/KMWpoXUslFnc1Ov4ko7SdVafX8ZZC
	 xZDiqULHUjXVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256FCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818899359.26681.6690508705874845477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61c5feef2ed34d9eff4d8488954a1959dbe15eab3dbb6edb746ff30052e431c
Date: Thu, 18 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758188993
