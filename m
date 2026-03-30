Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BC13B3C00
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774866894; cv=none; b=CG9YkGSqo54b4qlC/pYW/yKQ0dsLnG4/0XhGsWMzYYcWzXTyknAdsXDJOnI1dFsCGg3uj3DHfIqR0uLjb70l7g0018irptXfYNZ9WQvLAFYg1lYmE6OKYBYYVWHMCXAru2P/ooa1LEYRUUrGq+gnNrJ/D7Pq5oX1HdYH7xTfC0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774866894; c=relaxed/simple;
	bh=cu2iGeUvU3zuQ4ihrr6jkQ/Bq5UbrVtB4wjCJFtjM7I=;
	h=To:Subject:From:Message-Id:Date; b=HjrsNkzsf0Xe/plimuYIJR5IE7gftk0r3YUgvD5Ee2WTWSPg0ZjIgDko0WTlAnauRGmC7fMydW1VRNjGjpgH8rUdDIjiDE560uRwlvGwvugQ3nPw9MUvezkghuC65GWT0zalQxu+pro9IMFnkYeZNhn45b7L1SL4wTG+CO1kjqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt12Ze+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt12Ze+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774866893;
	bh=cu2iGeUvU3zuQ4ihrr6jkQ/Bq5UbrVtB4wjCJFtjM7I=;
	h=To:Subject:From:Date:From;
	b=Gt12Ze+NvRLXh4cpQCKAWEjoS5PDHACzDYndGU4OSR1ZDl1LmDOahm1vofunyS3eE
	 MgGNfnapishk0TJyK8MFH7mM2rrDlfCJt7byl+wdDtuxktIX6Ekgv5PqhKR3gosg0K
	 AjnRPa004Q/kenQxjJqhAinjDNeD7VVr/QlZnZ+MjEoAKV5fIgOQ5SllhphsIDZhjY
	 1aqnTAMTRpT5nFICauwa8wtX99RD4+SyKX3qwSiEGMHw9vbIGmrSkEz6Gv/7xsLG2t
	 mtOAk1axznGxDOh10b8qO6Pjw852V/86BTRNsRk5YB3nqIgh6/X8eSS+FfhGBWvERB
	 CANXpReN8X02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931FCFB3D02
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486689359.4430.11173113448396577200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0122857edb994a7700a27a25c81f591b566b1730ceaf482ec42f6464f1f7d953
Date: Mon, 30 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774866893
