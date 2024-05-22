Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7053913DB83
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716385403; cv=none; b=lzolhZCWhfVHBjmjkLXFR5FYeeWdyru8Q0D0Q2D8v4q6MiIIPhp/HT+2T6DR2uAgKJCfNzKXOKH4Yq17BRjla2c56hBA5iztySRWLsVFjTDLkcTrAz7d8ehfrwkzU/fO5yaZkwIdYprKaXxWz2FCAuqdQ3wfDtxqhQCA5ZfYC9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716385403; c=relaxed/simple;
	bh=CdHqU9quVyaoUpn7lfx/+V47pyHGt0K0uoUC/nE+F4M=;
	h=To:Subject:From:Message-Id:Date; b=r4lBymG+vKALa5FXoyUFs4PFiCKxoRwGnA6JvoVg4aAUf3RCQQXfbY5UjqOGnIwnfICm/42T778awIZbO8FiModXEkTYoS7kH6J0JTyUI33043zc2Ja0eNI5CW4NyJpZ7zd+v1TDelKQ2Fvopc+WR+Fm+8cOXj2XesIXjD7B6aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R999pQyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R999pQyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC161C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716385403;
	bh=CdHqU9quVyaoUpn7lfx/+V47pyHGt0K0uoUC/nE+F4M=;
	h=To:Subject:From:Date:From;
	b=R999pQyD6Ofp1AqGESG3KLCuv7NDhBLUeTMeWpd7hHVL0gnkW1NlqO6sbN99l2KpG
	 /mCb4AgUMeunaK8fr/F1vbuOR0J3RCEKWvBTsPy/rOA+zdP6Rt6ner6ZjYwsac+Ffx
	 uU6W7rsiDG4cvlltJmk0lST6/plOTgoO8+UTHBxlhNgRBl1EGSIYOLCOEWPtc561Nh
	 /1wLr33HaKtBguF2Zj7SBd7e0wwx/ot+l9ZAWz9dmMx/F7vaYGDnNTfncQimkfSi03
	 maQq8ePmgBZC3us2dlUUy+9xTBP3isds02SyNdgAb8fUAQGlo9ouMLCX+axCvu9zHT
	 NH4Wzd1Mmm8HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D554BC25B7C
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171638540286.28936.9170346817148070584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47e9a2b27b495e4dc9c6159b8e20051f1f71e418f404d521868e63a3dbda85a
Date: Wed, 22 May 2024 13:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716385402
