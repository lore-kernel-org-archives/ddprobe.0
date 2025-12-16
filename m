Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143F21FC0ED
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765878834; cv=none; b=Xho8UdSTG2PaWNYVhNjFMHwtiz7/zuncNijxmqrV1AL4W4iYDGxJ50Iwe0hjNrt94qLc2Lie9AzJnAI77ro9rNHwP2gBMeu0QtTETizvWJsvE+QDL6AD3AMfZwRX2M6jvRhc/dGuvLnu1JWiNeQ8L6Xg17TY0AmMjMZieKaMCHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765878834; c=relaxed/simple;
	bh=s/86FnzdZRoOcTxJm24z3VGzB3MdKI5iyY6oKz3z/hU=;
	h=To:Subject:From:Message-Id:Date; b=bm8UWqQK0jDb+y4YZT65bIHQZw/6fdN2lQtkg1WAyIKdLt1HmhUtETfrQERiQ3XLREWqG6wWkzkdMhq+9KSg7cZh91J3hxgKni9K3c50RrEkcK+bTEFtaZE3yIXwm7fMvd0VM0G3k5fvecuB9fkdcADNaZkw/8YqQ14AjbREh0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/V/nEsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/V/nEsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D992C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765878833;
	bh=s/86FnzdZRoOcTxJm24z3VGzB3MdKI5iyY6oKz3z/hU=;
	h=To:Subject:From:Date:From;
	b=F/V/nEsC9oZqxYe+1B2p4t9bR3qoFMe/UCSTJ/N0Ak3ZOHIUEfOMG1ix4bUN5GekG
	 GTf+7XiPKccOlioQT8x06u9D0yd0xxkTg8pEM3FKtfTYl5a/t5VuKEZdLkLqihF8mf
	 semqre6xWbx7BNgEPMPIvB0Av5I/ua9mLslpdCAb1MfUwfAsLSUf5pUQ8UhnFAsEnN
	 06SmCDNgpkxEWNLLVTF2ekr3cDWItCfqJCwRZFEkEm1vd6/8qhHbMOr3zLZteJ8a5m
	 nQddJp4DW7s0Fxsi76UJXc5X2d9nq9VW0/8oyYqPmX+6MbVfKQoXR5sW2MMkVSYDUL
	 meyeDUNzQOz6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8FD5CCA0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587883358.25527.14659281176786812294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd3a9061ee959386806c73967a540d10514bda16dfba441693a0749d4c2a696
Date: Tue, 16 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765878833
