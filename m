Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6397E1C2A3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717878443; cv=none; b=tHVItrvswK1a+cVqJe+PEui14+7e3LnIKIN8SUKkTndmVPSTQM1Xy+7bBRd3NtL1exWe+qNbFjXgOYRmWFmDrrVmOeCSNmjKSw33LAXGZ7FfPPUjs0IUn9eHz9jQSkIjre3vWswIbhRCEhf3NR/+Zb0xe2WrEjDgWmmFMp8gjuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717878443; c=relaxed/simple;
	bh=twQDtW5Sp0/ACa6xZEktyv3uxqr1kgEyw1UlpJ+2flg=;
	h=To:Subject:From:Message-Id:Date; b=ByKiKCGevhBPoU4vhfh5OM3d5oNiZHGPANIUpT/3fIabE6/pKcAGTAqfS4WR2iFif1IbIOBxYy9uclYwdfYHDemLIyO4/zR0zMvSPSK3RJrLtxPf/HU9BMnDwZ4nCGB8FhvwSD1Cc4dbo3wsx5iEX85CBcU7y0KCXkjNn6KAx/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxCe/ibZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxCe/ibZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C86C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717878442;
	bh=twQDtW5Sp0/ACa6xZEktyv3uxqr1kgEyw1UlpJ+2flg=;
	h=To:Subject:From:Date:From;
	b=NxCe/ibZzzHCK+ofkvk346TIcjEkbpHFqRFTNBRC781Pvad31Mdy0/3MifkRN8hxu
	 fQFNXXHQXj1PR5p8FeE9q7Ynt/6xRsb5zsmHB3ALo9bLY5U2F6nuAlJoZfnmW6rBtz
	 DQRHHh09syIOv18wkFeQJ+jIYO6onh0JInbUtTxErM/JLfL4CBTNMUFUpandcfYqd7
	 M/L3c/uCzF8HbodkgiH/IVPPZdGcNnXn6MLLd+F0jiUy+WvFSKSecYd4eFKgwqmqxO
	 vGC62AvkF3cpcbEbg7DZdzzgXRKEsPEBc/0DIP4lF7WikBzAyEpPfKnt8KuqdWsuzh
	 I0Uq0PzJW9MSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AE0C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787844278.6137.1972715056236652202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11487908beec8c1c87cee3de583c318eea4b78fe1c34410db839e73e0767162d
Date: Sat, 08 Jun 2024 20:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717878442
