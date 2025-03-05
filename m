Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B66218CBE8
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741192134; cv=none; b=GBi24WuBSmk9hFDZEiCx2yt1Vbo+uWFFzzsJ2m42rTe9oM61zIN001gPi/HWZ+F2iDU1lagiKUK9JHaWbmOpRW6FZY7lBYlLGeWX3UY3pxWbsCo1V96uRzn0buTb15Y+l0naRCcaTDA6YHAAjLgl2KgaLg1sfLxS5FEyFaXjsWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741192134; c=relaxed/simple;
	bh=OoP/uX1AHV718A6DGxIWjQUHwxmhLBFIqR4osMMg8s8=;
	h=To:Subject:From:Message-Id:Date; b=DHSWKZUB9mePTU3Exp0xSGzkvzGGtNFGmhV6a2qEKmZoGKxCy5w1EigXG8XTlD41JY+X3nacTdMO2dKyAf+aLdsRLpjLJ3qpWt1zmYE/8+deInMTdkyv2g5JFX+SkXOryOKBhRrtZoGSyhgi+Jx714mQAgojxa8jEDkMflNhyCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlOWNMfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlOWNMfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5E2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741192133;
	bh=OoP/uX1AHV718A6DGxIWjQUHwxmhLBFIqR4osMMg8s8=;
	h=To:Subject:From:Date:From;
	b=hlOWNMfEWhUlOmeivGgjlGc8d+x6ggdJyZmlDeaAiTAD6+97IWdTrn48m+serfrQn
	 q/pe6JLQ5AvDYU6ABvQTLZUbxQjwxm0yMCOOHAxxC0gNEqlTeCaKVsdAIqZDlFC3Sf
	 qmrim89gXtV+IuZD13f7WqDsJ/3c8CBPUHO88cW54Pa08ihm/BC1VfLiobSrwV26o6
	 YvA2DwrEpJw36zhIj5q+ljkjFkUTKvRI6WHKYtLWPvHTz7iLpeyvWdKMO/ruUw8+um
	 Vwra6td13BMMooECU77OHkzGZFaBz+5vPcioUfYMTcOzvK5Ry0pwBYnny5tWz3bnHS
	 gCTt+dwihmV0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98280C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174119213361.28086.14527302532784115243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec857659329a15f682c201043372a304e01be108b2ca17d6afc1e8d9c700cbcd
Date: Wed, 05 Mar 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741192133
