Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2410D3E714A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779097234; cv=none; b=ERCEWjNFTv7rUBZ+W6yZTFHeXgsrLLs1hWPK2GPCtXXNeWVQs6yYbbXqI30eTr16Otu6wrjg2NaxgYAFkTLrQmRYu9pup0cKXhdeIPtXFOHghW/+PogYMhqPDB3YJ7SGQtRJiRhfrnJjb985U/LrZvlqZWU0Da5XmTH9oXwBuzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779097234; c=relaxed/simple;
	bh=tsArAreqI1K4fIw1ObkmG3+DJc18GHIAXfFMXdnDA2o=;
	h=To:Subject:From:Message-Id:Date; b=DOBeTj6stPMlXr2GvlbVlBFRQXUR3rIYEHw+bLkvAhwavomK+NFMGQSni5oirzuu95MG4X7lQSVq8JjlNOPLj9oljurqyHMK8uhAoM4OSza58xTYytVqzZreNDFAyGUaqwM+aXbZH3PStF1snRLfZbzkXNL4qC5q7/ctwQNNqtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udTzRntP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udTzRntP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0D0C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779097233;
	bh=tsArAreqI1K4fIw1ObkmG3+DJc18GHIAXfFMXdnDA2o=;
	h=To:Subject:From:Date:From;
	b=udTzRntPqy8aRacNgWAKVIZsuKrkgdsYTkpO8cnWI+Xfb5+YYhZHB5pV8xPIW09Cl
	 pOqG/ISRKcC3gs4pU4rB1FP3dcbbXGiLvSyblBzXPdBeUubsorKl5qclODQqtHEh57
	 ywz2F3gAaQZxtzAJiy36eoIRzFD0QDv3yo3wEPCwfj3Z9CcXcxrZkZYRMieGfJ9FbH
	 a5cyf2IZa1gQSlEpwciBinZOJszCa+WvAQXcrvhExeP7yGa1x+o4UH1iyRuUgCpT+9
	 DeqiJMoiYX+AAqBm24GE9dXiUxw3PKbDvk4HpQkITpDZdThkXqSbbfpcTlpQzsWTU0
	 tiZiKAfKQHG7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6E4CD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909723370.13821.7289738716276139293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92aecc2ed7b4888ef65ac67eda22b451d58ae6f1f45a2de9cf484b5efcf6647
Date: Mon, 18 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779097233
