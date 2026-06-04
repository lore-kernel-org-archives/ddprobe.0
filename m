Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9D210F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780532074; cv=none; b=M2+gkQViNh8f3XGqRqYXgjjDpCcUVltcMH1+esLR/5cv9hEE4QLWyS4r3qHGs0364jZDCxwfklhYKroqCwx7Hvt8VUF+9krnU95W43pmmnLMRP43qSPEXEbyKNfnEjwotvCg227CQoKB7rqR1x2oUOfbhBkaiZCAT5rUvIGsttI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780532074; c=relaxed/simple;
	bh=/VugpTCt+AjYTT0Fzq0tH/MZjzwisg5B5X4scccy4xU=;
	h=To:Subject:From:Message-Id:Date; b=tVHPur3Iy9V65fQYxJ8ZrSmQ2yOco5OzZd+MSoBJFAWUrwn3a+opF4HoE6aDzo6DoE1SH3H+sH7u0sWWvsd31nTODGs/ZhNSAzEt6HXsVhGfhhB+BWZAUBCrEd+M2Y2eM9Gq8HRZR06EeXpAbDZJbOG7ca7qR+ctrEMJ2Xc9Gp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1hmtNWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1hmtNWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC71C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780532073;
	bh=/VugpTCt+AjYTT0Fzq0tH/MZjzwisg5B5X4scccy4xU=;
	h=To:Subject:From:Date:From;
	b=O1hmtNWql49L9B24P6PbjUesNlPstzgnrJH9HYHUO1VZKOJWQKhztpy2awlX8A4xh
	 7zIq48m2Ei8ote636+r8OwAs1FU1kiU5QiB12aDS113KfvR0YqrQ/KZ31zzGtuWFNm
	 xQzN81FYGL9lkvlARPPa7BGxoKucIJ1oxdS3D9tOFqxDO44+O2EeQr4tx5Ke2VdiS7
	 lDomrnMMsauMSwczZEKfIy9ypzNL9Z87YdgEMeSxNnAvwAGLLOhNLmFO3L7mBVuWGF
	 DCJCN03S+16xfmdnOIn6rnMBcAZ0Pehmyh9VgBxC4NEgc6EVDe3nUj4Vo9Efv5E+1G
	 983FKQIZMgfUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDFFCD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053207368.27249.1531169569400865770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87f232d3769d6de9ff8c0be0fa0552dd790b5f9d2acde42996814f0cdce0806
Date: Thu, 04 Jun 2026 00:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780532073
