Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31372224F6
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744111194; cv=none; b=mybOcMZKXhuiOCJan0BX9Dco4TJi8+LfVBMK2JRv/DnWykj8mDqbtz2X9e6+a16SVO6eDcnJOYTcJJ1TnQIyokVU6cdZu+sJ9BWiB8l1DyiWWaDRM4dEvOpQ6BqPKrVFdTGuKtAEJu6oMywaux4KlMhZL+/3AmDnQarzXIYDd6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744111194; c=relaxed/simple;
	bh=hVOGBWzHZzqaqEvhPKhZwaDjtZ4pp5uClK1CGNIGYQM=;
	h=To:Subject:From:Message-Id:Date; b=PiVGTNA6KsFthRJKqu571tbydHivY7LBaTcjMl615pk2scCzlv8jVYRB1Oca+QkKuhmxgMWyxQiHzE68eZIXEDIhyKelo9bVUuFtLocnAQOAxyX97KYQAfbzVzq4l57nz4Y44tCelyIzdH951IpbtYGljfwaQTT00W162fSLMJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEirsoTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEirsoTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4135C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744111193;
	bh=hVOGBWzHZzqaqEvhPKhZwaDjtZ4pp5uClK1CGNIGYQM=;
	h=To:Subject:From:Date:From;
	b=AEirsoTLFtbkEbSShK5Z6I2mKwZutzHAuk0RhS5ECGsm9sJ2RPaw/CYNT/2IMGOMk
	 pZ9GUmC4VqWI4alrWP2VQ2/6gFt9UgAABe5iTXZkl9O3MrGPp0gTNw394+lZoLaKSM
	 jGJdJPeeVPcsFYZdHzTxS2nP8rLi9/uaNJD19aiuLpbMM2tEGPFvA2evTjrin7o7uB
	 +ePplga5AZpEbNknxsJbXY83BzbhKj7LIvMLDkSCzdQvjLYmiuf6DNsWGFYudcKIIl
	 DkkkdyUUb+rg/U+XeW1/1idIZ1YFot2j489cLxPKpJKKlcY4Ykd4WMWVe2Oq+N0JMt
	 ok7xSGfC+E5lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E83C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411119359.23799.11250101639395335239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f8ada90cedd90cdc3690a94e4f5b02bbe7a3e487e96302964986f573e3a4b2a
Date: Tue, 08 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744111193
