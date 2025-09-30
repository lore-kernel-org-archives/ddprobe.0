Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C971F582C
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759234794; cv=none; b=VyxXg8r19NoK8YmV4/rhHw+5Wgds6XNyGb8VfuJwdJBnU9Rnf1GgZ5XGuzmvEQ59oRNa7S1p6EpaPi0sRckzeU2pxyUpn2LXRSYopeLqv/1IrLQk2EUD46jLqapLz0GX8jksxNkAXJmJUtjAeOCxcyreDj86zNUJ6cXTaP+Ql9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759234794; c=relaxed/simple;
	bh=SgLImZB4t5l0n3FZleKwuChaRIK1e/3MmQSNguo9GxY=;
	h=To:Subject:From:Message-Id:Date; b=g4inGrF7+lfA7ly1FetQ+WFa1LWPWR3mBHwyiHlgglgS7C5MBtN3i3tb9PUFQ6BtiZtB+Ku7deTfW3pHB9kNO5avO7KubqwNwOe/azft2JnyE3XlBgz+ZAPP/W9h+aJyekNS3+F3fkQkn5aLUil1+wHrsuXz3BH6eb25lcGLjvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib+ZWNZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib+ZWNZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F57C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759234793;
	bh=SgLImZB4t5l0n3FZleKwuChaRIK1e/3MmQSNguo9GxY=;
	h=To:Subject:From:Date:From;
	b=ib+ZWNZRG4/PwI6ycps8wqg6Ji/rZdni/p1BEEuoP+uLKLZDkNR+OYLx6D6sFpWf7
	 PLZLcuhVWfE4f3DUcmNww/r0rEBIO1zZxIVlkQlzPJ1ay4RWkIlkV0nmUOt2kshVWV
	 MXyBp8tk0Tu/C+/aNQeS2eLQuafTNbcz9c1jV81pJACtviv1b4kbvACUR+/Y5W9z09
	 2n1+aCgAbjUhTer/5hq+QnW/qc6kEPm3tXoziNOvBnuuvS0s8iffVyzAnsFrpm5XL8
	 bqygMowPCo4rZQ7L4OgIToQ25AP3OUUa/0qi2GcRpvCjgbLHzzqXDxZ+h++FgjJOvk
	 vkIApIUHLZOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95268CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923479360.2193.17430167685790645239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35191c1215f63f5b414068f803df1df84bd851d9a8635a597749b0b4f8b7d22
Date: Tue, 30 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759234793
