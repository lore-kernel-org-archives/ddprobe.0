Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2778370AFC
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782334054; cv=none; b=kZDp+kTVpesE3PE1yoNO6YGKs+QrgDD59ZDksHsVTAH0JVJj3FWXv0vMaensotnU7y1pYTY3lHpwdngcUu/4RwPHmkMKPsZw7LXJDFKDhQlvasH5P01VQD7eFLm7P/NOZ8SCNjWlTTGKc1JkLI0A8oM+pyKXG7Ofavtixh65zGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782334054; c=relaxed/simple;
	bh=L8eJbT+FJoPEqfaRGe6nkUJbwNFClwP+ReEHsaQvvTU=;
	h=To:Subject:From:Message-Id:Date; b=nUS+6g+saIIRWzIbKK2jZ5K7IUGeD2xyJ9T/V0NViuYqw3rjcFr/mfyqAK1v7WtRHfrOYsb+wzT+XxJg96TRyXbm6kiNVmXiZgCaaIHQxGcI4LNfL/ut6/qP+tkdZjCDHFZ26xGwU87Qzr4dJpOKcyHjqRNKM08zSxa1L9JX2RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaTr6TbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaTr6TbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD6CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782334053;
	bh=L8eJbT+FJoPEqfaRGe6nkUJbwNFClwP+ReEHsaQvvTU=;
	h=To:Subject:From:Date:From;
	b=FaTr6TbWsYOoElacxFe4ccUMyZRODR9SCce3dtiKfQdT8fhvheMIe176MHliO/Phs
	 o6dxkAzAVIgAri4MeeuNQl0P+KJ1GbuhULUPKh/TNO+JDt+qNqqQinNOiudDuiNBZv
	 uucl/xPEyu4QY8jrk0TvmZJ+Q2fxnTVAAP+5LJFO8zrFwkfuii2ZwRdZeJrh7wpynt
	 oc+fVUaatVUySSKKrIMAYfNkJRi2TzfYNJo8m5UvOUIi9OFn/n6/6/LhZ4riZfMm3i
	 S1mYWFeVzk2VbsPEfTBXdimv5dE0shzwQ8StdTT7s8RCb3tnF8k9r3BVIuNSgZhpFb
	 ed7kcyl7isuUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6684CDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233405373.2808.13534386131206022469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357d91901a83ddcc18273363a34b3a672e678c3be671c801e82cac1ca5c0e4d2
Date: Wed, 24 Jun 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782334053
