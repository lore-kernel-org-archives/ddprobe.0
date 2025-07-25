Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1620954F81
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753411194; cv=none; b=CekBlqGocAeFONvuSGZYSwZxpLy+W0weJ2dA2IZg4DJQSNTG39iedDIgzcwJJKjxrELm2fxEqYmuPrUs8ZolZE8pQ/W8BhzrZCmboQLyB8WQmQROx4I1JHJhzUQwni4EOIxgqJP2zvBh3hUaJn6O1ZiIbUyjqJ8qvdl/2zeWq6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753411194; c=relaxed/simple;
	bh=afIrWB9nJNpF7JUW7BR4Hc2DUcd8K80CsEFceN2GGfQ=;
	h=To:Subject:From:Message-Id:Date; b=AwpCuoMo0XTBwW2NLoKf8ren7AIzxBVkrCNMizOZ1MlCgeSvO/dV3bmBi1M7gaiQmW/wEc+PzrpQjkmdAHk8LhvRzDhRbY7sA8mm8o41VTuVxlLYcyyGhzpXlVU85R1O/R+xih4vwfGvCwYTaRI5SBsKCFjU2oabQnF61Tc4RQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgCpviZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgCpviZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7EAC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753411193;
	bh=afIrWB9nJNpF7JUW7BR4Hc2DUcd8K80CsEFceN2GGfQ=;
	h=To:Subject:From:Date:From;
	b=fgCpviZ8kNDcN0eI/qRvBq/DW5q031UTlOxmPIR0DZdj5L9hnr1b4wK/MLOCmVnT5
	 v7JJmB/abAYzfQ3PyW1PXseOozwJvsIQhMV4oguU3IMWgq1r24pOfmgtnERkI2dEWA
	 gjiJv6MSx+1QliGas6MYJRTuiWy3YFFBr5a0gcOmv2tY7fCuIezziyRuvHYbCUJlwy
	 BmDS5CQIhgtupeddPnh1E7cJnPsSnHCQXzckdqv8rP9QhoNa/D5SSBXzfxHruXGTBm
	 8iTin7L7muZ8LicB1LDvddSxmLR32s+JuQZ22j5B6OrNAO8UM/TAwM0VoHOQiyykN8
	 lwQYmijACeeIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42CC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341119357.18409.13692696877320981321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7447b254c882aa1120dfb2d952478d63f8fd20b7509bc63fa6621271739baa6a
Date: Fri, 25 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753411193
