Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B3049363A
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788911434; cv=none; b=jbfa1ETbxthZMzMkgWypWYVhGwgqEslbFFe6zIEcR4epIqTW8jedV19N3TXlsqxsV0O2Nrg+XDhFwtcZrSKXnOa6V0uqtRzdqKt0PeLluKPf3iTnpFUxOoN44QdmqmedteZF8KQdGFiSRBssBYvZBbbePQB7pbQUR0rilFOomeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788911434; c=relaxed/simple;
	bh=lP93U76CNLLnEezIqnvFZ5cDJdl/As09pLkZxzeRPkg=;
	h=To:Subject:From:Message-Id:Date; b=YVR0IlohUMGSpN7MhYfUvwBjesimHg+7VuTxPaIPh/TjqeKMpWVSi863ldqvLGehsLelWnLvxbYlJrL6MQowkShGM0MzkOze+p8XUVRz/qPMkngcCD4jXZ0pvwBnrF1Z02AhcDFmIwYQ9ponkcrnM6FYjUmZLBieOjn8PciYLsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrLv3yd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrLv3yd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C22C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788911433;
	bh=lP93U76CNLLnEezIqnvFZ5cDJdl/As09pLkZxzeRPkg=;
	h=To:Subject:From:Date:From;
	b=WrLv3yd4tBzlTQSRGHQQjjawnNkPSmGWpyJYwosrYCCj3L3QYU2hb9oxILBTbaRGR
	 ZDkHOkV/fL3O8dokr6hJ/BVDLe4wzY5GrphLNqvOiEeCTztpos1jI0vjzekKmTV0U/
	 zcMwT7INgqf5lpj6z4v/TV/QI+8EHQ9FLMkFmySGh5iOUBmjv2IuSXp7Yl1o6TbOCT
	 HkWK5JdAAv9jTHxox9EwQF7NoKNsMS104ipLndgEPTOxrd6UdvfLPeN67PAgmSFIyH
	 XAHGOtBu9AU6XXeIvU1aiI/fA2G4vAymjuuJ3c8Og7tfmkzVkUFs5/6iFudXNSkLmT
	 /qPkacKOl5uag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0A7C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891143369.12188.11963998456576353853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98aae6c6f39467b22280ec4d5784a1f51993ea219c3cf48d2d0c1e42303e9889
Date: Tue, 08 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788911433
