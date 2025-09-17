Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCE621578F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758086994; cv=none; b=Ixq7FQuy/nRqGyXo4COzP1TLEF0J/AUC9X0OJYjNEZP8y12b/nQBx5zlL1pKz5SFqoqdXHa+u+1a2AhpqJnJiCJpHHjFBr+UmSqo9wLXEuRQvQ39FnBhtZZSIcljpfiRnnfmOIl24BDioqe9g2L4ATffKksugFPSCBsI133q9Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758086994; c=relaxed/simple;
	bh=m04HQRJkmGuEVpshWbKEvLKZPcaEEEmrMxqm/GLgzyM=;
	h=To:Subject:From:Message-Id:Date; b=ndYFfXr1yh7km92cVfd/6d2WcTCwtRzfvZJzmMJEqLFPcrgQkROMsSLm3LxYbBd7UFQfbXRwsK32tmAcAj6O6WDrYJvI3MJfyzbUbzCRCeQXbcisE5wY3hAvoori2jr7lV3mcjKjSXKQodwvdznJoJl6xjmhT182IyHVnSNw2gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxUTVtfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxUTVtfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B5C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758086993;
	bh=m04HQRJkmGuEVpshWbKEvLKZPcaEEEmrMxqm/GLgzyM=;
	h=To:Subject:From:Date:From;
	b=LxUTVtfap6F1EWgX3VP1WdEUR49aRqGJTSUs7240wuyU3jY/fNBdYfOLErCVCincX
	 QuhR6dz3DExWWZlYM0XkFkWSW3BXYmWrpnUXfaDdVmxgTWFv4YGCvaNWMUKpD8vYvo
	 slmjN9axgOFBrSQd+0iwFsL5hlVdnA3NBB+fQE1c+zIsrfZ2thufAbF7ofR0D6N+Cr
	 mbqnhTuOQ8ik+WZ8KHhSDCFPWsZAlzUjnXSUgOpahNOuSSk+PvmCLSlanaSox2Wixk
	 x1mXkrPMG/BqtDzPfzCgzb6UcAeMha19jyGc9p7m3KTF0EX+NtN1LNia1xQQZxEI5T
	 5Gyu0apYu83Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F481CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808699357.17100.13119180420650639781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c1e3c34fa24cc40daee4050a622f4615da8761075df199c86a3c313e3d8ff5
Date: Wed, 17 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758086993
