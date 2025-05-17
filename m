Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47665206F27
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747501195; cv=none; b=IunaG5wNezQJQ8VJVikGRL22HqWIolyHHwcboAjnzOfuRJqvUXRve2kJ1/bCENZRVUJ1Pm+epfaPSttGmKM8ukINxHOOGPhMuyAOtBRQV2/BNTj088m2VHJ6q+StnZVNw3dzGRET5lk5BG8ZT5ux99ptnojY+fLB2xBI4B6erYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747501195; c=relaxed/simple;
	bh=x6OsTp1qjR09szuVhEhJrQsvlsA2sMJU0cKtwDnl2WQ=;
	h=To:Subject:From:Message-Id:Date; b=H+gJrK/2C907kG+TOr0RIvnegagOHpsM4H4f8nIZ8RtjlKavcuxGlt3+PhXkXTaRBlCGxs1majPXD1XQukN+ujrW5CeyFVmihhjdkSUxZTBMUOlKxCe83fF2Wmh/HDLTami+m1PKMmk0D8CAdYVtxDZxmtBLUcshoPAkfmKq4Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N29JIZyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N29JIZyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A921FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747501193;
	bh=x6OsTp1qjR09szuVhEhJrQsvlsA2sMJU0cKtwDnl2WQ=;
	h=To:Subject:From:Date:From;
	b=N29JIZyzwExii+tHjBULkzjaX8dP12siBN7GgAYnmOS5roc/TxtF1KzPbYPCFwb7K
	 dsUJQO0QNb6pB6eWmFH0kTL5jiZkSQqU6l7hajUaiJycuqi4uqOMbFtmW3hu1towIu
	 iwc/vODaDqkemnbaYewoaZjQuTBM38PvyOQNjKV6MscPi8EPP6rkx28gFdzLI/bPtP
	 HQFnNGaxAqjfM3nnCFVf2vbZskX5cJJMt+9zZO1ArnWyXfoNqvU1ur/mkUgHbnTbPB
	 Cnvj+Vc3TwyxnjvS5gwbs+gPPUnRGT+yw+9CY+2Ku+hvoqT46EHWqM3lo2Hez01aV8
	 SofrpRMZvDRow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B18C3ABDD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750119358.28662.4386170316690836915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20159d7c086f3aac26a8e2a6411c52510e0c209b4dead5ef5ad6789cbe464b11
Date: Sat, 17 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747501193
