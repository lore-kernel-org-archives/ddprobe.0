Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAD222541C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769752434; cv=none; b=TMGWwmfOCYjHeK51mqauxmTZRfC9kpVRGX8I9gs6D5MzVkNC9vtXDMnQCvEQbP4jUuUiyKuEI2SXn8V4w5SjXPZIrKvvP+wWQzqmNBODVu5yDCyTVPI8SZRwmPrpTcodhp5wFYMwmJ1ob28GZVMZMNYb2PY2NRz9YDvE0FEoHZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769752434; c=relaxed/simple;
	bh=cOyPkdcI5Cel3Ec6ng340suHq2ZfneIbIPP76jZKMMw=;
	h=To:Subject:From:Message-Id:Date; b=i6ZwLbK1YYsBuSUgCtKdKYzvO9BQajb2M2L6S+tcV/nbnqMRsei/iv1M15XQuJjYNBIVK84aA542Z7uVP+c7qCyz64jSI1PSQzX/9FMtH0fHGf3F+98GLbUbu5BRi3f0vb+9L9opLyWCFgeJS5pC83T7Sf6Awc8RVOfXi0BqMLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBy/UPX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBy/UPX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB77CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769752433;
	bh=cOyPkdcI5Cel3Ec6ng340suHq2ZfneIbIPP76jZKMMw=;
	h=To:Subject:From:Date:From;
	b=BBy/UPX2EG3MB2+wyCO/LH3haPwAEPYyf/e7VDnsIh4JC88NqAmscm1GtEvrbxpyp
	 NP0qngPlv5xhQz+iZvrd8uK0/vIvlBnutfFzTUMnAqULiF6aNj5XkjJ3/3iJ5WaLn/
	 NJ9qZMt/9eWW8/y77AUPWLgZkA1SqoKhCnhjd7AC8dURZkYgXqa/6k4oaj4B7pdOan
	 V3UNM1Ls2cv0XkFiVjt1yraKSwf/foxUBCZ7H/5Si/BqH3LPQvYuzdyJ4nDcpf0LBu
	 pd5fR8qhsf5hT6QCVqOxdIYnFA2+wQtJxtAAC5O4vV2FD8kka2YQgCLJ1EiEQltUoE
	 RfsueWdCh58kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B1D73EB7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975243360.18146.8378061753817854047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701330b524464bb0ade411c30e16ce8143e00f898da72a82cbb809e0d634c7d5
Date: Fri, 30 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769752433
