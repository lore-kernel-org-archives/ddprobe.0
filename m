Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9F71D435F
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788573634; cv=none; b=eZ8R5mexxr6tM3Sup3K7jqbq1gDOIgRRp1AL5CtOImmtbasBDB9Df5qQmemFuTbVLeLoLZ9fAZ28QR9FLJmVF7VIrzSqM3EQVry+8nt/VTOoDQAqVRJ8oT54FKwcfYe4OljXhWP+O7vc3yBSy7CaLJds6yv75R+qzecsggys0jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788573634; c=relaxed/simple;
	bh=UNBcbeIsDr+DNu4dRnxAme4pDrnz9sxYK+C/zSOwwTk=;
	h=To:Subject:From:Message-Id:Date; b=bSDhJ74rfIfcFizM6Ww5UplBtgYENMxxvaKfWluqP8bUGOjsdUQpG1aa6l6vg6VcPjj2TBCmWhV65NoJzyW8Sh7dSO9xpMMRe+whQ8G5b3lbH8wuVQhBF822ryVKKJ67HyHt7silDd6M+bze4bREs9L8QS/R9kMjlukT70q975Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmUaa7SA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmUaa7SA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D708BC2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788573633;
	bh=UNBcbeIsDr+DNu4dRnxAme4pDrnz9sxYK+C/zSOwwTk=;
	h=To:Subject:From:Date:From;
	b=WmUaa7SAs/PBIohCjXrqIT02WYsCU68vtQLWFeqMBWWJHscOyT2iN9JibMbJnIB8Q
	 2sy9E2WXGr3ZY30O7mIYq3h92ct1opp6sPqbhxVDfChsvkvfeubWFakCQq4+MNjtD+
	 2VQZdHY4FasW6s3wDnV0RMgAHLSJ78xAyEhLBk7dobzbgbLtvLEPbyvvT+4yc+eiFR
	 qsmJx9GgWJnxQoKpdrvrBGSu70HhNNNpBC+vuiwHSlUx8sVL2ZclNVjj7BC7CoiW6Y
	 LkLL1VkFj113LbBaqA7hjQD87lVziiZvQnjAlz2wziBDhmCq5fVj4fJadKntg2PQs/
	 4qMSKgyVtAN3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29AAC79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857363369.29120.7113352291424105448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc29fe1b98e82080635faa261120c4527aa824a88110122c4eff1ac54bafa4b4
Date: Sat, 05 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788573633
