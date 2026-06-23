Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8782EB10
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782216994; cv=none; b=tHUNSQrcYeDqxXEt/PHJtMsE0Vlg++ORoy38gcoHGpLc4AgpINR0Vcr8sI8+0AI8FwY4VYmVb1MRsuYYdpykP6WwG+mX91x82veabHjCJlbfW4c5hbwdlgCabCmJ79pfpoXPmGiAA58YYB+k/6WFsJLHwkAcNWo1KzYRcPPW99o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782216994; c=relaxed/simple;
	bh=sPaGkQ4cdVmcOPHL1HdiTTpKPkOR4rjQXV7Ia4r7zSE=;
	h=To:Subject:From:Message-Id:Date; b=crkiko2M3e4SXqDfm39+EOCqDlNka89H3qArXdXUjqMrmNcbVKER1rJbBFqogh+TNbEj+QOUkZvkq7iDntNYwUOHtqA0mO7Ffu7bIx/eF7wu2LaHZ6Gu1mC26KeamkMlKU2/nY/xRI7TsJWXgffjtAJE0JLTKGJP/E/LaP7lJIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsZW89B5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsZW89B5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3F1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782216993;
	bh=sPaGkQ4cdVmcOPHL1HdiTTpKPkOR4rjQXV7Ia4r7zSE=;
	h=To:Subject:From:Date:From;
	b=nsZW89B5YgLsSI2SfaDs1sM8OKkFEr2etLQ40/+66+gEPzjmcOJEpbpI2ERvx4mBw
	 GV7D8dyFCREDWdBltSe36zI6EtxHhc/yhM5SVVWqYBfArraJGIqN+acrQ7o7ATQoy5
	 TVA2bxYkZ8xr/BK9tXDW7c+ZXKLoGGisBK30PtL6R/rvcPCbTK0juZTcBwkVvdrOoj
	 PXGBEmCcge1p7CLQ6Io+Yq8pGucUmzIAibF4jodxqhnD0xrwijgVzsrMw0XnH9I5Mr
	 EWzOVJAWM1Hk35A5WaaYyGGVfixHbrP+5Z1nFrfrfhsi/O1yLbVlEcLQNFdkaa1MbY
	 oVM3xINq32Ckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE963CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221699370.18862.12085710286589382858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324b1d16f7657a654792cd119ec04458dc19beb543ec14a6c55aaa2fc3ca6029
Date: Tue, 23 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782216993
