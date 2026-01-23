Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033BF125D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769163235; cv=none; b=jyGmEM//raC2GWqz1VmCOglTlObSIXxJqV1K9OgmyOcSL8cri3hLW2N9TxNnLFwEQ0S76Irac31txdFWX8lgPR4ipeekVlvG/iGR52sml+Q6RUx9JWVnwOJO+2n51rJE1tk/dw5HhQshEBeb7w/H0n8x0+GNkTFxjtMqqRL2p4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769163235; c=relaxed/simple;
	bh=Mw3pUElh6GFKVmtKs6Cw4vuTIRlE5sVw32Z+boOxL7I=;
	h=To:Subject:From:Message-Id:Date; b=EoXynIkTtr7ofozB2j+S3/pN7n63732jg96JU/jah1JSkzhyQ6i9E0Z+BME282vjfZDMWQ7Nh5rYDhj/Z1Y6ga/IpmAK5GBgmM2dKvzgGV74oipGIH/YSDVwT3QNaQtvduUha5pPLtMXzbuDacMkFDCg3pAqnmiGa3WBY1vpIYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FT5ytvuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FT5ytvuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3130C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769163233;
	bh=Mw3pUElh6GFKVmtKs6Cw4vuTIRlE5sVw32Z+boOxL7I=;
	h=To:Subject:From:Date:From;
	b=FT5ytvuOF7jUlwSemH3eCZ5iSZed7Kt8Do7gbGyhHgNgKUk4QS39D9bMLeSntJmNR
	 MHL5y/TN8m8UBwlQGwiSAiq0pWtINUEYJSfWqcQ+f/N154U5UIR9BxBuBZDtG1TCv2
	 ECcHcz/SF3ki4Rxg76H5UytHbyF4N6odl/N10V81xZE2W3JevRS8UlCPhvEKHI+7aQ
	 r2bp1TdbU31O7E8hfjTcD+nSlvQRfrQa62j+Ywpa5+QV67dunFAZ2JCHEiP28OdizQ
	 Bcv3dV2O7LpwAr98N4yFFZAoF0CZC7H5S2sOYt+WA23yIl0i+NoTgTOxehSeUjUTj8
	 dIsGHlulBpNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190CD72369
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916323357.7035.17583695640400570248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd71ed53c11897695d0fcbc4556ae32fb1c130a8862dfe86301ea149457edfd
Date: Fri, 23 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769163233
