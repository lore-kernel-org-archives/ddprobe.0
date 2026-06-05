Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE193290D9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780675474; cv=none; b=KieCGzSAQKOZUzQ7QHyXuua0DNUjArGcWOg4kXgfTTZF6qBfy1MDOk1/cQLOth2AfcT5xaMsR90GnLyD1g9ft3OwGdStmSrcVxeYFwvEEyuMabrgUgYe/7mHIwvzEUH0Bl5NU3eV1Sh5IZDFkWJR2F65nz73Htu4uRyxxMrEyWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780675474; c=relaxed/simple;
	bh=tDnJvZxkNR7LAWqY4/2KrzNPHfL0SKtlbsctVWsVVM0=;
	h=To:Subject:From:Message-Id:Date; b=Hihdmlkzy1FuI//FIhDWitxdOb2V13EUBWGVlOfaghPGcjA6p5c2SHvRoEHq6DdGNe+thhYcIZrI/F5ucW3hpyxmGzqbD/Ijh44nu8lEWSq0sgkmqyZV5srKNQqQeTo4jr3q2IpdgXted6+SQsXyJ9ZmlIrK6rz2smkrpr2KozY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1jhf2AV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1jhf2AV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6326C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780675473;
	bh=tDnJvZxkNR7LAWqY4/2KrzNPHfL0SKtlbsctVWsVVM0=;
	h=To:Subject:From:Date:From;
	b=p1jhf2AV4C8F1SN2XQ++tv/mMIiB2zRhAffYZD1ZXjGaY0935V+fX+F37/aEp2Rn6
	 Z7pkPL8OBHTaDVCrqqZMN5qRvMK6UF3GNRTQtLflRj0FMc7Onci1AmJvBJ/x3oMHZ5
	 kVj6mlrsl3/9s91/RMt3wjxWrzyKH7/Ou9eEFt7aEaTFW/JaIHXg1rWcS5um1qaEZE
	 V6R0WIdqH8GRx62lbVp4xBrSJcH+1NdCiHRMBInSGVJnqn7idmZWsUHl56M4t5xPjJ
	 x5VH1kCclNQJkhIYJUKUwXkHxQ8LuiN8H/SBC8CCAxwBksdY+2lKabayy72BD9EpIh
	 Tc1rvh26xopmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4DCCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067547368.24208.10094643139237529289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 394da33c3f39e02dcedd2a646fdbf2f8a2a9c7cdc7bafcbf8af91ee5067ba31c
Date: Fri, 05 Jun 2026 16:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780675473
