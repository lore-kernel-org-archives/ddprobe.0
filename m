Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3C032D0D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764245573; cv=none; b=DbvS6zzNtIRU9dlNtwPE3AcF4qvYnvCEEMjmatbEZwO0hEKtZzO2uIGx0DflpTU6/2ilrQdNdJkOwLvVpNhgJqeXsO2HmcBHy0XWVUtks+HyMjXIFMbLGsGWtX2ruJW/1eVSTzFPmlJmBa8/RJdsDM/10MDwio0Gbo490l5UthE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764245573; c=relaxed/simple;
	bh=xvYovTHOQwRNCv9QuTwzXR4SLAJ0Wg0hfd0DmgcmC10=;
	h=To:Subject:From:Message-Id:Date; b=MRxHCtTib9MglTsdqMs9tTKUsBa92eD+ehJYC6Q6A6/PkFIEl6UaRT9pZHfjuL48QwlS4i4YzBizFUWJFXze1xVuH+ahWFpGMFmaqML4kYyUWdxaEEJ25ZuxxJ+vnluv2rnLCofo3Z/3ZXkeLnqFHf5GVAuKDYAyCOsPxou3GSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvZgNfka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvZgNfka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EB3C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764245573;
	bh=xvYovTHOQwRNCv9QuTwzXR4SLAJ0Wg0hfd0DmgcmC10=;
	h=To:Subject:From:Date:From;
	b=LvZgNfkaY3kBkkOxZP2N1tQpH90MAh81+pIdQfjUYoMoinyrRep6nDU8hmxgMyyce
	 tIaaK0vQM3pdOZnUB0gAKeBuGNkWn3C8cHuM3jCDCJmJ2FzRVf8m3k6YusvdXpfPX9
	 4EAxMF163Hwzd0idcoJtH0tGKx6dr3f3UdxhU6JQ7GbiQFZ9aK1uvAJbLctvVjBiQ3
	 OGb3DrAb+MQdgrFzWROrs59hTwMOsjop74xFQ3LMCE3pytagR7gyaXTfpwtEFdLsEz
	 OWoNeRnmgeKSBrCtZfel38IDEVc3H9ap5/k7Zva8H5cxhivkaDPFmqIcYl2jee4XJx
	 srxMAf6sKazow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FDD11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424557358.11093.6470914799942103020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a43e4998e843e649c55b318d6c88ca6c8798119fe8ad147659286e3018e48c
Date: Thu, 27 Nov 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764245573
