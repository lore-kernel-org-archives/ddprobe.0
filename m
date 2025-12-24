Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE101F936
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766535834; cv=none; b=ApXxUiADh5XTxKHMFNF5MM6fgIYSWY733byDLC+f/h30N8oh2YYjcHar8RK9XNSJCGCYpwFOJdgLyUmOTfcLb/MeSxdvhufC906Pa3N+3V4yr0mZleRSyWK0KntClRci6bX0Cm6HSrhMNAsFa76iTyo6nj31eFa7EF/GPn0lh7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766535834; c=relaxed/simple;
	bh=JcLfz90xqoR31j3OC562h8+Iu3vBAyOTXH/1zMhe8us=;
	h=To:Subject:From:Message-Id:Date; b=RbQkWqW4bJN2bAdR4T4+dpJR63CBYsZ+qCrrOFG0hEfItp/bjj9brYLcrIecO9DLh6kLg3pJH+V52HYszusBMRXfFODEX5LSWm64tit1VB/GzDUpH2HUZns34qLjlXvqUT9Hkekc4ISGMYahVLJMDupLv+ho8RqR7Y6tla1jzCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0k/AfMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0k/AfMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46A6C113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766535833;
	bh=JcLfz90xqoR31j3OC562h8+Iu3vBAyOTXH/1zMhe8us=;
	h=To:Subject:From:Date:From;
	b=n0k/AfMomemwuhFedTrz+6kpXnvfbEGfzAPXo2NnXZ1yngVkslf4I+1HyPMTfmkke
	 PH7Kq27u9FmP3lPHtv2r+d9uBy5ZOMkfTC1uwjuD9etQrl6UEvDJj9mIb7mhtcb0hq
	 77R50RAanVPDASEUMFxpnnXsNIWuBaVczYQ0Hd1biVtTQOWdUgJ6TAhfmWWwinpVP0
	 uEMZV7Ou1cj2rlozYw2qpcSRfncXyTLXqGNL6SVsSWP5wpwbAVy0oTRYveWcoBa6PE
	 PHP2G5dRQeycDzfAjK5UoKgTBaDGLIlOsDcKC4D05JJYi5zKzNHgIsVljoGCN/lez6
	 j3SGPACn8Hj7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5FE748FC
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653583357.32539.5486018611538952185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c522f4810bc1f0e0aa941363c3f4c17cb4bd9b4df87452c63ea5ea5f7565c9b7
Date: Wed, 24 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766535833
