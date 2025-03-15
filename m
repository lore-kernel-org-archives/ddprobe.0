Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582761373
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741998534; cv=none; b=RGLbO/M3yKg8TrShZYs2yBi05Dq6YzwwLHCCbXDPB725kpRkQYi/uDR4b8kqga5NNbjGgj84hJTphQg+wLpBiWnGntfUPcvy+uuAyBL4beWYnBSkpABiQgnYUmPsYtMpHDKn0ONxY4PPYAcrPYctZWaBZCQaLcMs3BML0sXze2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741998534; c=relaxed/simple;
	bh=4pSdntNgHu4zQEsYc6GZjSJvXu78EEF3iUwB67K7RDs=;
	h=To:Subject:From:Message-Id:Date; b=tB58/RGcHdbjqcVs4D4DmDmKU8WQrc9zGq7MEMdkJlHsCbrzpG9EuwPllI/56eRdEGt4aDegv0KpWKEQknYwJaMlqLZB8tZhHbMv6TsXZtxcTTxYR+3RVDsdw7j+Xsfmc9gqUoU48tBaB9On/CIXDY5klllwfYzu2dCaGrr2ZBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApPAU/XD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApPAU/XD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9B0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741998533;
	bh=4pSdntNgHu4zQEsYc6GZjSJvXu78EEF3iUwB67K7RDs=;
	h=To:Subject:From:Date:From;
	b=ApPAU/XDKyc9NtGGJEpfvla+ibM0yaAZWwsplqG/m9/BQpRIhM18wquL8xLj3n2za
	 GDxlwwxCr8Fwx4rsDUnfHkSWgWG3NOBvzdg1su1+McqBgt9EzO+1/MMMje0k7X2lny
	 eg0LeyhmCAikbMzuaL5ISns5aXMqtJcx44FvAyeTD3bBEqIIeE+4VnQsGBNBbkLht7
	 tB6ECElpkfAv7M/Bar9HILeD/6wXLXHUaAak4OswwQyg+lgcRAT5LCDVXvy5L0m9lV
	 2IVQY7+O3mnTveUF+IvQXmGKRC5TTGw6Wii1rUndfM49WA8XahGmw5vNMNX8Ta5aF9
	 iDL6wHQTkc/iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B423DC282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199853367.14719.8527296674557213783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d62c12b423a645e9b528257c975adc8be7b47cee97c7bf3d0311a5747d4ff5
Date: Sat, 15 Mar 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741998533
