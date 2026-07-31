Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC7B348C7F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785533434; cv=none; b=cf5IUTWLzIZvohSBXiPGk8yiNrBl5Q826NwMA1AkZYEIQBIWsaAKFDTGGe4VJ3xpqkn6lsF5XTeVuPgRVj1BTQQn7o8VO6OG/E+s+6zpcXclQH6hVBpMznEMUkXMnZPFa5yUU2Q6PO+5uUi1/a+D/yBWgvFWcX0Yog0sRiPxIpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785533434; c=relaxed/simple;
	bh=ErpFORYlzOKARYPa3NiAfg4T86dKRAZarrUJBCAli40=;
	h=To:Subject:From:Message-Id:Date; b=ffHp/jDlxBi9XZ3iFR6OSkAZ/xv0jKREDfJqvTXl2/5JwYO/vzQCS7m+XIFnPbTQhfdXM52rjrD1osT381FScwOdS0O5l1EAcLzp/d8q6zra/wSCkpReMY6CkKrGaMaCEc0M2/C2a9Ds+1GQrXtIFKJ6r0iqejbxb1tVNouUxZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dovt8py5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dovt8py5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFB0C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785533433;
	bh=ErpFORYlzOKARYPa3NiAfg4T86dKRAZarrUJBCAli40=;
	h=To:Subject:From:Date:From;
	b=dovt8py5k3NEPhi061sEOh3ULCNEG0Ktw/+BQS6OZLaYM72MIVf3sdvJF9FtJzfGT
	 GMMzPMTyGLYqN4vfD+huL/YLd2zkqVfpCUxs1on9/Fw/XnWr3tEX9bWBFaXu3lbUrI
	 hN76BClftSd6j2mEJ9cD4/Qfow60xKUrINz/v7GEqzNrIduHIY7CS2oWjunZq/jt8A
	 1OeeewV/RvtZBvARjEY2qLawP+YVnt8TGe+AKVvjHGc2jkjJUawoCOHjI7OrutDKhZ
	 p7WCD/VG8ZsMkMVQcrAlCV4T9JixkO4mmHBcXsgZyHYyR7BjhUYT309KCov6Wt9vMW
	 sEhsMHPqNlFqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE1CC55172
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553343368.9658.3810727812297628522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7989d301a6bc387e3859e6277f983f95b51659c97fbd817ef8e78c3a30f733e
Date: Fri, 31 Jul 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785533433
