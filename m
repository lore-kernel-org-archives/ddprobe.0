Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227081C14
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721435754; cv=none; b=QkwOrl30Oa3cKfT/ZiyxG+qKw4kxm8cZCTxnM9SZTaX4lrpXWNIiWixXZKWlY9L+28N2ZwT5Nop/8a5QawzHgMbA+iDdx6a/l9bW1nppoSWR9qMZw/inL37LKfBQZIlsCOcRVCyUhs2Iw4+bdfaidJ8x7YjhR6Ht9BXKoLUpSCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721435754; c=relaxed/simple;
	bh=5axDXTjfyvEWD7hKWCV89AvpFzsb+9kj0kIOtsplKyE=;
	h=To:Subject:From:Message-Id:Date; b=rKStGlvOplr81uCN2H4X8RaKEUupF+Jh97kVtz1olBCgOSPJxQyp+dKPmopVcaMQ2ifdGU6zO0TZsiosLqCNju28NYwl34POq6KGl8AGsZEYgilsHTnEhKJ/OtaY/3nITzvAWBgL7ADOfWdoZwjAMmfj3DvsDBug7SBVMYXQngE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7Apcxs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7Apcxs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1229C32782
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721435753;
	bh=5axDXTjfyvEWD7hKWCV89AvpFzsb+9kj0kIOtsplKyE=;
	h=To:Subject:From:Date:From;
	b=J7Apcxs1supRvUwSixnrRBO/PIXVmwKMVuP10+BI9SWI+GK1/WQPtnB3Lhz3Yc5vJ
	 Qin+FEhHDFXmfpqqSz58UFVs+hZsmXzZ/fyWcK6XhxBYcEVNC7k45BooiM03kCWFDk
	 ZwjC3ZkjjQnStnAsxCYPN1T/IzPDufMHpQcnZaMq0cXAXKG+t3vvU97hqWqhpCr0bJ
	 XL52OWooCFHLyKql3HAPKP9GngYXtqm0avjU/zFZV991e++XKriz7ZqY2zizpW+Sjx
	 D+oF/O/CIJxfvesmZWEzZIjnE8gLSLnKsBckVo1DeyCjaLlZHyZLpDT75UNJh4/kfS
	 dpx2oE4MdnPTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E0CC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143575358.7121.17821631987446509398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa6bdd41315b16b3750dececd52a5ebe4a89e0d286242158a7989f19729187e
Date: Sat, 20 Jul 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721435753
