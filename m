Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15631C0DFC
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711784896; cv=none; b=SBFFJLY2jJ9DEGxwtNHy82wkpVyp5jksGCWlCvgH6pXyJYHTBBfRhETU65DNW3WZRuVlco3nzck2A8RPRh0qZ4ZjDAUIOVZqosaAZ1xzgWemgUhWq/ONLPiTsNL+jERRVPjdb6BPadiIpoQUm/N4HLeFEK8PRm3w5h5NTKi9gbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711784896; c=relaxed/simple;
	bh=BSRfJcVFBdsUhcO9bsWdkJVpFPQqhDC11lbi0nMX+6s=;
	h=To:Subject:From:Message-Id:Date; b=et2YOETcUTWSoCkrQPuOJwF845NKCzVSfi2l9QZrMoNLMbRkFflU+i6JOk1+pXqkLoEX/G6up6F+1jULPGmQ868dXK7zv4O1wTy9F1p4GKRCttdRbK+ekbiHAgfei0nBhbd6XD0tnhPO3fhAvbPP3HUmrR3gYczQnB7cMYWDgwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5hWttH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5hWttH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86ECDC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711784896;
	bh=BSRfJcVFBdsUhcO9bsWdkJVpFPQqhDC11lbi0nMX+6s=;
	h=To:Subject:From:Date:From;
	b=e5hWttH8uxoQPspQyOx5YX3PtyFpnai3rYtqe0Tn73ojqBzCPashRu4g34vB8sb7C
	 6SQAg3uLnKFhZTHMrdAZWYwF/ApzqZntfrJJIPOpaIUebFTlZmTamakvbYlDFAns8Q
	 Roaa8oCpaMOVmU7Z9Gldtn9T0DZfxv+WtS7r9vZQqvnN6k8WRHTlQ8nbOZnmWfVTJy
	 Losa+AEA5HCWde7mmvWZsT1qlA3+cAGk/9PwaB3S9jkwMHKs6GVIRRbk5fLUIvj35l
	 TDNA1O/XwAm0LIOqbwmLl/8h/bRk8Z56oIOHcVBzOM0WF5sAZJuKp0t7Av0CZ5xjK1
	 pn1nLAsubWlUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 749D6CD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171178489645.7168.4906717895317071834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa89f4caf282afd5614990a4b43cb3a1413f86b43de7f14253f4576e85b02cae
Date: Sat, 30 Mar 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711784896
