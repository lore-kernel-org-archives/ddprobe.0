Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC1F430B97
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772369694; cv=none; b=YtMAFPvKbcfZJMyxNRpzsW6EUspna6GQQf2BuzN/0p2ZBToPhDFdZMO0DCRTF7xCdvDsxF6138dIo7JmjYoyKtouoFXm/sDaj2USlIyAuDLXHoP+TEot6dA5l3Tbiz3URdYG2BzMyJWS9p7KJpKTZO9OsJgqhgOlT3Bdvnh/otc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772369694; c=relaxed/simple;
	bh=pNlZAsAJNXobkA304SWC9Xe/TpCfvQsBln6x1ODkVEc=;
	h=To:Subject:From:Message-Id:Date; b=WRQTnFYn581M1Xf19GOgVVHFFZle6oOaacIpO9ApfpDxIqER3rCm9za2SYs4fYNBdd5lPCfwwbICBwfr1pXVD9JGwfSq+BEva6ayTWR2ExXLty68uXuM50PxD+hPsvJ+48Ca/28stUsI9Y8i3DOmiLED3aqtYbVAegGFhs3Sm3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqOYV03J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqOYV03J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CFDC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772369693;
	bh=pNlZAsAJNXobkA304SWC9Xe/TpCfvQsBln6x1ODkVEc=;
	h=To:Subject:From:Date:From;
	b=HqOYV03JBJMfx6Y6KBqjhl6zI4pBAziUiIotwIOkTRLbttKd6AsEZKI34WesMp2mU
	 O3iPf4JbkkqWwXicY2EkWjtCWf8d59QZZztnrvsk3SLAYLGofBr7xa53dOcgaQwLok
	 rYwgJPH1nmQnpfVN5TlM4haniGXSU+R9F5ui16LzcIl3u3yvG4MDdeMrJE19SMMSRA
	 YaLevBt3aF8KcWD1l6svOkar20HnV2wVVMFEWWVgJObhAQLjJtEPz6gogdNd2KGekQ
	 D71ey81mDLRvAHU7RoHHfnFMvAAX7jz/KBexivQsvi36roavoJqKx+yey/toQC+bsD
	 6yXxWkbz71Dtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBBFD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236969365.3087.4977278942499596308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff80190897cc6acd6b2ac3f94a1d74e9dfa239ffc2d61f53960199adf81d06f
Date: Sun, 01 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772369693
