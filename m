Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BF122172E
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745660994; cv=none; b=QCuoWSkk1z64THq/KdjDDpk5+ZSCDoQMIsJPGCEly8Z0JgAulaH0xlvi3Qrrbu/Ob85yl8bo0kH1+D+2nQylM/8UkTQss79qA1FtLq8DfR7sz6Rz7dCBFA6Iiul5fiZYxBXOQTyO45R1FMTO8AWeXr4XRfPp15DH7tNQDeras1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745660994; c=relaxed/simple;
	bh=jIZSgT9HfFJKCaFRzCSWjo+lBZwA5di0q1HHHn06Hp4=;
	h=To:Subject:From:Message-Id:Date; b=WlsXrL8wD8rJ47mqNDkLfpEsVWdMO181T607v46idkYZV2gaVYwhlKLYBaNEQ9IXfVNH2KU4GLyu8GMytvkheDdM0xXdwzJO9RbRlfcBBmFLbh4UAvMiKdnGnnxLuvLaa+PRdyeqosmL4DOQ47AwC6imMsZsCwrltWf4J+I5TQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjSSOHDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjSSOHDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5387C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745660993;
	bh=jIZSgT9HfFJKCaFRzCSWjo+lBZwA5di0q1HHHn06Hp4=;
	h=To:Subject:From:Date:From;
	b=RjSSOHDB2Q0C9veRPjsdEBKQZsuf9DE3brptpLn9Xu4S5i6GQV360Nt2cZw063YvP
	 a9N1eBwnYauB+4tZkZIH+C3Ybe3vMcN0wE8rCh2/gJL12PhFvi+fL7zRiepPYSilkI
	 8T/YnGo1YkRp7Ph+LhpioSnqDY2b1FppY/Nj3tXPpRkozI3dvy9amN1U9t0TasYE+P
	 UCnmMljtvOSU/k+xGb/xRPFLP8JPPsrCUrcQItNXaJMbQad0PTvAMVghtQ4xL4DAEo
	 vS6T/+N2ybXEd8GbjlUnngS9ZyU5cnciSOSGv1AiQXlhCXSlqP2K8JOYkLqNRq0tRK
	 5m7vmr8oOFdmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AC2C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566099357.8175.14583861984603731896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef17d9e662425d0965cd346720865ef898d3434acc2e677fe2d16a238669dd0
Date: Sat, 26 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745660993
