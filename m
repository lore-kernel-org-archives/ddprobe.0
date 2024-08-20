Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECC6522A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 06:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724136355; cv=none; b=Jgwj2dckJG1LzwfQCOGRg5aW8oTBXbDyikZcIHiMakSOawaztTMoDezd1hQC22AU+Mnj8qCW9MDrtUGpShZO841LKOxhfA64o7eaPUBJKvLUd2LNwzS+Z/VVtoJW1qxwqsZXJvRk+/ZRsViDHhnwxwmR/0KWYgtOsm8rV5SyDEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724136355; c=relaxed/simple;
	bh=hQxHk+Vll4QBdHxCM3FJcNkVNBMX2e8v7qNq4QOwcgU=;
	h=To:Subject:From:Message-Id:Date; b=niu+8r+Y7yMa7KKvIkiO16nDF2wzU6KrFqYJB7BpbNXB42kLOtCYFTuYQRweMPKAXNhpKSGIydUafmCWsvTbhwncyKwNAq1q/x49mayTCGj8LB1ZlQSik4cJgfYSGwWqYPRgF3P7KO/f4bE6TpuHBSJC/1Wvi0YT1JLyNPsU9ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZwttSpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZwttSpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88A8C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724136354;
	bh=hQxHk+Vll4QBdHxCM3FJcNkVNBMX2e8v7qNq4QOwcgU=;
	h=To:Subject:From:Date:From;
	b=GZwttSpTDNC1CCkDvb36CjO/tNg5epJlUGaxJ0ZOzmP9AA9NTr+eMk6FhMPft1lnz
	 WtDZV7zRl6CeB33mScffNFXW8HeBodfFpM5DNWXw0yecGbcc5PiCpaud3O0J4iVHti
	 knH2Qkmn8FL6dZJYiroCM/Tt6Mn9sMDJg5T5fGpSl4i0lb0mhbASp91WOheC/jNlD7
	 Y7DSEuQ4KHOB0jMnKOkDUD9PeXBH/E0UuAMBgziJKhWM56uvsqYj6I7SOpCpfCeh0V
	 LLpbK6DrZ08pJpEmpmqqdSRJIBZo+3ak6I3Pzx2tDO26FBnLRrvgZTHocUKckZWq7o
	 Ymetpce5t4E6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E23C5320E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172413635360.29872.4346456071979203353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a8f5ef90a4c58a3cb699d38cf4166882f6135c4443b2b6b2cd6d47a7e67033
Date: Tue, 20 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724136353
