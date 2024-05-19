Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75781168BE
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716147143; cv=none; b=d08K5Ie4/FEJMN8OqAAEAqCPzIRs9vtjXbP51xjwf45nKcm5VtSgvsbFhSOwbNthhliGo6X7cd7qQ9YE5iPVi+gAM/bYSUSxe+hyXUjJuBpM08l960kYexPPavcRVECggmqsysnnjAQCLUClnVDfMTx2u5KOhCaIohcHdSAY57U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716147143; c=relaxed/simple;
	bh=y2+laLaKYgH5ScBQP1+D3glkRl3zjg3M1FAu3p7zNtc=;
	h=To:Subject:From:Message-Id:Date; b=EguJjqTxPXy+tUVSdzQgbl4C4RU1H/38IcFK8IkbGJr9hLlbN6mmv1hHRGzXs2W1GFhyd+mIQbIMGQxLOXyGb+/cybzr/tu6VnWIZT8T29CPA2LcwheVa1DLLvdczYphTCWIfXrJpbZ8xpkLvBy2+WEcLN8o+UdRGdLozgKwcCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbmWVvu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbmWVvu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA20CC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716147142;
	bh=y2+laLaKYgH5ScBQP1+D3glkRl3zjg3M1FAu3p7zNtc=;
	h=To:Subject:From:Date:From;
	b=QbmWVvu9YGtEuJvo774psTb71ZqCHaf6disHmwCKYkn/9X6/3miHN00tNxq6ZKavs
	 bjcjep0GfBnAGwBXACjpXpslh6lMohkkDwd4sFl4734j/u9Q2hnPKvm3WvsVNOzbEK
	 U4BQXc46b8a3r/V0rcs7txLgcWAjSvE6wUrQhEkI2NzbKW027sjVpIs+xt/LiOND2C
	 ncG/rADUU1MX/HVony5AbSh1E08/g+hVvdPyOiePA3aLmKOtPNK8rcR6jN/GbM0zy/
	 plAcctOHbqZNElsrcbiH1bW7o3lzSAU/9ZXWtPnd4ndrGuWfCjh3UrTffSPs7eVadh
	 lsCJOdUaZXOog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF42C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171614714280.11924.889385503901415440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141fe824b05663fc2d68f0cea641a68652e3b6a9d569ef6a8718fc9a4590c30c
Date: Sun, 19 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716147142
