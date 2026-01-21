Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F912E54CC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768959235; cv=none; b=m+0lrEJfYgG5Qzd439widjORUMr5uWchH7DJg1ONndG+2vxH8O9Nz7fyWr1ycsRmQ93dHXyFdPrxtaOV8SO9Es7i8juNGOTAZaIQ1n7nh6GxZeW5zhJzMKkoItfc68tX5x4mJ2W3VKG1aPfWAD5yUDARhC8A8/ir8JXj8NfWX10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768959235; c=relaxed/simple;
	bh=HM6ySfGpBaeWsfz1xYfHJVaIfo8w0RrNMWo4qxq0/r8=;
	h=To:Subject:From:Message-Id:Date; b=CDEO6b5Fa7bDCfWFs2VFnT5jAvO9xWWhPaHPd0KvsNMj8vdIyigkVh59tYXp+s3CmVEwH6mB+OpzPpHE1o/mnShCyAQM2oPJ0ZfWqDA6HmVUn63rzXcwkzP0Hj4RhtlurqLNovx61PPV1Z3XF7zP+9V7k9sQuKlLw6OeYzhvFY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScLgcned; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScLgcned"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A69C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768959233;
	bh=HM6ySfGpBaeWsfz1xYfHJVaIfo8w0RrNMWo4qxq0/r8=;
	h=To:Subject:From:Date:From;
	b=ScLgcnedQKGQDx3IcI6G68nVZB2BrUc1a4RYSvw1zc8riizXLPPrm+tW8ruhoi8X1
	 dwfKbTanfq0zFMKynx1qRJZGTy/FXXlrEJBmZuVzeqYwINPLlwotCEjZ2XSDsK2yVL
	 Qyfmo+ClMdGHq0J6S8T6vuQmTijKA5QLoqVDnbQk+ihQgcsXPBV8G/gXeDfIlbf6NV
	 pqNTg6FpZGw+Fn8DkFn0eLSF4h7Plj5gKZpGkXIWEnvqYMy+iaa8nw6qIHeoQB77kg
	 qKOqf63XM9VUmATrZBwDH9wEHco942WuI8ITG3umyfGh+K/0YCNxkcQdT/ZZkD6Jr0
	 YDAYt4P0Le3IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E49D2629F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895923360.32648.11964636264544546808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9926b7790148a1e543250eee352ff735ad09e51dead1564595227f89ce0e0fed
Date: Wed, 21 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768959233
