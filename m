Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F99531618B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767790435; cv=none; b=EY8toTqS0X53PQFkc/Vl/WmigYMf7GI7uqe1aJtANHymAgekkdt5/vptiDabN0gQDOKdbblaf7uJPAiqwXKy+gbzBp3TlfUSfNRC3hYmbn4sC5XHZqWMxblwTILtr3gs3bWBzYxDhRJf+a938MYWwENwBRF+z2CqrUWW65ovjVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767790435; c=relaxed/simple;
	bh=sp0ZWMMLDvibLcgm77VPbyyxq9EEgtv1oNOjX93Ds0k=;
	h=To:Subject:From:Message-Id:Date; b=i0QN0i21r8hkNvFJnzOuuii3joa+6s3kfF5PDUuo+qCTup5XSD5WW9OcQz8nGAXJaJ5dpyP26Yx+TWSI5qXKTcr1XkYAFdYMyuCYwjDzANYanRZutFd9ef4VTIR7J74YjaeP4bkYMWPtEhEadeLygLSctklGwduUBL2zmrL+HpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJ9e8Aq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJ9e8Aq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CAAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767790434;
	bh=sp0ZWMMLDvibLcgm77VPbyyxq9EEgtv1oNOjX93Ds0k=;
	h=To:Subject:From:Date:From;
	b=tJ9e8Aq+iPbpQd6XB3uylgFgLJsgiSCpSttIkhNE8NXiNbpaBmwwp8EJFre2e1uec
	 KKa4l7/oyK8VnPvzQedfFlCJ09+afkfoE5+TN7sUiHtBqLUYFRzLax3aLlF50xlXR/
	 XuxB5JrnteH9Yi2c7fKS6D2T/+M1ka9bnTP90cmhkrnes2czoUeevImh3PipVKkB4N
	 ThXjitZVvmNqF4JS8vP4QdVKPBi6BTDzANCd/M818eSTrHXsaZpDD5tFS5f6ce8uI+
	 XMwL6a4GxLEv1EZ/GwFiriy49eeV+2uoyTZrvH/IUaiPjsEK3vDJ1aNdtIpDuHTiD7
	 GnYl66lrFtPqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93871CFD626
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779043357.24279.7827299642868174363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9f84e95c5cf4faca91f286aaa3928d02f5c0a1a3c90170cbb5aee3fcde8511
Date: Wed, 07 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767790433
