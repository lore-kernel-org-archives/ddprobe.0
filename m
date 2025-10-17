Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D85266B56
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760690394; cv=none; b=fNFQAmFmGIS5EApKGOUMrzS9fdDEsMkyIhQIdLNjzKXw3aVfkx0uUkTsi1SXXKxrzce+X/pYGA7Eao0yY9GVLEskB16stLK3CM4++WHiCLgFJbAey/o1MVC6qtUB3WbVxFYYrVwdtpqbDyjBF0wp4S+9utAF0WjvtxZ7q9pJe/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760690394; c=relaxed/simple;
	bh=QtvOH4KtmkrlhyvZBK6scHWnxrcdTybtVymJZUAb6p4=;
	h=To:Subject:From:Message-Id:Date; b=kfNe2lM8aIoo/BjyiAhiI6R9kU0Jg4Hz0a6OmHNGnjo9QShZ+nfUYS6AALdg7zfhRLNweF1BkikrckxwqeUubbWAb3jjSAbKnOA6K8S4cdq3b1o3V3Q2NW8uW2RSIXJq0NUB1EXjrCQcUJzn74YSX9s/8RuEJbFIIMW12mY7QSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTzYvjnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTzYvjnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760690393;
	bh=QtvOH4KtmkrlhyvZBK6scHWnxrcdTybtVymJZUAb6p4=;
	h=To:Subject:From:Date:From;
	b=FTzYvjnLvLgJDVA7/7Cs+LAbelJ0lZqhcBV6rVWD8ZrVvZ7o1wUQwo7mVTr9uhtzd
	 znTVm9SXw058JeMmBNHLFiiqgEhcLSaOSkStYLxnVM5VmSlxL29o1/Qsyf55DiR8Fy
	 r9vkwsgolwxzH/Ufbb8sV7MpAyLaTT0sx5FLTdWzjR7tzaU+bBTLCzxA+DRWlIzU3s
	 GmrHJB67+1CNnyPr868rRc1X9dorirtZQtdQbvZNRgNXl9NbeSfHCVFCajmMTOrqdO
	 JZ6OHRBfqWt9BmKjqKWWFE0s9K2mHyKQKgAhxjZ9oPQgpwEV9i/hnfwqBT67Z7G3Mw
	 /rCVB73nHNUoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D7CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069039357.27003.12439189041476571191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e3e6b6d968c2d18b99b3583f4ba60e6d76f1b6e3bab9c1a0eec76d2582f3b6
Date: Fri, 17 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760690393
