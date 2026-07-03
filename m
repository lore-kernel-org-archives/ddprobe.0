Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C2C2C9D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783113514; cv=none; b=AcFU2HeQwangXMUNcxIdXS0CB4dmO/9bxfXrurfDX44YQoI8t7smcyLkPZstIJdKJVQwg2XeWC6x/pfdhLoxCVKajjEjDs9h5OAvWJfSUc+ytUiL0W/VpOSeRhfXmEOpBtXjxRCjWVfDojMkQkcJZi2vSZJ1BDM0aS7V0M7dnWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783113514; c=relaxed/simple;
	bh=v+NvfmhidPbbs0TyHVR9KHtSorUOyTwyn9XaH9abMxM=;
	h=To:Subject:From:Message-Id:Date; b=Pw+oUtMvcmse3mYTbgs0Uq7C6u4+Hb7VyRHKSsmEo3FAEKZRv6sT5g16uu4N5tQqqRozRFKcrRRZt+ao8r7XLvaDFe8ARdUqxmjh8rzNxUiZ3ZRJqDt4WmsIP9bq+cINIJowQPOx8gpSod0N2zzgKK2Cy2i+hO4T4UwC56KLs00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiujQqWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiujQqWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7D0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783113513;
	bh=v+NvfmhidPbbs0TyHVR9KHtSorUOyTwyn9XaH9abMxM=;
	h=To:Subject:From:Date:From;
	b=qiujQqWUHW6yKqE/TnGN5tRiirc0VTFH38QGi1GmSTH+cd0Gqr6zxUkAfeSAag5zE
	 +e3cW7snqnoVj/Kh/N3taz2BEvpsDB+mcicsLeVASu4UmavnQvGBn7jMM4ff0iKXOC
	 ro4lAiyAU2CaS6OQemUnCNmjv0xddHTDJbQTZCjEXM+RaDG+xiO4Yz8i55450IyxX3
	 6xMlQ7efm5eMNJQVQQcf6nkg/nCbMY0h86qz6F8ymtyjylTaiNaQso7eFxoB99GxK/
	 H5pOFZ95vVNyl2O0QnzrZXaNMSOp3kdKMa+ONPnJOCpBhbZQDBdU5/C8dA6MxKK2hd
	 khXopWyB6jKQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC20DC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311351368.25699.7665575996241327689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd5996ece1b8970fb5c5228a9ec2cfdd5ec2b2542e9d68b96e885b9527efae0
Date: Fri, 03 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783113513
