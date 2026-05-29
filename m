Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF8581732
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780043554; cv=none; b=jvlLQYuuvfnNH9Z3XiFWMJNoBNtVimJh2g2Goo7ruLHRHkrbHY42Qf+hl3dtHgWxTuTTwA54JUNpLFoLrB7UooeU0bR+cfvRwBwyvteh9bO2M7YKEKKivmFbNamLtXSsa0LXbz2H/3glgSsXNkOrYgT+3Jlg964IhMPuEt4SL8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780043554; c=relaxed/simple;
	bh=4r/UYm9YBxn7NU+dmCuzN3KsV92OvNF0t7c4FN2gZ3w=;
	h=To:Subject:From:Message-Id:Date; b=H0FZdXnvbMVRl3/ZtPLIQqeu8ximv8oFGjvqGVRr9ks2X/0CCVO697KRTkPd3NPzLGqRlsj5fjV9h793CyLG1OZyyJE7ovqxLiDnerybSkS+ULTHWOMePdfgW8KYGvGa03YHeuJpcfoj/g6qzTTCFeB7ZLcWEWS/uTeeQUErzww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nD2wMOLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nD2wMOLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2003C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780043553;
	bh=4r/UYm9YBxn7NU+dmCuzN3KsV92OvNF0t7c4FN2gZ3w=;
	h=To:Subject:From:Date:From;
	b=nD2wMOLctMlbV0drAYQHuOaT/UWBZWCTjjeiX1Yi2q8tCZ+D1GxZYdbskvspzFVVh
	 8DvAJFVZCOXSTamQlpaeXHv6DBWM6f/xT5T1OapYDpiw5uJoj4NqrjeZUjdi2q7Mek
	 OmD6NiVxW1Cbco3QMdOX/x2eTjkIjWfaaY+ONVxGsGixN0uXGGUW9VY2PjA2rx7Pdw
	 Uai7ihR8JHLk0xyZ9/l5dCoswukJ/QMVfva3yh2lqnzACARpxcf0cinDD1FBCmEWGm
	 if4byCXHEg7VbQQ8qzDq7dBQcCBhDJgdj8NBDGwGUh1Jjh50llz/5/zST1pKWS+Iri
	 Nehxhg+w55jDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CACD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004355368.27962.1507485279204160101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5196f9ff737d5239099d950242be6bedc4b8966e3092f8388cba151f202ac34f
Date: Fri, 29 May 2026 08:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780043553
