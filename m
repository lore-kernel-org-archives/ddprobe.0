Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320481A0BDB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744813194; cv=none; b=GkDdiNCWXQIIhJYl8dh9m55G0b2TdhR/4PCN6y2uuhaF3kDC9CGwE3JToU4abPjO1nSfMIb59i18ufciv1j4iEzopW93Tw/QfKEP5pSzjnU5lFtvx4K+mI/muKQ+ovDW1/pEDeRjvQoRFxh6zmBVa6QQ41XqjhDF+na3GJdkUPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744813194; c=relaxed/simple;
	bh=xfERJCCb/G4GF8J+rqLKg8Fuq8RcPTFrJbkBqc9EK9o=;
	h=To:Subject:From:Message-Id:Date; b=NoC7MRDek5ix8JArEnAPtqmvkyX9ApE5sUM81NS1YXee5ed//jjZQF3nTcnL4JpabUpNzCkUqpbnULgIeuKA6Kes3r95df0DfdzByF91JStahcqJJtbbjAeHxGpys1TzLEbEKo0JP1hCcYYxnkswqWz2bZ1NZhnxaJYj911B9BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipz4eX5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipz4eX5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7452C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744813193;
	bh=xfERJCCb/G4GF8J+rqLKg8Fuq8RcPTFrJbkBqc9EK9o=;
	h=To:Subject:From:Date:From;
	b=ipz4eX5dS/ZBPfx92GZe3XWsP49Wjqvwyg+ksSaGcgatTG8HWnRz48mWwg0NjTqVN
	 nOXDnRNVeUsuE0A62cvIkxIbT5gwPmHHtzWmdFNH28Nm+eKpTyy4pHtQRPIotEGh89
	 MjaX9bB4F5qn92qxbMoayEkwUfWz2/CqiTIqUbHD7iKRliXkuuwtQ69bKSOVjYI6XB
	 m3yrIU62ASLl5ICeDB/tTld/F0eZdaH1+rsYrYCpiKLuRPDaau21DtZWPdvdNFg9jt
	 xWz2mGgSUR03BtCVbRmbGpIQjev7eDwxoGfODKPFT8gbMqsPj6ND28Z9b1Y0uqozCd
	 rXVwjou1CrQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9443BC369C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481319359.17532.16351699384097526257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174d4a1d12d4c50f2e6019cbb99e30ecf6171b62947bb93432f342586246d6a9
Date: Wed, 16 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744813193
