Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A792405E8
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750798194; cv=none; b=U5iXHN+P+qVGDaFWObqQZwbZyO3R5aPx4thQ8pTEm+tdgyPTXncUO5KTu465/j3956jiHAMYdiDM7Ji9/cer7BQwPm9R0Jgq/2xLyZFR0d34WOgKRaAb9cx79o3d5JLyxs0x9Sh4FwMoXmT8xzxEROzk1VOFg95y74lYgh21ggY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750798194; c=relaxed/simple;
	bh=BsZ1nTpnQp0f/icu4siyjSdKb9lz+btWAY6SUj7THXo=;
	h=To:Subject:From:Message-Id:Date; b=cNIq9W70TnDB62H1TcBV/OtzKYYQvBi9Lqf39/xnwfj1zdbyOa5I3ROsibd0qqZzfrj+jQjp2aPRf2BK4hCx2ZvVyo2vXpArFgjdUzBylgOSkEwAJ1eyjz1NFwFscpoBzXKeDeKms4xyTTAakRaulzhspE/l/2y2VIbRsG0wH2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=no26HD+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="no26HD+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36FDC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750798193;
	bh=BsZ1nTpnQp0f/icu4siyjSdKb9lz+btWAY6SUj7THXo=;
	h=To:Subject:From:Date:From;
	b=no26HD+CKEH1P8ddt8XaYdgTZVUd5iLNawMMdWAUmlEdp0o+cm680fDQKFd0C24zG
	 xkDUWIbu5WfBNuZjAqtKOCqNs9QHH2diJCsN4uA0PthIxr93fvqyP6cVhcfw8wcdR2
	 WkP80fCtmtdmcC7q6ti+JQLLsvWTiw+jqYTIis63zUWmmPxchozGF9shjyvGZt3auS
	 vsbmib96u6EfHrMGwKhtVNTu3TLQBGpAvNzvuRObiWv7s7XLa9Rluo7iS3bYxZbJpy
	 7tAJK6U81bbY7m9pjsX3qjIAnH83S+YkmLKSq/MRjcf6Wqu9Nn2My0zScJUq7hOFUC
	 5M0JuKc0q2fdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93384C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079819358.31773.195941928684903165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d8be6bf6ee44f9682ad06319093e3defb01aff4ea3d09cf23f4bc9fd48f460
Date: Tue, 24 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750798193
