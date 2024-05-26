Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E4EDF42
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716719663; cv=none; b=R3YPFbswsrQNFz1P5rFrYK1ci0iSYVnIlL5hvCwRUtuyEizKN0eRUuHm+ictNB8to0OfbeTWonVa2OFV74MUlrRdPYHyOaQOsPChdK/GA4X9p22bsqcD7tTMMW4HLoDeNGNsl6fuK6RLmazJhk5kFGfCOCn3blaeI2aSjh3rNuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716719663; c=relaxed/simple;
	bh=CFyZx7S7i1TUfKZ+MIVfaVYyA00KCZ/0nYNfZkrbVT8=;
	h=To:Subject:From:Message-Id:Date; b=WYzCn+XmmgnQa93PDauORtQxOq6OaOj1Hq6PhVZlkyOzRL3WkIJdC/awItYxk54kfTDBq9Kh/XDSA4J/fjBv3Ya4HbX9cHkAMXCfJ1qbM6PC00aww9nTbvypmlxYH6bwWSS0MEZFoHKFuwjbFRSp/tCOLRcUEbsiwLN/isKNKKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=in/srxhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="in/srxhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E719EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716719662;
	bh=CFyZx7S7i1TUfKZ+MIVfaVYyA00KCZ/0nYNfZkrbVT8=;
	h=To:Subject:From:Date:From;
	b=in/srxhzw21ZHcygvYU1k/EMkdt+lgWXdQ0N5TaGRGkT+6V6ackwcPBWb4bN40iL/
	 qNaw8O9+hxUfXnSpqfstrRPrT9/cSfDmYqkyt12/3OlwP+xxpbf4TgFlxfwtlLr1nL
	 y/kAwPDBVY6GkNi8MIQm8ozZB4kcgwqNAN96C/0LY4xafGQLSXQ2ZPhKCSUOFw617G
	 waJ9ZsubUiH3TaejJ0R9J5KBc3Un7qQyJxcx50h3Du3plPU/vvBjx9+7gt2R7dbNvx
	 6XJC2H4FU56voVrTeeMYrveyatQcq1Pif73RfbAhqIHhJVoV3tgeiVKRcYRQcP9T2B
	 KL8j7v33hFCHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF367C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671966280.4466.341113696321243531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e508a8368c23ff6919267a053e74a860211ecf7476617a3541a4ffac60b0fdb2
Date: Sun, 26 May 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716719662
