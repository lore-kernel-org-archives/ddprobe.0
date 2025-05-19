Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4182459CF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747637994; cv=none; b=GbuxmiIKKxPQ0jTTHTqW64YHR5CdjtCUA/UStG1IMFjyxJB37PFUgPiaUFv5sWoHRb6O9A+u8WKQ5mzHRdftLIK8XQitQiaXSdDMU0ug5Kg+Wjf5/iDKSHlUGY9Wse1aZ8seeEV2BhxZhzgC8tD5mrTz7yfgOlBczQH9fJTdpdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747637994; c=relaxed/simple;
	bh=DGr6sVt92ZF+u2Njck0hd1vZBboRzuiw7kB3rditbpk=;
	h=To:Subject:From:Message-Id:Date; b=t8l/V1eHE1gfOSzWPh0Xm5CJrBGDZTWaU9SuCtRCrtepRqWQu3PhFbKXIxNEuEJO1mFtfSf/wMoOrRzxiwe8hUA7gjmNROWG1hN0i9U8lJ/7Qose8H0skvB4IWwFD9zzt3So1sCEuogzZtzZ8Rbjzw0lP0iBVcn1HC+QKFeyXHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMUDFM90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMUDFM90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE7EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747637993;
	bh=DGr6sVt92ZF+u2Njck0hd1vZBboRzuiw7kB3rditbpk=;
	h=To:Subject:From:Date:From;
	b=cMUDFM90KX1asVtJvRYW/HqBSPZ76tJU40GRue4U/jWl1hEKz0DjKygkfxJDttcNX
	 rmHx8XqgF4Rx90T5yxISQ75zL2lCpsO6POMvFVwCEjBYrrCGoNBIZQ6p9bohoOEmWu
	 Y1vU1lOt5WI61Gjym8g0qiRI5RMd5gI4h2KIcbcZpNEY8ES/oLgz0yMj+qxTxJoyuS
	 L+Tf/mRoUzb5N3m7qkeoDny/mvSVEClpznVPO3VxVFS93T1IeqUNOLiR+ZmHRTwT1i
	 pxfUahEFES5elMjHYgW0NIr91PESjvc2TC4J3ER6gqsrcXX4Pi+Rqyf4sLmBAqydUm
	 BE9iRuLb1re9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3FDC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763799357.21228.37397861033879242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232b0e3ab88cdce1d1b68c0bef1b1d98b2873f1ab2b157611a69f50ad84c5761
Date: Mon, 19 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747637993
