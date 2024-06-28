Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D695155756
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719595463; cv=none; b=iO+S+uh2GtD5UO3boRywrvAlA2TMTP36S3+oGiWDRK+uvLmdtI3Gwerp3JlwMiF9GuADv1/MES62wqORO84Dn0pZjn1tn/0XFNt3slPZvGqu+0m/SVdBNKunz2awii4VMHjDKYByPH1xwjrzZ3Ibj6lDkPtVdXpyZX+zbNvomhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719595463; c=relaxed/simple;
	bh=rOyIG2U1MlKF3/JFO5oR4KPImRyAKvdWSTOKgdFGcBQ=;
	h=To:Subject:From:Message-Id:Date; b=nbstiWxYS8SaAjGEnRbVcF+RdoZ1RwkGKDsHBXEwyfa4VxIUTWBVnOvRfhqr2N157FAkQoFlSY6IWxoIiRy5NVKiG1AhGiIVwia00QhvPVyvc9IoYRbY6yvGPoMUy+w5UOoOMEfpHY3IH4Fabbox+eGPQ4fgFonsVvImlI4HbNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVxi7haX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVxi7haX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E15CDC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719595462;
	bh=rOyIG2U1MlKF3/JFO5oR4KPImRyAKvdWSTOKgdFGcBQ=;
	h=To:Subject:From:Date:From;
	b=eVxi7haXKI2YkoE9rqOH1G3ueaUKVPkFXb2eq3Ft54ynnVrVRZWWliHV5azvmEUAS
	 7xRRbEHMaxfv94p5c0k6B/eXVmCilkAzsSixJIJ6ZPCMGEK4SjhZAMRN/fQ4gcZx37
	 FE2RF3yJB2hTov9X+8EDjSmuwap0dZAxmD1vsqgOzCrDgT3QdPq2B+wrV81Xhx1lW4
	 5/eQKQJFI+V5yeoGQ+t7YxXn2AGHP6dNnGbGsDPdvWFogvHfsjxT7h9/R3lVYQAW0c
	 k6YBtLsot9rdrEI9j55CC57vpHtoTypC/0IuTyeUjraZQ17hXWg+BvicgJs+/89D7w
	 PgdHRw6TRJzBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0207C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959546284.2185.5397759713515859674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697b1c51e38fda494191555f910b4e18bad285e66b61aa373c15fc0f906dae5a
Date: Fri, 28 Jun 2024 17:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719595462
