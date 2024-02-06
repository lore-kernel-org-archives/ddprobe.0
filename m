Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BEB12D75B
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707212897; cv=none; b=LaSFBPggOKyLu9V/ziqJNV0xKcn10I4v8yA/4CpukfWWKqz47WqvJBeHIp9vUyEQs6q25VhCML+nf8nnkE6zPP2ElVupsszIbXBJFJDwE5AMZ/XkgcdeRz8xIXDJz73Hfd9HTybTXYn8vkZwwNuYm2mr0EMCX9nGS46tI+pqytc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707212897; c=relaxed/simple;
	bh=n7UUNRAiKRrad4pkxhrtnWHnDO/uhnfxf7EhSzSgJFw=;
	h=To:Subject:From:Message-Id:Date; b=Lb2UAEZkWwn2i3l0j+oHLJZSQedx+vghlfgr/XYqAMISF8kzNqvLpRCjlcekpYPVEj2Aog+0ToNYCLuAfmR2KbdXkijFt571PXOUqzNyRzjdMKk9tPCkNXNkJsVhy4bZQHztK1WR3f9H2eZEw/p5bWxz7nt13hp79ZTSyCFV/V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpe0103a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpe0103a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A941DC433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707212896;
	bh=n7UUNRAiKRrad4pkxhrtnWHnDO/uhnfxf7EhSzSgJFw=;
	h=To:Subject:From:Date:From;
	b=hpe0103a+g+A6yz45vuU/do07/hz4I0p5TZQAqsPwZvo855f8a247ACuLTT8W8L5Y
	 SCEXin6nGnWGpwgjeRNKp7J+xxmwuPgFClSfM+uyJ8ecXTAwOnuPDcEN8k6whGmkXm
	 JNkmHwQjBflScMfSF9KY76IpUPXIVna/yQ6I8yIInXePLCddLpB8n56PVzM+aW3vA5
	 WbEnkgFv7GKusf3ayVZ21zfueSw9xMNeLENgdwY2hE6GB2N/PiZUBBYfThwLWrSHpg
	 CxNDs3lL4TW4YzrO4aktrwz6LVVjpa3AIqljh4LFSLmUdljYTlMm3Kjt0by4wEQuip
	 y4ELiLxGml2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D77CC4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170721289644.27971.15656714711908596828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd07e21aca25fdb2b6ac04a951f676bbcf72bc783d3eaf576ba3cae27251d58a
Date: Tue, 06 Feb 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707212896
