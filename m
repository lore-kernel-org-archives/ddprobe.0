Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA3023C503
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771174494; cv=none; b=edP+MzmuKFvuCsNZr+LpJifGG130oth1wSygBJCPRJ5qn+DsyM7nMYKGDNS6/a19FaR+MkGNUNp6vZPHSzDrFtTj5zIWrSs8yPCXrs812lcHMJFqSTkLkJ8U6sMuTGg//dfo06YFDUXYnbPGHguOAr/LRBx/aetC41nct83qz00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771174494; c=relaxed/simple;
	bh=+FPa6330NZGTh/BsTxXDZ15vozInEEh5U5Rxq/pdVUs=;
	h=To:Subject:From:Message-Id:Date; b=nVbw9HOedVmYEKleilgZOIZnaczkSP6ox3U/hHELzAIWEcDN7vA9xT/WWwVXBddLJvWXTGlQqZQNJgOk4YTF9255L0J1DzAc10qP6XUhkwIfBCa3naihp0rti53xXXnZEEaNcnLOFRglV+PgouLUno8wE57VLo+cbZXiAfel11Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fX2oCj+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fX2oCj+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA76C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771174493;
	bh=+FPa6330NZGTh/BsTxXDZ15vozInEEh5U5Rxq/pdVUs=;
	h=To:Subject:From:Date:From;
	b=fX2oCj+Iai81sWMpaxAC1eiCERL4yW9CEYHHu/GJN+jlg8y6kUorx3TsZH1mH/tRM
	 cEaE7q/jllZDkXjmM1rQ2TYoq9mFv4JumraGg1VCGkYjI20sjOdEVB23hHhUprdSC+
	 8NIwszHh/N0I6uUN7r1UOFzfCBf4xX6sxJQUSoCyr71q0XILFTlAg4izS+697eKErh
	 A8xRBmvu/TBjzspvcU4uQ3nbEQW08xAoUMtSPxwa4M5bv6ZtUHU5yRcfTv4QNFWtdZ
	 fn3mbEuevlXJxgEHfqD7+itKd9XLCxPinDpGk8GPjJ39Y0YG8KYHRqWoMk3kxP7RxF
	 6TPGaNiQO2WBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F20E63F04
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117449362.25784.15515203989310067221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad8a716d34dfb3db5cfa98b0dae1c2bd8722e1044188b442e8c91405d26f5c1
Date: Sun, 15 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771174493
