Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAC8442B39
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790428834; cv=none; b=AYpqBNp40IkiCp2741IGK5+gcSxaElEZOTD9IMjsECSaRguuXldK7zYSEMFXQAYJ8ik+tWk6LAE8A800TCBoR1VwkifJjzzlTxtuWgcdtw5q8pyD6bY+fdQ2samGh0M9NrE89ssmzim5sr3ZAbMT/rYD+JJ3yktL/N6H0XuvMhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790428834; c=relaxed/simple;
	bh=t2oewxm8rziBVjaqZkFquCYaNcr7vOr9YwA8LYA73y0=;
	h=To:Subject:From:Message-Id:Date; b=ODG1/SmQGljpaxluZIjyt0Fp8n4cEc4OfspOHxTphR93CPQQCND9kCTopHsa4dE7xvV3WmT7Dmhg7c0K1sljUruPoDu3+JmUTLWPEBlT9UbkIf3blR4Eq9eOK924f+R+10OCXDkG8weWsgCeRVvGgoHvfvQGKMtw7TpG1jgvcGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8BA22G4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8BA22G4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD33AC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790428833;
	bh=t2oewxm8rziBVjaqZkFquCYaNcr7vOr9YwA8LYA73y0=;
	h=To:Subject:From:Date:From;
	b=t8BA22G4NjaSZBNwA12lMo43KMonpVm0tdUH/8RUiYys5LNW2SozwRmUAKQWlXwhu
	 8CRevwcwvMELmUuB/6Z9jxIRY4B8vrxrt1XsFG4jLt8bM8COvDWiW2UgWO/SagRMJ7
	 KSv1lVTJikVlWNbK9UptNSvCS3pATk37cfg0eMCM5La42mwvX7DXAEfgHz5LX2T+eW
	 BqCGzfvHUyq0RN/HlyLjkTori6m5c6qGHzzjxjyj5lVLxUmXjwMvNCWPZmEEZJ8sPj
	 81rOzwimsxUblDuw4uAav1HVexhTaIFbWGT3tUZmOpX69aEgjlqnAl1EmXkQsB2AWt
	 TqlhIjH62XOsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA71C98332
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042883368.12945.13965494201500119187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01d30368cf07f7e4b37d6cb93b086516cc654a2fb222df62a5e3c758cc4a975
Date: Sat, 26 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790428833
