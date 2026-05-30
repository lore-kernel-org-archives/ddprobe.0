Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574CF36DA18
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780122214; cv=none; b=BUcLOtVZTa/lnTBect1ZCQ3E8AHwsJnGB+0dh3E+FZ2vILP4AdC1YsBIB/RsdNZXabT3l/b9TYbKfCINTPtdFLevZHh3pmFO/94LgB58WGHBskVtXM00FThqyA/zX2PvDujX9CwAS1RoNHdKMMWQ3MYhnk6YGRoZ7BpZ0HSx5bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780122214; c=relaxed/simple;
	bh=ckPUcYwEwn/GQQb2q8LVS8/oA2uXl/sHq6yGAk1UszM=;
	h=To:Subject:From:Message-Id:Date; b=d3bZxiQdT+mcHUfU10DHo+PpDdFG/7m+shme+KUbv3zGq37GoH1I8j84FwJv+f/dIQQllnQJxNMxwaAfXKTc+WcGCnSxyU9AohTNz4R0jOr5zyD9nN4iqd5HaFoPWqzh9t2qIoc+qltGnCaVUhlk84uzcKtfxHWCeKyZyx8MuyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNu2Y8QN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNu2Y8QN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5009C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780122213;
	bh=ckPUcYwEwn/GQQb2q8LVS8/oA2uXl/sHq6yGAk1UszM=;
	h=To:Subject:From:Date:From;
	b=sNu2Y8QNlIfbCCOgg2j7gaWzUC9tXdE3mqvyGqN4UZn1kNMUnLoVUxo8wkE1SJ9Qp
	 4DlhM1YGagEUKPUzroqyMkJUXirOhD3fJrC8MpkNr8hrREB/2a/6AEPntq4RQlbqg9
	 FzpKPnNmInKcUiiwHMEvMZVoi/ntF4860b2ZhzbSIw5+F/VNK0RK6r0WeU/xNsrSsD
	 AG53Ju9yfySsG/F6pHSPody2SrB4B3/JTp3r6G6VTy5cqfbIbJZ8K8jM4CM0hTGqSs
	 IM46vYy/eCfZLVhy+bhzvj44rpRtGYu9BSIBSbHPutIf0Jepad4iFGmoXMErs9cFGh
	 5GDi7cf98g0xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB1ACD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012221368.18445.10320886693347500726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c2ca4f36bc831d69e9d618557f8a0cb8a19b270b8af5bb3b697680e652df8c
Date: Sat, 30 May 2026 06:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780122213
