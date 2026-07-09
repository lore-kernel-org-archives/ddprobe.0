Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3B22D8390
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783611514; cv=none; b=PeYAThYQb/5L6rB25pjE3mJIdZlESg8hrqjmLDef/7f+68ElL+bctgNMDOcf9cg0P7F8CNqDC88nefwWS47SLBX20w9MIFDzX41EXtTNe4ujBtDAvY5wgpgUzaDVittFIi9WLTTR4kSzsktXQ6YRBC4qu2lwDTumwoChcyscJ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783611514; c=relaxed/simple;
	bh=L+PLb/Rgd7LhE203zN5KxvESIMfUQwXnZ+lmWEVNCU8=;
	h=To:Subject:From:Message-Id:Date; b=XXOYBxqA5R+HDWV58SR48hSXPthOY/1S39PmAMUa2377j6In/nSo/TPTKRgV/qybW1mYfw0yTr4Lvh7WApT+5za0kidikdGZQgyrkRvH6W2HfjjfU7YkFoUE3vxaK3H+CfO5tUPRE45nLjdfk1cvcy7/fXw6YVSYS1UMFnbyvyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFk08Z0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFk08Z0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BFDC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783611513;
	bh=L+PLb/Rgd7LhE203zN5KxvESIMfUQwXnZ+lmWEVNCU8=;
	h=To:Subject:From:Date:From;
	b=YFk08Z0SOwGEN1cdS8IFwP0vGDuPbcQ7JWEqh/wS3VyRhOueamfytqjW1c3FLllwo
	 kBSQfjuPFz5DqiRel2fYp7YERElhXbzSdjMNcTUxJMnS0hVK5meqGYERESrE2x+OT3
	 4Gjme5eU0rkEQogMDGHNg8MAZPmlEZdCSgkDvxVmO+wpT/Qu4RDqA6wTNgzN8ulR6/
	 fo0DA3Aarg26QC7Zy2a/KO6goCuihjYqpCs4utr5ApVorqqeWMc/2ZNRbKgbkYO4+E
	 HorSmn7Ge/MMPKFtvZf6k0ekTa6ISS5fDjJfhKNtC5u/6qBd2eun2aaIWN2FBqVm8S
	 iMYQJWM5ZuuTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB5C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361151368.30567.15843919828684869379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bd5c512996a42108364cd963cb86ca256ed02652b68a8ecafdf1d9f2f7f9d9
Date: Thu, 09 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783611513
