Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B1241C2EB
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772274294; cv=none; b=d8tn+ClCEhgxG5Tc0MALjezmMtZ82p3T44oFZI/ogzpgzvoDI9ItqCHZtneLMOl7XyfWxLglATrfSd5tGFuReddZ1jTJMWjDonTss1HCTFy2g46AkPjSCb/lRrif1xGq/nPLPDghUkp5x/LnKYaEnRA+a1wIbogzCLaZkt7Q0rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772274294; c=relaxed/simple;
	bh=T1JA9XQPdxxGasTJUn8L0Dl/9jsU/4Yr9WzjcovXTDI=;
	h=To:Subject:From:Message-Id:Date; b=rWjRzbzLSVM9TM+g0r2Pe67WMUVPGv2FuzQXyCiAYtFdY+Gebga7KPKMX6zJZktffqGSG3XTy0L4HKQ9bEba7uRkBC21m3I8ZdaPrsXgdogo0y4f0BHMpWRNbYT0/U09Ckvq6H2oBhjTeX5lqcHQf7KbCfNGfmuIDEjliLdnrdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLcxDoz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLcxDoz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D26C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772274293;
	bh=T1JA9XQPdxxGasTJUn8L0Dl/9jsU/4Yr9WzjcovXTDI=;
	h=To:Subject:From:Date:From;
	b=eLcxDoz8QYOdfjNG85K4EpZFjROjLyHXCI5PWJPlNmt3xvxtSaQzSvZCQDUmOIvKx
	 i9TfE/0S/ZtNbaPTKCW8oOI76cPVPOiySLcVT+t6jAZ7YLXN+nQzUTnbZRZX09IMtd
	 /B7Mrcf2sOWkLa7kGvkEQ90oQsLJyGjyramyZopJIPIQK9lzTwHKBN3/ZrgyFfu1Nm
	 vwyd9KEmsIfghmCD41eNwhqZGNN6NvlQy5BNYvoOjpb24VJFF9o2KdgOoflybnwKO/
	 Pw2grMNbhvUgwzKJWOp0cJLLfaxx4nuafmLv4O5L4SUxINRdZ41w2wl1HAvaDrGU46
	 Leiqe2T10QWkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9173DFEE4E2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227429358.10441.11928488738673334332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1917e4e3e496ecefdbd6ed0d4c57c470b5da0f38957d2bcc7922c6aa320811
Date: Sat, 28 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772274293
