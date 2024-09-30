Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E0E21105
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727691354; cv=none; b=hPb37ZFTufFaQNstWf8AQhr7FtpDAgXidD9c7V+ru8DAVZ1hr6ZPU2I3ekBcFrxl7oMAPXX7sMEia9NSR2DJCcjtqhxtlS/7JjdfKxBrTL01+waho3Z3GPfYvrYhkG7AYm4Z3kFlYMNXSUuZitSo+UWeurPNZo+/i3wUPTv7q8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727691354; c=relaxed/simple;
	bh=y/PkNxD9tH04u6Q+kn/2ELpt9lot839WfeK2X1mDIz0=;
	h=To:Subject:From:Message-Id:Date; b=d5gdC/ZrBXGN6opH6JDa62OCfyqWflVBTJW6ZYYBZd4hU31nCLPuEiFmwyiMyLtUjHBu905vlYk8j1mMmCGKVZwAUerA2INm4651jmylAOEIe4XRbv+pz7Y8d15jjXtdoKt9rm8yRSHfbwdyciqf7U3/Jf5DOnuMiAOJDB2BLUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rz35PtDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rz35PtDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C64C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727691353;
	bh=y/PkNxD9tH04u6Q+kn/2ELpt9lot839WfeK2X1mDIz0=;
	h=To:Subject:From:Date:From;
	b=rz35PtDCh/KzPFl2+2KPALNEHJ/UhrX6SVx9SclQ6T0NtzcwQI+hyXWMo3KU9UiBE
	 f1jTYoeTBVr3Aa66k/B39rh9LOC3x5HxoknKyY7uy1VnKgDU35TnHTOeHA8rIK68pA
	 0h2+ZpBZCXXAUpznyJBJyUP2PJsRRyRVbY+9AQwDnRZKHomwKCVGzp/unuzpl3mt2h
	 1ZMjlaiSSHteo7SSLpFPFVQJ6Grfxt5xHMH2GjrqKX+JGuqWBE/IuIHps14Du3cGMI
	 TD0M7cnSOoUQ8PZZ5O5s5JDIJlIbS0T/MZnMuqGv9CfD/QnCDNnjHnR/28LJiGlAuF
	 7TLiPo+CPNilQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E8ECF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769135359.11381.12793181862264226754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926dd04588761d89e5703f298e02d7998f33cdd2141d4dffc08614c3ef62127b
Date: Mon, 30 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727691353
