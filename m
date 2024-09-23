Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B0E3FE4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727063754; cv=none; b=C3pSJbRhsjhE4MGWSEtiakewEhkaVQoZ9G3OvtNww7+IF0MpVc4+VscUpVdxRnmLHYewikiwFryKm20WZX35Y/1SPFPUc7YZqZb/lO2k5Uap+6QwJCahNsvAzIUjHveTn3QWdL8RSs5V0n7kAr+Ui0aAuTKCaFeRD7QuAvFwvIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727063754; c=relaxed/simple;
	bh=0PSL6P7y0bVLfbmJKOPKuK2J/JLnxKcXIPD7D/hntVU=;
	h=To:Subject:From:Message-Id:Date; b=O/Brnwlds+zXh5bDgdt8t/uCvCqYejtBldGV3uQRXR+semOgSBp6UXX7sDeoZechrNDGpSujAsW59ASjQ+RpEMiMBi726dJpijZigvoOWi7qQo+W1LtwTbzUfp/Ls8+qJ+bTEulDwyWEHA5+ZRU6q/6f2mwxsnGuO7EuyfD7C9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuRmllea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuRmllea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B72C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727063753;
	bh=0PSL6P7y0bVLfbmJKOPKuK2J/JLnxKcXIPD7D/hntVU=;
	h=To:Subject:From:Date:From;
	b=LuRmlleaoWU5eJKNpDj1iq+FD3LjOFyi8Esa5Q0hIM48v0Tq9nqDl0bTr+ol8wMkL
	 bAAD1GDxESHbuqnz0urcKq5yetAIdxt5G3ALUWGk3ZWpUt54unz7/luKufMC0uzsWw
	 O8blkSJuESXzMyM/JZHeytOWyNgIcoXGRp76M/OJgkfWGpl4sOvMD5/7i61woVqOJ0
	 tiw37LQSBecJYcopEXoN2iTDZ7+XmxfJF/NFPG6KaI9xZ5SL96wEjgvSdgNsTEVqnv
	 FM8h/9fZJzpbt/rrG4PgZCYpoh2pgjhRKdh/Smq2eM2JDWb2IqE8fB5/UfZBzr9tn6
	 L7KG1AKJ6SWtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21BCF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172706375357.20399.14609184370234837062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00ec3e8cd9b2257e6bbc46227b2f592a657805042da151df75778d5a7536290
Date: Mon, 23 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727063753
