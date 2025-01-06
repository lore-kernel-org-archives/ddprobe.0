Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3508634CF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736124354; cv=none; b=qFYqYGKFZbBXEfjZpS2Le3IZB3cUXpRn/MR3iVg+yEmYHzoKaoLWhExBLMk72aXavxHjOHT41nk6SY8+A8YRxaGcfV55sGOlWnA1o4AU+Rtsb0c4hiwY2eG5jzpSIxo4/KycZbQWJHopL65dVtPLhFPJLYPEKXjwal+bzI007/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736124354; c=relaxed/simple;
	bh=ixLAmYMjQv7VXFs4oKxSUTBlEI6+PORJJsf2AgEPmTI=;
	h=To:Subject:From:Message-Id:Date; b=uVe1NCiYc+OhZv47dsktAv060GzGpe+2rMUoYJlALFiabNzb6RiHDUUiow7iufMVY9a7ti97xm2cUvDaNFbdOBmcKi8fDGZRHkcT8nEiBau1l+SIrYVcP8o0lznj+3T9iCXASC+Tg6uW9Y9sEEcie6Zc1Rb/wJWsDVCgZCBIr/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIhv39AI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIhv39AI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEA6C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736124353;
	bh=ixLAmYMjQv7VXFs4oKxSUTBlEI6+PORJJsf2AgEPmTI=;
	h=To:Subject:From:Date:From;
	b=DIhv39AITt7/spR01xRcZdqKG5xiQ463cHPIRALyWQpwUKRJQ+qLJs9vsn110ZFDe
	 o4sbAcpEmyANVuPWSdNsbGUzYWUv4NiDa8L0nC17Z7QRnThzPyfRMEDyjGLbEsxzpK
	 mKSw5YgRvRVP9lSMOcXBoOrCNNV+hdAU3tAqzYOv9YixFuwmuqyIMDVw1ntEgSOeKQ
	 GPwBGQ6TqUz0wABxNEc6YRe119MjVK11PwimN1lvNVWg45wzCN6CwPbBab8BGJqOP6
	 doEAOYcNCMnNhSwguDO0me2K1yZTDvufcfwC/pMqcJ54nORbLuUHxoOZMFKMrdrlDA
	 /BcgkptrlTEIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C647E77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612435362.21474.4061208720837074760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd22f368fd61252ced65f64aba5c29b6bcd8c1349aa5c0eb1bf3e668f741c465
Date: Mon, 06 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736124353
