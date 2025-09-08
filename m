Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1659B374D1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757292595; cv=none; b=YXZR/1czlHHGnZTzsHma3Qv1pcg/6mG2LNrslD00fJ4Yyy+btPSBhqybmYgmxpIcklZKkuvWiBElWqX58s2vIoFHDLLVoGi3rKwWSdZEidBYgVtShJLzmLzT5eGiqUUAYLLIREDEtNRCFuHahOprZYBR0gceGLgNeOpQKkUo4yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757292595; c=relaxed/simple;
	bh=q5FZvIFlal/mEXIw3j+HpjZWjHK9u+PHgdnEsZ+uY68=;
	h=To:Subject:From:Message-Id:Date; b=sgBQxO2bV3/LkwLpiF/uoYlbJOQxqmm8sTf2gucQax+NvRtyLQ+x933TVoXWhN3N9aaDm+3vX2vXZGt3hOYs37denbb5f1UtMIvnkA3rL0Z9y5azExHU+HnTaSysqUGscXOkl6WVQZ2KR3WoWI9QTUWzpx7XUXVlfryiTyo0gnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVLYgmDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVLYgmDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD361C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757292593;
	bh=q5FZvIFlal/mEXIw3j+HpjZWjHK9u+PHgdnEsZ+uY68=;
	h=To:Subject:From:Date:From;
	b=RVLYgmDlh6b9IHc5zypLgDFpapwZRa5wV/cWY1Ku5LO7AcheYtZ4BGHEQtzk8IFd1
	 Az6xgYCRUvRekxfW+DrmVYrdBWlqaa3Gy4olE4CZa+4Qac8zqMB25EU0wuVnYV4iW/
	 RucZiBLyJpRGNePrG6bvo81lNYFZWwo9+T1vAJyYhRzMXoBQ8dXZs7sfCMsqXAq81t
	 ZfRC88W1U18Vj/XdPoCVmIja11kRyglTXNFlZKVU8i2cRchWswaa7LQPaVT751hgsN
	 FZ7i3dr/Jt4Jf7rTiTO5GWfYJTjz/Uq5dASwAf9FZHFEnqS5hPGGfDMQfaqo6Euk4o
	 pVDCt0yjWlhSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B064CA1017
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729259360.13154.11507899248009035885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11807ac561b14c5ebb1121f398aecae8538aa0e692277af0ed1046f4037551b
Date: Mon, 08 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757292593
