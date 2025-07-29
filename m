Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D68293C60
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753804794; cv=none; b=BDYblLqLoyW6wOnQtnUq+mjYHQQysfVHd5MZfU8Lsz7Q7DuznsiHJzqgUcPnKBJ5WKBOv313txqeeiLY+0BF0E0An0bUf0LakO93oGgPGp9bZiTGleoNGir9pCcVxnjfY+Tdds9x1BffSY2XWuaVd43XAiZfJRzv7rABmMi9gSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753804794; c=relaxed/simple;
	bh=Wr6A6HWqeeYhW/L9a6qDab8Sy9mIoRS5Sy9lIQqkPkY=;
	h=To:Subject:From:Message-Id:Date; b=RAf+/HW1j4zDd6SxJrNfK0C9UOAx2f81J0UAcpj3ruxEZyQV70Vm1GEv2XfG+atnMqs5qM+SZ2FgC70Roui24UMw4ld8KVhl+8oYYXhfsUxMCwdt8wwu2dvk6qimxKU65u7b+8mGdtbChxYnFsLp8juh7hJ2TB3iyhlutBiv2Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/+hiZQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/+hiZQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AF1C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753804793;
	bh=Wr6A6HWqeeYhW/L9a6qDab8Sy9mIoRS5Sy9lIQqkPkY=;
	h=To:Subject:From:Date:From;
	b=u/+hiZQ3gKDuTlC2DaRrOhy9dE6JkBSn/FvBEKb99Ju+q4BxPBGsuoM3w6FPdCmkI
	 DOwRh7A8tiAk2UhUmcxKd9bO62NfUAy76Wj/a3LOUu1ziKcvcrIhM5BD2GqEwE2iCv
	 iEQA9RLGavZ1oJXSOglzbCqwzvwrMrvoDBwMFGdF8JhJj37M2jGlx0UqF6XwNX613+
	 VNNZiRfbjUHzHsBNP+xtUl1SnR1cAylAh5taeuvr5CzGwpkMKa/RS0bcUdJJ4r3T1w
	 TQlP0foEhl67wn+1CY2OsaNkAg+zuq4u7+fnF2Y7P3JhVZNZyFHxb3pc6Vs7S0dAjO
	 8YEN+sokFxKRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A6C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380479359.3237.17730007275402392257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153617d40f7f94313e0d58d1997a1cc052d6ab50067f5c589e128d396f362c94
Date: Tue, 29 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753804793
