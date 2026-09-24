Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560FF2E4257
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790253034; cv=none; b=Osc2vfD/RywpEPhpz1FGiBK0HvDsBfXpQXxx/cBJMifynmM4HpENOdA7qa2BaPB73r7vT/sidvk+3oDVBtN3KyOVil0mIr4RdPyXNSKCsSCLc/K6qPISqi8JKFtZRtYufVvHtsDz8uvvNWv4XO+tNbEYz0jJ/7yslfj9cHkR5MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790253034; c=relaxed/simple;
	bh=LsqrJQ6EFGykw88OkwVyNK1B1HcASkT7hCdKQNm5bxg=;
	h=To:Subject:From:Message-Id:Date; b=hbAH4YpiRMDqrhcXeKUt/22JpthJmnT/X4i8/c8s9SkrLEKoCXMOo5P/w3Ls9crmKkypbBdT9h5hGIDOzGCrinY8lSGbb64Fl21QD1VN3mhFFh02sXqg3zc71hdf6UhwzMpjykDJcq0NwfftT9TyUvwBvVa9ZnLh99kcmjJtD+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeXJk2Jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeXJk2Jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F3DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790253033;
	bh=LsqrJQ6EFGykw88OkwVyNK1B1HcASkT7hCdKQNm5bxg=;
	h=To:Subject:From:Date:From;
	b=DeXJk2JdPzFyfekju5tdvzvZ1j107UQTub0cIqdaEsxJkGgXSAD7iEOgmSROKFDV2
	 k+nMqil/SMxlq8mbyT+QGbx3BYAVrAdXvny36hCTmadEBMVTea/7tfEwWVSOEa/z/g
	 VuGG7N2MgHrmr/wkTU6W8brIUWoNuaDl2E9gbsqe110ddtRcq+V8cc2LKIgEaz7WFd
	 WBzSwNPNEt8+NaqTc9sOPM2TSDQm1gUNE+SHElHLziMPIQPg0JMeWxkFXxhbs4FR0H
	 gyaHuu/8/DgGnuTE06iiKvIPGuuzZLCEG4k7z5HsO2V+KAv3ulqu4ywEva8zHGeRTV
	 JZVC9PmVdOMIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE59FC98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025303370.11839.8753053713455545552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a032934ece613337f846744f74a49959200fbbb3000b4992e9bd035ee81038e5
Date: Thu, 24 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790253033
