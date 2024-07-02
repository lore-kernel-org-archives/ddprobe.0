Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50426148FF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719955523; cv=none; b=T7zzWZp03Ku3ehaK6ApWqZCqTaG0hcBgV7Jq08XK0N7qXp7w1PaybCkiNCPwMJmOPwdINRLV9buJhduH+w6zSJF7yYctH0Q12Q7pP2LkDDGM4XmwBh0G6Q7yfL8wS0dafgiB04eIsNBnQd8lelsemFeSm+ceMGXGhc2lO++Vepc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719955523; c=relaxed/simple;
	bh=Mt8mmwTWX3J/XKe8ea30Esivbkk9LDuHnLRUPCu2LAw=;
	h=To:Subject:From:Message-Id:Date; b=bFFbTr0TBjEgMfBP2OOsjtplRKX3f/u7S7n5YZroQ8qrnhLk8a2jV+SyGDCE5ZKy9Wuw3VZD/7Qk5qPQqH4wLHh0wYlg/zHbscP5xPwqzoOAcNBLMvDauSzlvmQq/XpcrQeRbPN/ba2JyRZpGTgKgR9T/4RkqG1Rv+9L0WGURvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLGNvHyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLGNvHyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C64C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719955522;
	bh=Mt8mmwTWX3J/XKe8ea30Esivbkk9LDuHnLRUPCu2LAw=;
	h=To:Subject:From:Date:From;
	b=QLGNvHyxX896/Qd1v/4HORaQq0Muh6C8mqKNHCvxsIM+0B0x2THanoW6pJEgXw0iO
	 WJ0J07ZqjGcMd+NsukSoR9/kSNPQ8ES+OUsjn7GWbrjJzh5qHn5jn3fezKmZ0H9HAL
	 1qHU+TVCv4r7KMJts7+fR3pXsLJ4/qrwo5vDyX/ERh/dExBofPuGa7m+asQyKKleIq
	 wKF3WkE38YOMxwskgjzL1bPhsf3gul9xu5DT/ZIdU6BC74q7mxOopiMwIU9j+wG0aI
	 Pa+ZvZeHVMc2BLUmcShFjomVMKApzGX7yv3iyV1ShoFb+GtpA6KpTYafCNTiTOt+kt
	 RPaM9uYr3oyiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D44C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995552277.25925.16552010862597645258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39520abbee49386566fbf629ed65c1a4e42b7e799624286bba4d46a9d9a6ae7f
Date: Tue, 02 Jul 2024 21:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719955522
