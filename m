Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10112221F0A
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759087794; cv=none; b=sKoZk4CAcOef9Q3Kh69cFAWTJHkz+f9jRxGWInenAGcMOn8H6lBpkikm3Zx75axJDxUWAvarm2cuRv+4CeGoJFtac/7ps/p2WdMix4Lx7rfwoXgmVcYSqwzCbAdBIhlti/vAluYgtXDb4IOlh27DXqDPys4dt/hTswQHM1sc30M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759087794; c=relaxed/simple;
	bh=yuiaYZ4+dy7x7c118XWeXycbrayTJttQlq2Jhy8Slew=;
	h=To:Subject:From:Message-Id:Date; b=X5EWdcJlTFj9r12SAPH3CKWojt5u1G+goiJhdC8qKoulHIwfTlHZ37nkgswiqi/0S3Y3aRcRBhJLvkD4BgJw8Yypd+kjDP9oM5C7ziICwFilaVQEivmV5jeFsP4SxSxb7Rnckit3kUdyyl3OHYpSGmbDm8bmJkxQS7JdrOW+ovI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEHbpluZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEHbpluZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1641C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759087793;
	bh=yuiaYZ4+dy7x7c118XWeXycbrayTJttQlq2Jhy8Slew=;
	h=To:Subject:From:Date:From;
	b=kEHbpluZGZBsVfANIG0iK5M38ZuOpF/FiRvbUWHflBeTvmbbbVEIohbMuokNcaJTi
	 bBCeqtvYF/bwWdMYaQrQHAlzFUR6pRQVFQgu2SF80yyEwUY+GmgQDOeXrRHSkmVnRr
	 SXLzCa7i0b1QEFiMIweFEiIluh3ld4V6gZ5rJYmXbDfLXhqf3C9MKSpXPzhukImepH
	 n8FzeETNQwSALNslUQougbS9bvo5EBzD8g15roGf9Mqgx1S7xxY7ZnvnhST5RnyQff
	 oskAvH7XRalfiB6+i3SJJZaJOlo4+lHuCxT5DykTst/k/FGzU3z5bC1CVvAiolAdcI
	 Xj3b85awNm4zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ADECAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908779358.25537.9295154058573526395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea4a82668fbd1d3543a6acd4ddf0b1854b393a35649186216fabe5a18491866
Date: Sun, 28 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759087793
