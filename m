Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523612110E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735764354; cv=none; b=AcLW2obBgZbUSldUZ0CHZ4CQR+oIs6ww/dtxkAeBk1fCmJa6770fEEI4m8bLxb4vZzJce8dlONQMn/oQysrmu6T/n8Q3k4w27kclKmd1Ok9cLpB6Ho4cB4s9CT0SI+QpgwBdP90pTcdfcxbDV52v5lxDUM+GgWDiwGcc4DbJkiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735764354; c=relaxed/simple;
	bh=ro3KJvbopUtFl0FvFZ0faOm/Od/kFO4xi5tKPVXSCNo=;
	h=To:Subject:From:Message-Id:Date; b=U4El90nxZ0HOF+2mpfI8612DawbacvF5lnRiYKJsdHERwbw8x+BgdctnKoK0zlQxeaTwHNeQGevyQaNLKl9LBCS0KLVhCbg2Pbeur18lMFAVcTrybeddfLdReiN3ZHzwuK2cPmrKDDJnOd0D1SUG3mxEgdNSBvZKv9UG9t1ZzNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7HH83db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7HH83db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61D2C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735764353;
	bh=ro3KJvbopUtFl0FvFZ0faOm/Od/kFO4xi5tKPVXSCNo=;
	h=To:Subject:From:Date:From;
	b=n7HH83dbOtIiRKcNJNIaSUwB+LZJcgBEqEfPyzunl/9ZDtchAtNVy/L8Eked7NBmD
	 BnEaffoE6pMSHPKQARPeFZOA/ScVwSgKWn4I/TQVYbV8U0YPY3jc/MXU6hla7ZoZTB
	 U1cwrsRrVqm+mz43mOVSuQjKjYU+TyW9LeWQwvR1H8E1ViAyeC9dUXz5CS2pJx8GO5
	 EB0iwDJ8uxB8sjMupQcWK6IWlUAMIlkYAWminPTbtuz3R5zW9Rt9rB3C6lH5FKpvMs
	 Y2s5KQqVnZmH2CDf4N4eMU5n7u+m8tGUD+xEdqlUwY1lpmoGI6uWpLIBe1Ii83brzR
	 mPo7CdeAofv+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90929E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576435358.5955.12108523781545072751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5b265e30b142b7dcce163e5625fea0d22b5ac9e044c1dde6b0af6961904ff2
Date: Wed, 01 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735764353
