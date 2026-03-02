Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB98411618
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772468094; cv=none; b=Dlgf3Gh+HUPT8LhLp482+Mcq5IJ90SOUR2w2DvnZsZLuO9Qvu1X1v/wyjEgI4WLusz7V61ALk9STEpT87SjJgCL+RVmzbYEOkncdajVwQFoKLxFeCBnEZeNqUZcshC0Rw4hbMxiCe9ilpHCid2M0Fr1dYhVmVPd8Re/eni7EhL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772468094; c=relaxed/simple;
	bh=NF66WiO/xZADN1W2TzeGs/+C1EDJG4y7pwAfWtFKOTY=;
	h=To:Subject:From:Message-Id:Date; b=fnYp9euzHDfuFAiDldvAe/guA+nqvC/OIxXp4hgfTpxinsFrWkxTB9x4amgTCHsRGyYHknxiAJlb15x0sQ7rLDNgdxWkNtnbYX6hrKHWrszoyp9gDZK6nouZSLVh8F7Y4LfcWuvx/Whz6stRbDtEJKgr8Txb1U59evIocJFvvAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh6RV3gH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oh6RV3gH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5BCC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772468093;
	bh=NF66WiO/xZADN1W2TzeGs/+C1EDJG4y7pwAfWtFKOTY=;
	h=To:Subject:From:Date:From;
	b=oh6RV3gHAveJlWRSeIkE5CxQMH6gS+R3ErZdcEHrG4eLwM7rVe5ttOUjO3pToh3+A
	 mDBJlkXDWisatmtNxErTqB/ibN0/cRlRoI+bR5o1XuOoVSZU9VfiAjvnAr77S1JgVI
	 uoxed21FJzGo6WnMrHGJwQN9e0hF6bEyzbs815bT+PCQrliUyOaKYdMCf9h6Gsc2kT
	 0E2Oa9RYLPeHhz32uUw5W44Zh1+R4tvQZ9vMTcB7/ZCt5I68YLwXfEfDGeME5hvJbF
	 t+E8uNG132HnWBNukS3NjnFGMtL4yw3WRFz5qmKcTr7gOGc0tdrJL4LJ9sYPSgrD4B
	 GTdNfTcjSUq1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97410EA4E3A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246809360.14565.17633357099879818790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a747675bbc407b9a9893749b865096bff499d1eebbfb02f43b0a18ea0d281633
Date: Mon, 02 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772468093
