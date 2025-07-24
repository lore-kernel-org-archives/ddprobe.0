Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B91284B25
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753368594; cv=none; b=F82WtvnvXdO0zpUOApDKoC7vgkxs+UoxVSQZE64UidkjgUf3h95+4OhHGUA9YVZrlmUKuqj5agLHO2/IVzx/1OZ4k2c7N5JXOCtQsmEtoaoRYuV3+RGL5EasEyzIY04lMPuETKVr0QY+roC7H5pq7tYzLSKJrtsjvw75CPeVcUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753368594; c=relaxed/simple;
	bh=Sjj6eiaRIet4tXD52Uf+yuV0MtwXnuWkBh04TQnKV7c=;
	h=To:Subject:From:Message-Id:Date; b=tCFbR+i5Vo7CexaSbLd0j3xO26SnYY4QBdJeGSv/a+QAPr8fq3Kqq/nKNOuj5YGDlOdTRtiQvkJyzxiiqqa7wc4fSRJy7kjiEcl5nCZZrZrvc9DCZ35i11B+sAFsmDmcGmHBB8QGYfQouCEVvWMsCRmCF4e4sKHwwHJR0ZP43lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVMuDFGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVMuDFGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CA2C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753368593;
	bh=Sjj6eiaRIet4tXD52Uf+yuV0MtwXnuWkBh04TQnKV7c=;
	h=To:Subject:From:Date:From;
	b=NVMuDFGgut5lkr4YAY+MNTXKqCx52NwXURzU8HM60DXEXxFTVGRJSsENNOZrpeaOK
	 g3rPpFmc5fyhjPHvQbq5IdeecF3aEKMz5mK35Tcb+kEfDI+5e8jutu9l+KKfEIt2hx
	 UH+jWT7iA4tberbhCaPgQIe3AxcP/0TAjbLZ0b6VyF4ioZjJT/V+t2Kluncfepw7IL
	 jPWRE8931vg0Zr02Zon+ENv8LY/oRhSGJ9pUPMP9X8kFGYwXBLv7zkNQ1UpzSkw5pv
	 HqGjL4lV+qn5NrjnSXPcKcMQjDmbwcb+EOTTwQO9T0gzAS1GpqlaEkde44TXigJrY4
	 ejBU4VrY/Z0aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F57C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336859362.21096.2529405784115174730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1324cf8bf4f8fdba16eb3e4051b4053fcf8c7ad932bc5eed58f2b96dd549f57f
Date: Thu, 24 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753368593
