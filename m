Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD5E4CB5B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773623094; cv=none; b=WXMFP8YgTm2orNYdQ5Np3D9a4v+ODuC7O6PSxna5GxaYwzYHbOW13gAHdi1dzOePta0TwgodvzrpnQRzxcnMMC/yqnAAscRr/a0je+ht09syPMVa5PX3r1D8NJ6clmKafatduIUXHBp+MUwm42dqFqZme5X/flqw1jns7pRcVCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773623094; c=relaxed/simple;
	bh=kMpfHiuJe8TyZ4J3E/6T1c25OrO+nRcnYxmhq+8f5Bo=;
	h=To:Subject:From:Message-Id:Date; b=dGym7a4DEYCIxyJMx8Z2rLajLfT/NbYmM9/F4HBsMoDA/NrWc4b+PDASTqlkIWDYk3lRS9U1qmlorTAcEBJAVHnQ5H9NKifSpcUlsxvrUPUgENyPKSKF8qKMpIhZm4KGIoOwaY3FfV8rUq1YFIP6FA7SXbVYoRav0C2ACGrqlkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDmx4Z/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDmx4Z/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A943FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773623093;
	bh=kMpfHiuJe8TyZ4J3E/6T1c25OrO+nRcnYxmhq+8f5Bo=;
	h=To:Subject:From:Date:From;
	b=TDmx4Z/85OUyfgj6DLw+ztySRSAHFzBxL7Cn4+1qtXhHDKT63hl/fpWsZiz72HgI/
	 WCkdYG24283dD1ZRz2n0PTgldYDVNJuORUnEYYY+GliW4jHg13DotkoAxWoP/LCrcD
	 Y3tk2NfQMq/e6gTUogjDX8C9xEk2pjRPSkT0d1Lh5lEV05mKjF/VBA9xzsPPTUk5Y6
	 /J4KM9HuVRic+X+cHxkkRfiw7E5M2kVRd8cWDGd7kyUA3FwTaTRF2C10WeY7zmwPh+
	 H54WjyZxYsWW9K33bY6ieP0K0O65BsHlpom62gCgEwuA/OdXLKgfx5gyDuXqAQnK77
	 eF0bntni1tC8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F1DF30296
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362309358.12141.5397602380102353823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0b6a002e2566966c1b1f5f1c4613c84eaada6f7df71d5a1af49e73458c1187
Date: Mon, 16 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773623093
