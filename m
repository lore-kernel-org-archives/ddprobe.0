Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3580931A046
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772858094; cv=none; b=WhF2cy76GePep0ptKJuBvSA0NwL82rF/nfBYDgSvahUP6vraKtgTj991hTLXxfz/ZTDRCt1NdwTsnfKLMJHhbcoz6rtidKSgVGOkQiF3CsyxMdvXgikY0aZawmEsUgKG1fJpXRoY+q1OlKLr3q6ST7NaxmZwkYEIid2jxgoe3Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772858094; c=relaxed/simple;
	bh=t6fx81NURzo4udbl1h44wPG6p8e+WjqLPjIQCWHhnXo=;
	h=To:Subject:From:Message-Id:Date; b=eBuL2PF7sFQFXIGwCMGCVMMOjsUl2JwZ5L1cR3fCEGK0capzE7jzZyk4XhiT3KSNfceOHpijc9V8sKWZtwMZoqxeSAdrXjs7y2Hh384jqIcoBIoqg/6hIJDR1r6EyvpcfEbfsc2AJvYCxsj5f3tRmR8GFsh1tP7gAGcuH/SvylQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6xTC/4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6xTC/4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF4BC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772858093;
	bh=t6fx81NURzo4udbl1h44wPG6p8e+WjqLPjIQCWHhnXo=;
	h=To:Subject:From:Date:From;
	b=U6xTC/4+RdzEP4g5DFgjhX4ghDGlHf3QFtQER30PfA8ZIEk9GtsOzOo6Tas8XVJRf
	 iW0V+TS4Scn+LvJDkTcUkQfgX07RCEzbFwQNS0KlfZHrwbXMOd1fmH4rihU+Mx7JmO
	 G8f0TFmPIGloTq+o7H3SBzyeHIs194YK3fN0FUluvivyVX6lLsDYNnaqXdEmnHa4+D
	 F95PeSbDDttghAlCwVW3RB+lZ6S9Y60dpSluRO7muX/kamhn6IDh7PXCNFFbG5yOsk
	 xCdZztb7DFMSABo/kKDlZkMtSyBKckT9BJXgTf30+qFi5wJ+NJRTD/EkghM5RrB79r
	 N5ZMOhom/nujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEDDFC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285809362.31640.14722251504742403096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1807bcd82eb37d9156fd283124fa61117ca83897e076867de3f66895b7b6c26
Date: Sat, 07 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772858093
