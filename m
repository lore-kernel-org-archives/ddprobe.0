Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FDC1DF269
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751007594; cv=none; b=bgfrBRyWl0Pq+Fb5SItajEX6ZRlDlAjfTr5HdfauAA1i5EkbVNU6Ty/CdGEpJJrgN7qv+hWKUegdYEBDEPWuqSdc1QiKIVVVY+ueOxBWTEx/06UzCsTu9HMdXs0QYfOmsUoegCcg8lD2yaBcvVl7kvr0WH8hBGOx1XUisUDhTUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751007594; c=relaxed/simple;
	bh=DG5708bQOovyM6g+jCy5SIBRmWmT10iQp9lzLLNSoQg=;
	h=To:Subject:From:Message-Id:Date; b=OBb8rbKSbA+EtMSpiRfWqFcv/TInvMzltVwFXKtOA/X4XxsV5aQKl/g0n5ZjDiUH1LugmP8Ck+eUyK2PXaxRQr539ze/C/JwE9pswmRgXR93VlX+65JcyCWiAu3Yk569wRFZnNQLLZTAQJou5IKHCPeAg/wQ542xR9KwVICWVkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0lttuSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0lttuSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A539CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751007593;
	bh=DG5708bQOovyM6g+jCy5SIBRmWmT10iQp9lzLLNSoQg=;
	h=To:Subject:From:Date:From;
	b=t0lttuSmHL/jFJt4T0/dU8R5RlJA174ZtMwkFeEfNpJjwKwIX2Fae70MwL+KGsPrx
	 /0NYd35fR7JlbH1z/8elRRzn+e5fLZ2q3GVoxPQV0ftE13tKVnHPmOj/y/DjKNKL2L
	 vKgdmzqI/QG0le6gs+4Y6cNGkQl2n5Sb64R6qoFsPCFoYq+G0WgZmNMxyQJyFvNWuG
	 YMyPi3IC9y+MneacG2/1cjWHiylsqwgre4l179HZ6ikU+dKkdofBUG9+NpYU8dhZ2c
	 jByLdRzpu/NFmJxU7EHH038IZWgOZ4YkBM44NwsJPeo6/V95J03BfA+uqiKeEolBPI
	 h3ZDghXjxkSzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD2C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100759359.25102.9566982201354959637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f90c0c05a406544eeb2c7dcf2e8267e4fb20989a499226dfa8c4b9f0a3cedb4
Date: Fri, 27 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751007593
