Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB676277C81
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772408693; cv=none; b=Tf/GqNEscpBavmV+I0UvfgAVjcLg//AC6DnDq+MXfljvCmKbev69csuJ7yd3gnKtDUr24wUfLVIR1Z2WGtWlI6AYpHxTn13305Hg12AVmBKi2eDSE/EMzO1WxRlDOllVFppWyaZ8RzCmU0FyQRhlpnjztuHt1ff++MkkNZ7EKak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772408693; c=relaxed/simple;
	bh=XL+s4OtgRv5YWcF1cPDPtSY/KGKVZrp+PCRuwuEGhWo=;
	h=To:Subject:From:Message-Id:Date; b=PgOzpzHJFwIxK+pxqlB31OLFopbL0h0g/S29SbmjxKZfEWmJ1Z65x/n48gh35oUwnXXefoXcH1qG+5IkGZizUFJDy+u10C/DAiSkQSwXhayYyAtxzMqvrXAju3STTcJPxJq64H0HdQONEq4hJ1CQyEvjxvRzolNWJ26BK5bWmQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeG3VlsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeG3VlsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4ECEC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772408693;
	bh=XL+s4OtgRv5YWcF1cPDPtSY/KGKVZrp+PCRuwuEGhWo=;
	h=To:Subject:From:Date:From;
	b=EeG3VlsVrjhSJm4ta3YJs1cHgoF9ZR3i9XlJTIia5Qx/opa1EmCGklgyL+wr7twtx
	 aUBifs87apruMriBAiy7qb3NvxdJ5IdWBylA+y++/1gJHFhO9ufOMnp+B6wNfPNcKT
	 OkIIvPIlPmetBvJ0hfoxkirE3aR+RISaCpdrW/Khe4cfNe2OjI4zr2FgKT2ykuKr8Y
	 5/k5W3pi37oe4USD4V9s4SIo3VWgcxACsKt9X+Ap71TpBPKtgNxcAOMrIMEA4eor35
	 AA2vCgEpil2lV4gsjcAYBVea0zGOfIvL72kVjjPG11ZZxJbhRdXi+3MAY//varzYvQ
	 XhU1rKEKl858g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB4BFD007D
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240869360.29836.14494437192418932739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538874781590c1b7735b6c271da8d35e9169b699348ba26f838beba434333c31
Date: Sun, 01 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772408693
