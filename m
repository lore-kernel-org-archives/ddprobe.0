Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12743221F12
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768064034; cv=none; b=NVJfm2eBJPJp3Q0IT9B/Gn2eHApU7LEsj78BohOywtfLj3uQv/Goy4vKzXvHLqlBYWtPibBSYKLLO2XeyqWEi5pNiYXeDxF5tk5Gv3cjjli8BnRFSOXChc25Ti9QEPZ/DhZZieqGnt/SPPk+X2oCM6bctH5Tqq+1GC5x3+tLQsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768064034; c=relaxed/simple;
	bh=4f3exb5ZoI74bkoFeXhI3vHA1S+Y6xaeByXuerFTiJg=;
	h=To:Subject:From:Message-Id:Date; b=VG44xphzgbz5SMndc7KanBfoBqGSgoM9cUMJWYx7XaQNwER5YQuk2oAKAMWlP1klNn7P/yyQSZRaqJOY+ScdJksXFPH/jFt2ybSIaaQwv8Vu+alpA2kpw7Id47fJDUeJZnDWjp9d4lrfBfB/0uPVXtFZBC/4mnD37yfeL5k0sGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBWltyp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBWltyp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0914C116D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768064033;
	bh=4f3exb5ZoI74bkoFeXhI3vHA1S+Y6xaeByXuerFTiJg=;
	h=To:Subject:From:Date:From;
	b=PBWltyp4l/aRmPVi5WKJeH9RMxuTNt0Jdce14v6xGAlGQiCql7zSa/j+c+UFhSL0W
	 st40aS04+y9JuF6Ndqr1ST93xrFEhIwdMxF7CxBvqa8JyxiLamFVFhzC35Tp+aRDzu
	 b/nFol77+iqs69G+TkHAo/Mgn8+6i6ksfZCYF5gQFlO5XvdWiFrEHrmTy3dE9fBDek
	 xo9a2ln7Od9scvpbA+xPabnoSm9E+tFtoHusnFwtWJ4AZgXEA5QRFMdRRrCW6jqJy4
	 Wzeysy/MldjsxKPEBp64nqVkgukPhpaH/df9bTr4te2uXygbnF+G18WiWfydyCKsmT
	 FDwfUkzBiydVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F859D277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806403358.6703.4733197100786823911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f0a4ab2837ee8560272d9bb38379933d9824515c861d7b9696995640fc5a27
Date: Sat, 10 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768064033
