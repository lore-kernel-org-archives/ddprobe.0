Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D031155C87
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767343434; cv=none; b=Pdfk90Wu+zpCk+OrEeLi5uljbYzODtoOIaHjKuVW41db7D1zVqWeNcZ5sNkcm4G69se8EIlj3PfdmTg00MxRXZdKo4TIX3M/Wkymu+X66qqc64/bfySa1sDvnsFf2SAMzTvFgNhlc9xy4iXJn9p7pohEFJYW+/1Dx9LS0J4/sYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767343434; c=relaxed/simple;
	bh=hzkMxJxboulgRdKfohkWzQ1ZrjlyCJKm5xcfGt1JhUQ=;
	h=To:Subject:From:Message-Id:Date; b=EhFshyThb9pSM1wYEtqrTpGUtLIe81hbc7lcdWj7+kh3ynLJEYlERx5Hxz5w9I0ZlXNn8zeHUPvLmH9OtmCtKCYVw1ZxcoYEYk8siMYkZwskvwMycAI71ieV9ZdfQrFzlq19dsT4geUsDcu6jlJq0noAz2vzav5dxXe+LdrFF7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHs6Wtng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHs6Wtng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5172C19421
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767343433;
	bh=hzkMxJxboulgRdKfohkWzQ1ZrjlyCJKm5xcfGt1JhUQ=;
	h=To:Subject:From:Date:From;
	b=eHs6Wtng3JTYp1Wi+9ZEXsDdTNnbjcmThYrL3qOMaBHNFxeCAQKo2cNmkZ8OaQwJq
	 7n3zT8MW9E2KNuNOSR074+S59ngDZQMXHc5jUuNjVd9kitLKmM47WXrwsPdEWy8FUO
	 s+VPAH2Jd8TeYx9kJdEdKIQE3uBhFuI4HmtDbydGs/IT+NftgaQmoP8ZXK+JqoXkCF
	 ni1gl47v4m2Ev5WV8k/Sg2+Zb050CxuFEIg3Kv5OGuhcClFD6kNIJ75gJBq9yKVhAQ
	 DKcga5AFPRUnJXQ35LDSgQ4WoY5yZAUsYwlcU/9aDG9/57FOjWtEkYSvIHpOuCczGv
	 6STbvpnG2id4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FEEE9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734343357.6231.9227068226497487119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5b02b495f377cfb3eb684865ef84e363fcf853fd7671e3978563a87e44121e
Date: Fri, 02 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767343433
