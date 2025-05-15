Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D64672638
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747327794; cv=none; b=BaLTUJTp68EXcrlb3O1sAFaVuLQccWiJ8jwgBQQyFTzxib54O9LIKz/mzbnhxWQ5xtyeMOry7zGDI7ia0uDxxWz25qH4zVKgStZu0CSuCiVr+Bc8WOkz9VWElR4uIinaBqle7RwjWLNtYv6VsgjqvhFnKAMxojr8s6fsGCs6ujs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747327794; c=relaxed/simple;
	bh=4ZSXdcliDnrY29jWiZ7uf2MhmG02T+oZMaqax1HyxeI=;
	h=To:Subject:From:Message-Id:Date; b=CO+tcOXyUbmJhixHN8E7IVCuhir5eoCTcvoN0JPG2eYiHWZ/fDM0eWs1AbITHykUVDdMhD26lHhs3/a8mmCM2Kpz/ZcbtHWS5Bu2+euydyqCxjIiij3gVmvMHNeQDdJ0Ggt9d3/ZdXmWmC5gkLamOyf9x4K787jFCujLxf6DMKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuY4kKKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuY4kKKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A248AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747327793;
	bh=4ZSXdcliDnrY29jWiZ7uf2MhmG02T+oZMaqax1HyxeI=;
	h=To:Subject:From:Date:From;
	b=kuY4kKKD2a47tbG1sWscgolXWJ9xZNbKszVYjHL/DwAl5m9oeUJwya6ag9K428Hno
	 otvd+thKowf6Rzj8dj941+VMijKyi/4d24+UJLEbvScHnlUtAmoou+TnVAFinjm65e
	 W9RgQA6fZiBkF0Z6fSRng1v0aM8u1iOko8JGfKVPve11LZOQAB1Q7v9WMN9XbGE0bw
	 bVtoNmdAUteSvqcd2AhNI728ynEPYjJUn4y/1Q67gYbqZpHyhoAl8StfEhSJr/uIGT
	 uitBZnz05tHCIUIlXJ058V6yZCuqORhKPKIcAccZPVOk2yep0JBevz3y3IeuT01Swa
	 EW+DWaPsRyaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF18C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732779357.13736.14237158837899468029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e471c0df16a01373a23d48168d6f5f6fd876d33693054182dc4a0dd8534008
Date: Thu, 15 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747327793
