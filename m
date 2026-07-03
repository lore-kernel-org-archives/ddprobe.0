Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472DF433E92
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783118314; cv=none; b=QhMgc3niE+JaDQ3Fk/KONQxpMxMzgTKZnjWBeCHf6fE3DOTLGoV2/CQK59A7xrz4V+LriKKdwiOnEfHHLLytY1IMsWtNtwu/y+r/KkeUCs+yITyTno2TjM+CryaQtUaKi0CIpnjz2A0GGrKpXdIF4QFytqlfMBN8nscD7hbMksY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783118314; c=relaxed/simple;
	bh=m+SDqB5D+lfdBmBxFQwvjN9lEX6G3j5ULgzQ428qjKA=;
	h=To:Subject:From:Message-Id:Date; b=AeD8N47TLlm2N9tvIyEp5GVyDW5a55+zz1Fnghl3t7OuMkatRjofQoypJyLnr30w7SI+rtm7tboXTKv33vF2yh7RcVhir3x5LoSp0288RsLZk+1bR3gQhI4EYFU6m1CG2Pi0dIBaCk/AOW2PDQ+JSll7vNLVKqFa/IPzTTaR3ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJBtDEO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJBtDEO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A6EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783118313;
	bh=m+SDqB5D+lfdBmBxFQwvjN9lEX6G3j5ULgzQ428qjKA=;
	h=To:Subject:From:Date:From;
	b=eJBtDEO2IfSu95M6bMzJWEEhDqAjekP7l3/yFbHLdtdqmpqQOQH1gXEvZ+ToLozd4
	 SS6tECJcE/CNpP9RVRIWuk//RwLW6veJhwIIcwd5oLOdu159av27q5IAOVrE8TVRu/
	 Ikv7RvLZXleWDfxn8/DFSj5gQd+tkH8uFP0auhrV7wZ+LbGfs2baBUlI8gO97Y+dXq
	 j6iKyqSEc4cTirDBJx9uIqmqW5FRYkveCkBIbG6SRdB1+uxuingb+neKJ3OFXZw87E
	 FiRbQ5mCc6tdmouVs2jwApCXtIVr1a8FMk6ViUvKSHdv25/dcFeZiPgvGvpLriruUC
	 bmIn3u/g0YI0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6BBC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311831368.17304.10315558929200866111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e9094e8c42f5a0118b0ee284b1657e2f756f3fb22629018ef59b6eed1f7a8e
Date: Fri, 03 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783118313
