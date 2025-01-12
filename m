Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6E61714A1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736669154; cv=none; b=SyjU5PE8sdavxuwOfJA9Nfw1yGjVLGiYhTFNmOy5kvUzF887rw6vQuDoXjPb+U/hBC0u7IeSC9y2cAjY1McWEVc7SftopO02icLuOUuj68EEKay+Qn4Whm+bWhPmpk3IpQrb2/wUw7oyWKvtVYD48lf1orS09KxF9G3YNMDX7hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736669154; c=relaxed/simple;
	bh=o3fkNrJLPbjpg9xQyFR0XTRLlVd7On9sKTGiyeIQclo=;
	h=To:Subject:From:Message-Id:Date; b=huQ1LfFKCYEz9hqiRxrcNZ7Gme+cmBSjbrP8tb8hf7cToGCD+DJApxezOQDIKZgXKj/MmFSByy5HvRsNWPLYCZcjWS9Fc7Fmv08+is7vrtxtV/nIRGYzr1+I2nErD0WFX33lLqHp3Vp/OSge7IGzqagXAvehAke3rA6/YbyUVn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrdYEaTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrdYEaTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AF5C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736669153;
	bh=o3fkNrJLPbjpg9xQyFR0XTRLlVd7On9sKTGiyeIQclo=;
	h=To:Subject:From:Date:From;
	b=GrdYEaTDlXXW74UtOhKG+Y4ZPhNvFIrgtsJJwV2x1YpTLSR+GqPbhECcYpHuUPQP4
	 wvsRwKo2PhbMBn4YCLa4BCubTBJjciHk2CFQFXAnpTnQV/qqHVjY+Qf6HFeaF7RZTn
	 xmeq/oju8OhJJlkGyU54MczXPJLNazwkMUg1Eozoxizu6vkCPzc0WoFwXoWnFHqNz4
	 TMJlscViBDlElPJCqE8926f6fyXS7lEICSMKs/sfQTJFhsOAd3r1P3gVOF5RRjgw8a
	 pKCj8Nf6eqJJfj44/NYFO1MFEO17ufnL2XOpDGeZN0EuHGeMJZ6bpfka83e+N20xl4
	 GxfUWIIEw8qNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D520E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666915360.21927.5181376597621842314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb99bf28d6a6b2f6c94808831b1bbc084864b44d61f39ca2bf002719033d998d
Date: Sun, 12 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736669153
