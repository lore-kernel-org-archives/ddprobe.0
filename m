Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26796A930
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768093434; cv=none; b=OljtqchT9uNIdandTTmGiePGOmoEsr9UbSwniFY4UmPSOrgmfZvA03eMUmhCDZBi7RmzsazCBlKGnfFe7w1eh0cEVjT40uIwI085UPg6SGVPaQ4uwRsW2bTNiDl4GQtpIWFnrtpx5cuiAizR0R6wkxkwqQCT5C+6uGN/THVRy0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768093434; c=relaxed/simple;
	bh=kh3ha4Z6pmjzvY6Ku9ptWCQNsM5vvnLb429S8dNa8Ts=;
	h=To:Subject:From:Message-Id:Date; b=hpAKC8s5ZPXBpyQ2M1ag1QGOo4y0Xwn98SkIZBVGmfEmSAcFlFw+SIikHOTQXZu+c8X720g7wG19KTUvLW4xhYPi+2Stb+d05Xvf/Oo0V8VsxzkOIFHicuwscbv2p/8Y4BgPxpQLEiumItSqPsfM2c/wJoX+0yUY9oJDUmE+Jp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VME5lSI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VME5lSI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C06C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768093433;
	bh=kh3ha4Z6pmjzvY6Ku9ptWCQNsM5vvnLb429S8dNa8Ts=;
	h=To:Subject:From:Date:From;
	b=VME5lSI++4osgDSJG6VoQnWPySWt/DxAGEGKT79/kueSRacMAcguVPh45mxg+J7Xh
	 VtXxiwxEmM6jGiLzBxXx2h5US0tcGZen+pNkiCFnv+i8uIcGg2L/lG1oZkQDfkm48+
	 /wNE2HYjGnOJ/8waMwGh3KNvCl1j2MRvsjk30JYqrp1MTsGJe+gPrUQNN9YECqt7mg
	 iEDBRulczHhqESQS7E10JXWDHh3E132x51EF0Evss3FQGGICzMA/jpKZwvInjVDMQA
	 lHDJIYYPhyeNzdwsuOvyO1oCxCHGtLiH+QcfI8ij89JyS8sNYHQsiT4WBkfDXHpaR8
	 mA9nuvtIis6SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C22D2502A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809343357.28374.1348580611406026065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b4655041896136a1480caf441573f6fed7b6f8dfcc2a94e73933084eace759
Date: Sun, 11 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768093433
