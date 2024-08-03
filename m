Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C1F1170F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722716154; cv=none; b=BbjcmHB0FCLKv8hJxDEpY7ic9/KgKz1LGGro8Y46xT5U3Zo6FYQIgax2ECPDiKH/NAg8uQ5exd//KDtqpBCzsuL3F2XZj+PttnD35k2Ejxsjoig2chrhcfQRhePdUyf1m/SdcYzYD5kHnMHzb+5VTiNkrUaq9F7q42IiBmYqj/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722716154; c=relaxed/simple;
	bh=FujUwTxj1vDK8fJoWN1GKGCHA9D9D0eFZhZIPWbWf/Y=;
	h=To:Subject:From:Message-Id:Date; b=gbh3WmcXj9zFIlnngzNNKfMWauYuQV3649vnW7JaLjGD8G1lOkg1sifd2td6JVutXMu6OOdDGgCAL1SNwrIusKbPjyNxMmbbmxh6fSo8d685lN/AejeJudu72DLGx9tIYNlEIaRhMOMht0q6lgIEjcroxWJA0pAZaLrPr9V+mzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC/27RkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC/27RkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6444C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722716153;
	bh=FujUwTxj1vDK8fJoWN1GKGCHA9D9D0eFZhZIPWbWf/Y=;
	h=To:Subject:From:Date:From;
	b=tC/27RkYDiwpF57FydI5SP5LSwEfTu0cGwe+DL+wT+Np+Q6EQG905iSe+x7IgYOgs
	 +QV221qTHJ0mtrYoMeJrhfFlwc98KhRGm0PTPNWWyBEZ4Ax4uWLHYdezFpURuD89xW
	 kdtsIUW4APEkSCvgdaqCbPaIJXuvQxqg+zOcD9+NKraFqD8BNiGfEsfe4+O0rLmUmJ
	 jPHoVKCivgNuQapRkoaQjrdFAvXI0P8835L2HWdFI7SXI934eY5Y3jwbHLZi52FVc/
	 XrOelAqZQaMb6P4BZwvqES2nSP8LVw6Ju7lB5O/KB4z/lhwvjXjqr60e++0bUZ4QiR
	 B5DS8Z29TzO2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD45C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172271615364.485.4008759326039014610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bec4b2e3250312af95b5ce294847b9ae06cf908f37dc549923e608ab39fb36d
Date: Sat, 03 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722716153
