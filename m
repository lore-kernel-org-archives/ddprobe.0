Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3622E1798C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728152154; cv=none; b=hV9YfH6KGpFpXdldzuZkJ5fZfA26aCtHkGJbmpCNa/KkUx0fwzUA3hd1dUEnyfSXiAOCmH4cI6H3Dssib/tk6jCdVVzGIyGvlqz2SPQ3oRkj1VsJ17hBz84tVXtOO8Vdhn84TzsLhu283XZ9PHjmJzp1oAmJaTGFdR+5zbjzksg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728152154; c=relaxed/simple;
	bh=p3OnbK+6+Rs4cc2g9rGhB6Qu+cTuL9R+FAV1HH+RSaI=;
	h=To:Subject:From:Message-Id:Date; b=bKfYhl1pcvs+jBnNonIugKuDdXS7aAXQSGG9OGYg7H0H1ziDYHinbXUIwzC6CXgBa7T1/+iZ8O87ea/+cU4kVynkh9XAK0K35ZFAFpyH9C/hvp8aoqicGJCfsOwcO1PaC1W+ue7ruqvdbd3k88FdpXAfyQu167VgABtNbMn6b/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxNb7UyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxNb7UyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A9FC4CEC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728152153;
	bh=p3OnbK+6+Rs4cc2g9rGhB6Qu+cTuL9R+FAV1HH+RSaI=;
	h=To:Subject:From:Date:From;
	b=jxNb7UyK9POMgYx822vO+YGBggmNjvgBUmsZYImxrR5y5qMU3rjEOsbHp5g2J92FR
	 s0xKaF87f0oaaqiQjLyj9gRk+MWDg+BfJ7MBtyRoQ6e9ERZY5FVNcf515qgsou6Rft
	 xK+Gr4KZC/igG3hC/oye2U9wTGmevjUvQU8RnZOH7SvcO/kOcO54getaNzB8j/CxfT
	 oyxhw9vj652GEr6XnlMx4VxU4szM3lFMhvW/yflQSdqX/hT3raNido+5Rs27SGwTYI
	 EZtLN4WUhKGIe17gycLElKmePxbLYbJVo5LqKhKQXdLFYH/e1tMjxCZ6XuK3LpeBjv
	 XFGTsPGoUVk5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F57CFB420
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815215360.23846.15461793677614841647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67974fe3687cb67a687be11d1443997c105fd3ed3b8f6146e41466c2fb9f8f16
Date: Sat, 05 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728152153
