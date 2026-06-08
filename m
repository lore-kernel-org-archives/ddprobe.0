Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E8C3D3009
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780929274; cv=none; b=HzcCTZIhUUm+66phsmMRYytH6Wv+sbCqcL5SlILUz66S0LHmaRnlB/lpJcy13MlUjTp1lIjJ1j5qIGUCeVcOzHZ42OXjS9vhOmaJaBYG9RYJeQJ7z41Kzz48N2OLuBhMkPuCkuY+yehNfDWB8C8aTl0Gn5KHkydAFCvdrtKjR6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780929274; c=relaxed/simple;
	bh=lPFiIr7nSy61MYCMXDuvCLORdKgBlZYXelZ8oJQ9+20=;
	h=To:Subject:From:Message-Id:Date; b=Y0A3clAs9g3LT+kGFrAH8q/fS1opzDMvPdcHcADn/87Ckek9D57kMM6hXV764KryQ+IHH5HF4k0AsTUQR5ixAbvqJsd00rbI5Wl2aOHamp4gGsPytiJBjixQnMsj3+/JEvGwgjBncbtGKoPj/d9+9aInaws/0n/IC8r1VN+Y4FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axJE/7bl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axJE/7bl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9458C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780929273;
	bh=lPFiIr7nSy61MYCMXDuvCLORdKgBlZYXelZ8oJQ9+20=;
	h=To:Subject:From:Date:From;
	b=axJE/7blBcLFUaYJ8voSw7la+cPrH8oF1QEuOcUlenOodW+6oEYZxfx15i3G/g1m2
	 gQfBtVGo2ywTJmtvrRQ4Xni6ncEi1KFNgj5eF/wFA4pILgUq8c47OMo4a6pLDSIP2W
	 MP5WW4DZ87U4kiZP3M/dX7hoeV9KudptFeKmFoJNoQvx9aFKyIMnccKTST6fH6ic34
	 z+2b9hQlrwO5onPlsOllqUPVdTo3TzVA9BR16IWYcDuXaxtCL1hYI6NUqJCewpP1+s
	 GU33eICUz+/HFqoaTgfu6cGoJoDD+NhnuhXBHDOHib5CkPC/MfGWtAcUXDi9wB+bUS
	 ZHt9AmmvocRLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BEDCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092927368.30570.13007720180855598861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e67f3733e5c5a5a18c11aaafbd2006ecc1dd7495eb566ef31d11266b7923da
Date: Mon, 08 Jun 2026 14:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780929273
