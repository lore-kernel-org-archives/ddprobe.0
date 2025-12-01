Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2454B2853F8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764632574; cv=none; b=Vizg+f3AtqoWXEryZv+2sgRJu+Y7fvcAAEl5SjIWNyi7ir/PkqPMMQtwfrMiaFxffgreu82/olU2gsT3QOr1auWDIBbvH7U7KDgdciCek9Wsb7Sir4DyjYogAcpZiJQ93sifZSZB/HrRb4Khsc06SF2ZuuNZr6NblJsbLkmQaHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764632574; c=relaxed/simple;
	bh=t624NddOy4P+eAHDCXY2VGWUq9m8ZHiV7LYkMSktrXE=;
	h=To:Subject:From:Message-Id:Date; b=aZwxYY2k2crinKJcuDKT/91Efpkzd0PbD1KMH6PAFJg1S0DMv48j+yj0UWWyDKdkuIKjCU5l7+hf38bPRqnop8/fROXFo8xR7ng+yaPWE4hEgCCnMj/oHs7roneTIn1UepVKThqLBPf3I9DcdrI2tnODp3Qza0QFChI84qLQhYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLpms0uB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLpms0uB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AEDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764632573;
	bh=t624NddOy4P+eAHDCXY2VGWUq9m8ZHiV7LYkMSktrXE=;
	h=To:Subject:From:Date:From;
	b=XLpms0uBdYr3RE386L0SdaAFzdKnUO/nFMQCTUb0RMWjwPk3uuPuggNBgYhuewc/S
	 hyE/qYluO8EbbRpBQUeQHbrjFJ2vg9s8LTOLvlAcpG+WU1sn8KUvONUkT3PMHenDQX
	 ZWfhVz9q45iblxnxc5DNGofDeBL4oN0wfZl0pJpAm0XUTMeajxdq7KeSMi6LywO82z
	 7/nrZeE+725DVhMwqJ7NZmzOcedcC4YWyKN4LxuXKxRYyUXewRg8ScGuWPPM2fNvDt
	 gEsf9iY+CDmqn8Vkfz96lXwV7XPeg1xxOLjRfT+KwV2wcQdZJLMehXPYx7abn0RCrj
	 fDs1sjRPDKFtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FBD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463257358.25748.11870138855102925043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00a74a1a36d4b872862b71169124b940d139ea1cc9a40a41b1f94430ecdd4c3
Date: Mon, 01 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764632573
