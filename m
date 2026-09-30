Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5744E369D5E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790736634; cv=none; b=u64hZNGZpoOcw+lONKbVoWKnnQpTlqcna6cErKuZMmFHCnEEsDYJ7JIte6cclPJj9VUPT+0WcOxiYrqoAfoBLPJwOLT6FKwfwx6nYMcKxAb/Nol27HxlFtvNNXCZJOB/lpoGNYSWff7ropq1Jf6Z5IqPgp9YoPfo1tFFtEcuVgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790736634; c=relaxed/simple;
	bh=snBKShMQAHVckuCYgZvoL3I1VSEW8Ect8Ni2SnSY034=;
	h=To:Subject:From:Message-Id:Date; b=GS79TJKnMYROprpovhjNEsXAbgvupmHYEsckb9bLEMDo6359LThbN47IowZg/q4njh/DmwLJybuM0qiC7IPucWD3LKHHqp9FtWRb3Y3XPWJQBdCPAdruJrFQQv38SlQvRpH2pep3ZyktAUCT6Vf2TWBmwO/KPVMXxM8c/yaxdyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMG5RvF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMG5RvF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27F9C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790736633;
	bh=snBKShMQAHVckuCYgZvoL3I1VSEW8Ect8Ni2SnSY034=;
	h=To:Subject:From:Date:From;
	b=KMG5RvF/9OmT32rQ7RC1x8cpMo13gJRN9nbRm44IuqLpbST099p88fcNOpfTQNa1e
	 t4J3E90BYQhgHnXAFnrW+5TkTh/SQhcfg+L/0yFa7BCY9Y+bdTJelsLCdnPUcAOzRg
	 +0IFLOv50QFbvhPdV/qFs+arAesqTOujqpMLCGopzjLAnGLiLttgWRC/fCYeKl7Gcd
	 rQdyCIcl+I0dX35rwHy4WEQnhu92dLFbPuLtf6Tg+SOMqI5IgP+AAMdCOUm1uISqtH
	 lZNgW69A2HnmCOmvE6j0IMb4DzGVEDBaJmj3THR7Aw3/FJssZhZF+PT7m3uEk4EH1q
	 kiCJvSPaGqqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE588CA5FA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073663369.23737.12489598336118474353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d433eb5dbc3f72faa12a1ed2dc909da6d723090188b9f8e0dc7e35e42ab57625
Date: Wed, 30 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790736633
