Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9311A01CC
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743735594; cv=none; b=BRW2e1J5vXkRQsJ2PJwIFH1wgbASDxgFqa+v0JafXygYpICGSQSWCDFCEp9aQDfY0Ar9jcZZQE1Upo4W1OMgmUSMUrBxehF5TccBw4FaHhrMWkmXvEuNpMb80C6t/EGAgOj4g/FQPuTYYvOZD2hqeOluXyzv8RVQapUmyoG2xcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743735594; c=relaxed/simple;
	bh=G97m7F2HSj/RWW2cwrtWx5oeC2POTQ/moN3kNGrszwY=;
	h=To:Subject:From:Message-Id:Date; b=PUq7MstNbBU1kqGLpak15aQDlvYVdban5ZBkHaCOXBEPvu8Vr1iwzjglQ8fl3nFIGPoiZGn+f5ZCtYweDZ4D4lF9OiNtZruUWCxuoZNwj1WZZjHL/IiWkcRw14e0SWHP45cs1jwPbfCe64GSPPdv1B9ufKtWcrqyxxoH3kZUzMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnTj+2fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnTj+2fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCCAC4CEEA
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743735593;
	bh=G97m7F2HSj/RWW2cwrtWx5oeC2POTQ/moN3kNGrszwY=;
	h=To:Subject:From:Date:From;
	b=CnTj+2fskB3MRRdd0RrTwvkkQvLmvrVu3EcPGMab4LjhIxsU2wiTi6v7QCwUpwhQ6
	 JsaCX7b7Y1sR1gUohWC1R493Zq8f8d9ijQhySSkKPs67XHQZ8b8EVWWTBBXayZg2Fp
	 9KUslrYjvwuCHiEhutNe0OuSESYIgTlCb3wpKKpzLBpcKVP3+mw2oBs4+hgk/ah0sh
	 vfSi+2FGelfFx+p/zp4FL14FDXyP2s/ZGNG0x6zmB2pu6U3V1gyqZW7WBTSvGFAatk
	 wRKsFP2yYsNgBBlsI9pqOS741IN69SQH2z+CUGp3JFgR1G+TvzUqEPamf6Lur5SQSe
	 jPeZgRzIuJg/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C24C3601A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373559365.3471.9007460984481671207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61481e587210f3de5ccd0e9a59cc518564ce614e29f43eaf0bbf96ec86e55355
Date: Fri, 04 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743735593
