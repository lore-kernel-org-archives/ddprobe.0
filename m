Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2371D1C3C11
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767100435; cv=none; b=XvdBVkqFZ4QkYrUtO1ucGA3l4gy9SazXuxiG76F6739SJ+C1+/VxcY6bdii8Ib7DcTd5bPRdRVUIsFmt19HptzxXCW6i+xrwqJvkyT1Zz+ur0JGyXWgPocHc9MSRdCDDmnENZyKvWMvAUn3MyTjvH+Lpw8ZEPPUonO6DzipNc4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767100435; c=relaxed/simple;
	bh=Df2A5yhxc8V7EjwGDip4SC0UrfaJZIX484/mQjB2Ph8=;
	h=To:Subject:From:Message-Id:Date; b=AjDjMixTY9uQAAplYYnNdEdGUoJHLgakzYdFWQAHcVKH/ppUVu8MA+b9UJyzr5zL0sGY+rsV6hjYl/T8piI0fKSDWZ7EOwCIiTMFP3AzgQ/bvGRMzREB56LCKuelUmed1fwLouGddsjUpFQ5ct0lMCpkudUFWBFDpRcQT6VrvWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTrxYUO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTrxYUO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E609C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767100433;
	bh=Df2A5yhxc8V7EjwGDip4SC0UrfaJZIX484/mQjB2Ph8=;
	h=To:Subject:From:Date:From;
	b=tTrxYUO/bYx3Co3E9HiCzikfDOaTrxIQf/IYX1M5kby+skh6FnBP9Umboc4tQUZo4
	 WdKgGM5+60yYxheBPzKU29ZBhsaAVi1/F23WWAxDZFfmppgnmYFvBCi5SzqCNvRYeu
	 akz/RERVEGsDCgvCjfujai8XZNW/DWtTZyKxpW4mk2aRH2a+FdCSbkCFu15Jcdb00p
	 DhdfaO2iwYkWXaT7FqiboBCgLzyU205r87CCsqNsTEMT9dcB6raA4v+h/o+dk1kXOR
	 hx+69VaDfsZNx0a9EjymfGSbVuhf/iWB99ovWCp8/WalmUgt5NPh4yi55dIVcKG6pK
	 FNl/G9KJmIbvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F16EE95A8B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710043357.6202.5548320973062050819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57b1a59c00d6e7b4a647d07d783166d4a73e75b120563e1fd2e6ae1db3a63cf
Date: Tue, 30 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767100433
