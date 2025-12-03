Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB442FB0BB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764768774; cv=none; b=FospRCS5JmCQvSRbeudC/UCSRqCVDZzD2sULnHm9occwop//ADW4JUjCMk1WHYqCefPtrSqxw9muEiGZ2aoeclwfiYud08QtwqmyoJMrpXlxY/Oy41tZomSV4nCF91OFMrBn/5l2Lo/BW+y1vArsBn4AGPlUQtUEKyLb8z412WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764768774; c=relaxed/simple;
	bh=75bZYHuIa9fcaCeXih311Yezk1AM1eE+SWBFxBNK2Qg=;
	h=To:Subject:From:Message-Id:Date; b=aSiF2Sv1apnBemhU4qnvHLR113qvddU29IF2AVovzR0W5B+G5fA3r7iZofr4ewX2eN8dMmfzpEurBCLCUmXb8ln6uQeqp52bKPUS+xzAUKPDCaxjhHDYsFT0GsjdvPHxqwAgbI0IOAs00yAdXhMG3d+Xg7unqF6a6Ikg0hAkgtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPCNchkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPCNchkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B31C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764768773;
	bh=75bZYHuIa9fcaCeXih311Yezk1AM1eE+SWBFxBNK2Qg=;
	h=To:Subject:From:Date:From;
	b=sPCNchkKC4B7FY6q0/i9blfTH9BWnq7q1Rq0btDVMGKf08+uU5GFsWts2ElvCklK7
	 WSuOhmkyHSZO49nrDRrrmedxgf9zhQRuL1usB1E6u4WJtMRx6dS36gHPHOxxY7q0Fi
	 DQD3ZDli7Qhbnws8UJZhQVdFIqOdnEmK81Z0X1cuyhi9kCXE2ok6fU9mqKGGt0S1R6
	 /iBKJ8uf0GGWUavHdoefqYFnTDUvD+dUf/nJ2xopjxrVISCXZnII1J6J6IHng100TU
	 OEquRRAoGiY1D98Y6bj3FRCCMpZ+verXn0mcsJGbjKHrFRfgd/Z0V1mNkvkQmqzQxM
	 G1N8tp1v23/zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E15D12D5F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476877358.8588.1832433766161096690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47af38399e39b7e0c2183a7afb395711b6f784492da645d311932533ad22cd9
Date: Wed, 03 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764768773
