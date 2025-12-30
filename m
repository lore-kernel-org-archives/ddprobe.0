Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C1015E97
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767104633; cv=none; b=gm7sOvCDt0ZQYbzLpsKCxvU0P9wAnjjKkbpRrU2COwmNaphZNISj0XQStnavEwdr7n8VfSWSkwTJzxFNECC3VUucyspbw2F6F7ur58OAN1TBHuE51QZdcvJkEugfkYQg25XRY3MSsD8n+MB7ZcqW6nR9Nb1z1tHnX55sVVi31wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767104633; c=relaxed/simple;
	bh=knh4EDTSepUA9MG5FydIX4QGpkwid0s1LKaF7FvDO3g=;
	h=To:Subject:From:Message-Id:Date; b=QaAzhiOkt7tcOFMxTwjTWLCuCy9PEIE7QWXCatq5TUE44ptMzs+vSi9/6FBws6YT96YJeHzUfzpB5SasYDbki3RshfMGk1+TBPsQeZndU/vjn4vlSa4ucGIN4D62is593WMc53ukb9EN/Q3Qt58/orXiiF9atrByKuqxVXyBGLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvvglcXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvvglcXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D424C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767104633;
	bh=knh4EDTSepUA9MG5FydIX4QGpkwid0s1LKaF7FvDO3g=;
	h=To:Subject:From:Date:From;
	b=XvvglcXlYDBUdUkLtm0qjKiEqhh5mc6oEXxd7lsbCckkImj84nCS+53S5n4nzJewT
	 nS4AzwP3Ymh1jfi83gYvOlfTGPa7q1UGR/E1mCmCUUkJXkkOYT0lashjzSOIixorLs
	 R8p5U6VoWup99CG6Foa3Qhu8e2HEZuhuHiP8DM2eW+4ixgVgsIWE3Jem99Rd640C2G
	 pGPK4YXCieSHy2/LV2ugLKiUK96+6K2Q/b/1nx6/bGYHGhkM4zdqnFDlwqiD6f4C4t
	 pyRSbcPaNfF4XvvmoNpzRn/+dgr5hO5VoYGPST5Hnde9Obj71yFlfckeyo2+A2uiTC
	 dEMIfg1pnQvKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F811EE01FF
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710463357.5042.8188049698540712419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38ddd9dfc109cf6554ccef1fc83dd36545a7dfcd7890fd7ad8506febcce3613
Date: Tue, 30 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767104633
