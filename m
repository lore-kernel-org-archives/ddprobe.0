Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEA9280CE5
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783781314; cv=none; b=GdFNAozoC5eAlvf+/0sFJgw/YmcB+46Lrwj5JIJQjQaUdl8DiRptGtoZyaTaYJmupB412rEjfdMP9mCfWq53REMSKe/WnQnZbZi7icuokC+Jdt95FWBij4vd3YbnkNyq6+2sYSvL9Ea6VhxS28yNItg17mfTDdgjNqrpwoidd94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783781314; c=relaxed/simple;
	bh=YVd2Ieukvs8Gfu+jyM6jT3MnI1Jb3XQuNvsOeVd5N9k=;
	h=To:Subject:From:Message-Id:Date; b=QLLUWMHa2gKU5l+D1ldltNZaCaiVqdygCIbfVu5oOYPwrwQdQq2cFhk7ngw4PZedCroIb7LWpnRjrnTuagyH2qvJH9t/TfrxU2jbIAKy3W2ECcG1pOLUXoJz87yTKy3QFZr8++o3WFcwjMA+izkdfNtSqv+Ixa1iDfXZGnkIRH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7UOd/rl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7UOd/rl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB73CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783781313;
	bh=YVd2Ieukvs8Gfu+jyM6jT3MnI1Jb3XQuNvsOeVd5N9k=;
	h=To:Subject:From:Date:From;
	b=C7UOd/rlTnW9QGJVWDpixZubHhJtMce0hAgPDpXyHipgwgn8+W5iQtwBDz/lc/MS3
	 XUyo5D/mFCphYtWc9DKZ65RJqUuDukaRR5SobMRTUirRJoaG6ZTPkuVlfkzf4Xb1Tl
	 TwdavslYaQN72Odxjfaf9B5H3VzJnhkBXFLVe+sZRHbomGicjpGBnUvOCXrAfCx1ZM
	 924RXeLrI1yFthtByixrGkMWZXGzGBsX8AKGTQr/4ccSTsrlGKmhQNvsBNFwLblHNK
	 o0+KbHzqOmFvyTZLdIL+ofOSq4We0vteq/uvcrSrE3wDvjF0DoUlKv7d3vNu4CXeWp
	 b8uSo69+3KIjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A862AC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378131368.14434.16136646767518466931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cec5aa86652071ef38ba18887baed38edd65153677b261fc70b882b749126ea
Date: Sat, 11 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783781313
