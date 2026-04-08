Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3328027FB37
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775681134; cv=none; b=HSTeAU12xWa0ozpmY/FEBkKcZETkXSQ9a6LbnZ0sWYg9KIZM0bOUPkyyASu3n8Bkf1kr+HbUjZaJGNdjUPdY13hyPq8/EHZpALXIpBeg0YQ+sPFksSYRIoGiyYAHdeocCkX3BfgqSu+7ArMKDKqjJZiR2KFZ0Bt/FG6RsAASp8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775681134; c=relaxed/simple;
	bh=1kiJo+PTixQU3djneoupJOi8fVsf5P+M/bVNwtEhVB8=;
	h=To:Subject:From:Message-Id:Date; b=rkr4UwR3lG/Oj1b9bOFOkWVXCTufzffrdw33oa42zj5Bs06p77fYxNw5JNpDEzeTIAZ4/oewuFp/X7rdkSWJL+PD+2O75q5YEkiy0rASGCgN2N46akfxEuDBFj/pHpjAbcQzYIQjM//6nkNsyVIom6pVXsQeWrpD79FsftbIbaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGMzSTKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGMzSTKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DF1C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775681133;
	bh=1kiJo+PTixQU3djneoupJOi8fVsf5P+M/bVNwtEhVB8=;
	h=To:Subject:From:Date:From;
	b=GGMzSTKilFxbwSZumpM1+pF8SoFvKn/wxUXDiVjowJjdoxqLaiE26xIjKRRbwZJkr
	 GqvZ/of7GMUmrW1M3h1PhS6SppaALsfQXohbicDYmEh04J7S5R67n31A1xZgW5B0Oe
	 49wd21Jfjw90wAzgBz+vmwM73nPCNzMV84GnHEQgDgXjR0gogjExHni0/QzFfcKGyj
	 mqkzzg30SnShH1onJKLWmT4+UZqBC7dK0urfDdPoBhkkjJt1Azxqk+17XSzik1Q0hI
	 z74SqlfhdNMktm/slDjI1TegvPu7vhXicWshP6p6mxigwiEXxgQLj93fJYsl+VK/6G
	 8IS/hC5JgUJpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F2310FC442
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568113368.13740.15306341613698394326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b7de3ee02ef5731760f2dc5cd32c0613a8ab3c682febda220aadfa32a7d3a9
Date: Wed, 08 Apr 2026 20:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775681133
