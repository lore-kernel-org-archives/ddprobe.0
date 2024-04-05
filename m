Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FE016D4CE
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712323696; cv=none; b=ChcNVoSGXLTgZzLzApp1D3JCJrMQaKXnftcot11pCdGQvB1/NJsZdVAOHrBFT3arLNeuY6idJT0FLYKCbtjThhZpheAkHicuuOn1/O3QyOmK2G3jyD8MSVfTu4oobdrybUj19u4MyV0mWqzoYuQj3379P6R9h3cvrlmv/cwiMCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712323696; c=relaxed/simple;
	bh=kIjJghysXMuQUXh3+Y82Ocz48rB/aL0oKXSG1mwqfJM=;
	h=To:Subject:From:Message-Id:Date; b=jWpjiWLSksxNe5F40iEtb/91S8R482MWXx49seb7/9IPS/b7azzJ1V99K+YZUPJYryMOnBfgzArYiDnQqawilDzY0IQNKUK7xdcTauhuZSHiRPUYWJdYRpzN+5g02V45E9SajWmow8H1XX/RTqY+hKGVXj+NTXsFtrrDxZh9zWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swaU51hW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swaU51hW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70298C433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712323696;
	bh=kIjJghysXMuQUXh3+Y82Ocz48rB/aL0oKXSG1mwqfJM=;
	h=To:Subject:From:Date:From;
	b=swaU51hWa855aUsVwsueHRd2H12iSVjpx/7fEcjFPNGEFRsj/5G+wqe1Rhlwi11Tm
	 8NCa/InAerX4lZrWXfjuM0L/0MfV0LH1cEZRgITDdX+/a/vEpldLs3TLTqe7rq/0DA
	 KhUSFGNdEzGSnYfkroDLIYnjn41CBYNOU71q7OepGWx/aHZqs58Fa34A5HpSzyr815
	 KD66FoYhXNnvpIZVnMW97xNOMADS7GotNsn6JF2FAK3Qf2vXdL4hURUF7X0fGXdxUN
	 pQo8tFjtnIwfMSbLRAOU7RG0xeINjBjLzBE/mQY94eg5X2ZGGb4qcxPCydEUFL2Kuu
	 qxT+2XWu/Moww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60262CD11C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171232369638.28060.10637887420828639503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649925a7e9c10b857e8c8ad79452c6f68766fb628b6081735df58078662a836c
Date: Fri, 05 Apr 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712323696
