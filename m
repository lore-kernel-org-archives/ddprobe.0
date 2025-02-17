Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C58315382E
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739778534; cv=none; b=Kj/5SiFqCOvK9zTIId6ENT3QUlIO7d18AwpTn397daG0nOvNWoR63kKuU8TbvtBTqs5DdvePsuQQzF/QbQJtpXCEEoG6Ki+zuq1lTqMAB6MMnpNux7BTN1ly4qKjKYxpHuG06ji+pxGSb1BPOEVj/pr7zI7SC3+c8QjcVjuAGA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739778534; c=relaxed/simple;
	bh=51XHIlgbOVtqJqYVaue6fCT6m0q6eV6v8drTs2MErYY=;
	h=To:Subject:From:Message-Id:Date; b=XmLNekfWRNy5Zr7t1SWywtW+HiZApxCke/rbVRitupVYl0i95qk3lZbPdrqXHcCdCbxB9F+m51Yh6qikQBujV8NJ1zw7LYnHYKFqSqaipQptJhe79YzMPzrD4mgsoAnYpi5gKwzOYR0/sd9mvGlUAfPNZo5O1ZdN/SCVdO0z3qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMmx/tKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMmx/tKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC2BC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739778533;
	bh=51XHIlgbOVtqJqYVaue6fCT6m0q6eV6v8drTs2MErYY=;
	h=To:Subject:From:Date:From;
	b=bMmx/tKIKOVhPFfUHzEZjuH4Rx+R96MgvlADBW+1oaQNmEN1UukB5VuRjRHpaNjMs
	 PR5/pJhFrQRBqfwJBvJqzJk2ALSEu180Bg15RitJq4iJ7YUV79DMRooaAKjdBLfMQI
	 9vaeJpY23TUqQQ1MrpvfhkQ9qOj5yNmNrstDCz1HdpD3L4hcx2tNoWUeNB9qzyvCyC
	 8+2wmLeg52hZLQPc4ds/ZCxRVfrsR734GWF6AKH9DlUJn1gdghlIvC/l/67SpMC8WU
	 m8URmZ4+fhHzn3VYTevT9tEZuNms6501KdyXbh0poLmrxw1Ihmf090PFPNM5VHmHE2
	 +IqYZ8FGvngSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91892C021A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173977853358.28315.18224102681948765400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637a91b9d0d86270260550cb22c0d83c8f1a3baf1dda4c41c7a6f0deb7bddfd1
Date: Mon, 17 Feb 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739778533
