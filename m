Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284FD21D58B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763616714; cv=none; b=IZObGRrZojQmmQydlBJkzacwt7lEt8SuOKgrAh6vL5XwUcO3vp6RWjZPwwlrxOqReIDghQbxbD9Ed7lSgDDzG/Zh6V+jn3/XPzJcY5Yb8FKsxPRV4mG5tvQwTbT2LtHit6etS+aDGr9pCBsjmsS9SEFFi2kz9rRB+9WaRs3/lE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763616714; c=relaxed/simple;
	bh=AZHDP32UE7nChVMQw3UMuPslOhfNKp2MuQPOy8Apnak=;
	h=To:Subject:From:Message-Id:Date; b=cBm82jniLLU4P3cbwtRm0IGXNGjGsM1DkOo7I6aKhxJrFmbGdmOG/dttUa6v7YY1ayCjTLAwZkA8tNicnh4XOkH/kiTxrxsLHN3j6PE2z7XsTmQXjwr/kqfpO7ztTeoqnOSdpsiV0G/4zJy+4pIzW90O8zHH9YKDWW5qw1/aIRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNycfuug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNycfuug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4706C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763616713;
	bh=AZHDP32UE7nChVMQw3UMuPslOhfNKp2MuQPOy8Apnak=;
	h=To:Subject:From:Date:From;
	b=JNycfuugpUF1iTQWSJYlGyjv3NvBX/Jpl0JB8Qj2RCKbDKwnBtEBZIF2nOo163H7R
	 RbZ0C4SrgOYBd0FB9GZlCPtA0qW7Fh0qHzaNmBqlPUTtZQ8YiCNIvqr4RECuXxA1DA
	 SIFDd4vnsNrQSGnn98QNdoL2ETXvp9scdpxfC7duOAJ3kvVpza7zE7wqjOD8h3Uzc8
	 YrugjbXVZnBkpAn7EijG2rw4/b8yPMTPP5w6dPtwWh6OqKrWKSF2ERdo98GINnAeXd
	 dgWktCA8rpqL8xbsm92cnModwj6wcxzpDT20JBsmBnw3dLUFz8EUs5zLmxducd08Es
	 vgwgfYOGkL6xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226ACF64BB
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361671359.30073.14850551427493696724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99bd2983fa24b4d61bfbcf38deaca8be8e1bf7125cf389a0984721b82d4d6a40
Date: Thu, 20 Nov 2025 05:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763616713
