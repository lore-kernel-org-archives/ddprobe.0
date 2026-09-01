Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA2637F8CB
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788239434; cv=none; b=G4sfhIo9pugdEvc2WnkLhxuNhMyYqhkNrsgfqX4THTEAOZLBvlA6Qs98rP+hdxnHibeEgp/ihXtfZlxgTRfRCCiSuSepL7E4QeOvT1OkNIWuIV8/ZTVL9tdHM/TLVnXpX6TDfHQgcU8mby++dR6zc1OC1ysEcrDs6MpJmasGWmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788239434; c=relaxed/simple;
	bh=jgvM+2KE9/SV5LjyXIcp6wNlqOsUYrKOwDGilqAoUZ0=;
	h=To:Subject:From:Message-Id:Date; b=jS1HK1BtqlavYeAaFUAMKNUzdF5c5F8f11OuUz6WWYRXqrcwkOzDzkwPfu+yeVsJ1qbb1iDdyp8q+VnYGmecYYwZKMHFHIjfglzzTymX2Wn/D+nb7d+ZNoaMYQjgNNUzE9wp76wQZ5o5fM35TVyfMatrVcqGd367czamruplkFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOX64zvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOX64zvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC44C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788239433;
	bh=jgvM+2KE9/SV5LjyXIcp6wNlqOsUYrKOwDGilqAoUZ0=;
	h=To:Subject:From:Date:From;
	b=pOX64zvZ9FtuEqqUiGiZmbpwA9Aq91lfai+gQBwy6Av9z8byMVSsw8VL7DAK+VCb/
	 3/qxpoJ1gbKYw8QyWYcv104FQiETc/1DKm3AwmA1VDubzAivasygjwULUe0BoG6bMM
	 wianfuf5Non8wY4bCREKyCE1J9j0HIELmGpRU7JjCbaZVzNoMiGO/nS4IK/5+QZyx1
	 UQoyRasbZjB4DHZXaY276Lz+VRq5KKpJn8Nam7+iXDjLyhXulI+qIbVu0ftRx0t9v8
	 o1p07147aZrXzwe2fMDqLadD8lYFWuMOA1Rgzk9SqXmdMcOMhuMaavTm26AXyxWuOk
	 Xhv8OUYHmXymA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA930C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823943369.5564.3011275925767399010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843234b2ba1351a365e4a115a0f7a709021ef11d96eecfdd939e8e83f88821d4
Date: Tue, 01 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788239433
