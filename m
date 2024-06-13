Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1432C142648
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718276303; cv=none; b=X8k9PHsYp2S3kM8/7YtBRQ+WsgDvgMyFyANkpEltIu5d2hh4fobrMzQPWdDV82C7g8XIhTfrw/Mbn5pBtiXfg1lAMp1v4Hv7gOKQBmNhaGaMMExEPfkXpondXdr5sLUKr3bBLKb0IxTX7lx9yqdGHGzSRz91EOWEvH/QM29vwPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718276303; c=relaxed/simple;
	bh=vqvc5CfRXO4bNWt1gIkkyo6oannybrbt1BiVBdv4uZU=;
	h=To:Subject:From:Message-Id:Date; b=cUX29pm1ZFJj+4p7i3WXXbcJUl+4Hnv9QGoJG8f2B1zsrGDDVU29E7bi6uuUSGsUfNtHAgwmq+yZ4AlbilXmIySIG6sGZzeUP/6dGK2oTqtXTLBLkXfBdKpDHf1nHESjD5uwviZHMD9bTjbN7b7k2u8mO7yrqFNeOgo3kQI44/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fv6z3IJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fv6z3IJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1D6C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718276302;
	bh=vqvc5CfRXO4bNWt1gIkkyo6oannybrbt1BiVBdv4uZU=;
	h=To:Subject:From:Date:From;
	b=Fv6z3IJZmvDHhjlzjn8hnU830iaLG9t4LZ+QFWQ+dfQ7TH8empugaHJ0HECFoaFpY
	 1yfID9RN5WVfBikoF6PAOBdnvuSt53/PXGPJA1YnFz7j9B4bDjv1/42ZHosz7CShKr
	 uvF+VlE3clI2jVYjwlXGLwl01nDmnYSPx7IDJPovJ2msUjM7x8raxnqYb+X2Wkt3iv
	 XFn8a0ZqWkO2ukS08T/D9Is25eBcsWogUse1RF8uU0Haux9BtH6tFRzUZa/PayeeSi
	 zOEvv3HUS4ghIEaKkiB+H/keJ+NsMDpUZuAOPiKSHhm7fEELva6yOD86380CRXwNbM
	 aubgzNuzY/MnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8081C27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827630280.24364.10424800833517064185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabeb64871b1b91ff27606c0237332446bac0696258c3cb74ade4c20fcca0d6d
Date: Thu, 13 Jun 2024 10:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718276302
