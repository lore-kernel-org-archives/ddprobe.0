Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACEB222580
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789762234; cv=none; b=tMMoNf1ejR56DCoGQSap1XbZnSfaQz44fFEUsGSXbJFSeYEUUtB/InHs3wQSVPjjUqsFA7YlhjjyA0k1JKuz6wWWet8yMw+yC0/KG2cwWpraF3zNVusPBfxZflTXJWVswD7YO0PxLjA0jKfJMqWEPWlXa74HvzTxGVpxbTQw7J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789762234; c=relaxed/simple;
	bh=afZPpusd/cmNqMlo6IUXa5P3TeN5RMzDoTMwYyS2VdE=;
	h=To:Subject:From:Message-Id:Date; b=eBqIMcTKfQHvqLQEJc2NJS2a3jDFNgvHPX5JMxJ/Drfz7x5JOKleZTQ+fyp9/POd7/W31snfkhvNDJ5yLPmGVTeZ1i21ZJp07u4N6R2PRaNtS3nqxeaQ3KFA7rD0TyQQAoojTH9xCESKHCQOfhoJXs9oz9R0mng+MXaUHg0AjsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQ/26Jbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQ/26Jbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4661C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789762233;
	bh=afZPpusd/cmNqMlo6IUXa5P3TeN5RMzDoTMwYyS2VdE=;
	h=To:Subject:From:Date:From;
	b=NQ/26Jbis3TXFepz9G+tLOh6Zt1KT4L2rprjtELwSmmnugQm/62FzdUS05l3lu+jk
	 qKfBbnP+cpbZSbgVvFVuTNZtyAyPrnwLlSNCXniDR3d4OqFaoMSvp0i8Mlg1C17ncA
	 TeoEqPa/WI2tXgBBo+b2KNWvjsrv59Q5mvPIlvoi/Gg/9Qx8bsBV7HtrzC7FC3YRM1
	 rX+hMpC3bLPjtRwMn3JqQmOMn7iJLmAZTCI0xlKezu9KhsHSvEbLRR2rKhPjEyxxh3
	 dGGcL6Rx3iuGl4z38EXm28hF3P0N+fYxyaqmFhQ1fooMFLeC7Dd/j9amX2N8A+Uv03
	 mP0GUtDbDa2eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD9FC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976223369.19676.12118382206163104104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7d3bc72feb801f12ed249f130ece5e6121984aede6e46ce55be69c4f592d9e
Date: Fri, 18 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789762233
