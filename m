Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E35339386
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791741034; cv=none; b=Wc1rEfqCC0HGzmh8rmjEwrOvzylZphY9teu/pfqHIPYY4qXnYC6ch6r/sp0wUmLx3trpejRmdgqfm95TpGfE76LsszdUkKiIQ5s3f8Mt5CGlTPTGsxnccvN4pqCr9KdIAJJcEbWWupO9UjkjyuZVBQKM7g8iJ3YPKlzpkv95I/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791741034; c=relaxed/simple;
	bh=3Vtx8hf3QHN1dc1wfkIVFWmQO3eX+rHj0a9OGwadGyg=;
	h=To:Subject:From:Message-Id:Date; b=NkPOaG7K8hlehk9fKZURjMFuS9lLc5N6THxay5Owg0WSOiCXTYtzXU+BYyY+j2cZQCOXcSioW/AI0nhIajopsh1+z/zDgHBZhDXuPd2sosxaXaGEYpYQL5QU6VDJQv8QVxWTYlgjTvCupfKStdtNTeumneZScZqk6h0pr5sFNAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouGE4eFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouGE4eFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AECC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791741033;
	bh=3Vtx8hf3QHN1dc1wfkIVFWmQO3eX+rHj0a9OGwadGyg=;
	h=To:Subject:From:Date:From;
	b=ouGE4eFl18Ogisx8phf0i21qswZ3aSch98T7m2aKZZqVBSqe7T5ozLxgHkDpqTAFE
	 86e3U5fdXKtqZF20L2yWPwiKd5DgoL9dcNUKdBxGqBI82aV6klXiAzY9LiYiYj4p4D
	 BLwLvHiCMbFu45ihtzz8APYTxVGdR73sC9aKR1dR60hiTtgwAhv5/f7RhdgmjKlzD5
	 qnnNLkXPmdbPvOGc7eVhFSNlseLy47cA7JHQDJllnt4odDSlj0FY7uoHowVl65NZWy
	 m2XT6Mt6caFnJDEW8r2/L1tt+HMhlNZN1U39VH1zqRlYs43JwTx+CqeGtwDAzkG9fZ
	 XjUTjZwxsbKzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC62CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174103368.1518.7396343279246218963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635cc11221551a0c9b8f3d84ba40d7e9b12d7f845c5def08f8cf418e15b63d44
Date: Sun, 11 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791741033
