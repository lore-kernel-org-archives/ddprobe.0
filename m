Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010311A9FBC
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771899894; cv=none; b=NR3Who8PtyHEQcrxhuP+pBSImqtocyUKp4yTQXUM55c/RWaQL0z5W7Ceg8QAHCc3nN5gTrtX6BX36LIzNL2JhmsyCy0CPf8/ZD3K3JcSDP69iwFxqZOyrhcN+LZkZnGoBkwzkNvb4Bp4bxoMwqf8kZ8mhe1lgv1iGFgUcMswoo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771899894; c=relaxed/simple;
	bh=u3xIx3q7O6jffR53OxLZGhaMAqf2rR8blgRtQDuhMbo=;
	h=To:Subject:From:Message-Id:Date; b=Rpd+N1Hl/Nyamtn2rBWuRmHxQc2A8VSu3qCOb2FpTHD0zQW3nkxEyOyc1NarH0nVfchD8UrO+aBEdOdyk4PfTEeG9eDuYoix46MTYYWnKP7HP7lkZU+A9uRmUXN8NcBFDl2EwaEYdCpJvBymDgCMWUOmfPqAv2lgcXpbrTs3e9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGdh3PPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGdh3PPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E7AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771899893;
	bh=u3xIx3q7O6jffR53OxLZGhaMAqf2rR8blgRtQDuhMbo=;
	h=To:Subject:From:Date:From;
	b=pGdh3PPnFmmEgRIMJDLqUlJg15/tUMAkK8T+7M+esuwJCau5tLXoueac/FPWBDN9t
	 yMyToTANPPEt7ZuvhLgh8xlYck8DgWqi/rPpe4Axs70+GSlQvf/nhtZDfplNjNvL/G
	 6kzJMblD4awqfoiPcXniPnwhuvsqGb5eQdIHhz8ntAncCTizGRLxvhoCE2fBUJ4eyd
	 FSDWkrIZ/HsM0ypABi/D07M0mkG2z3KpyfihJh7srrI/XqMsZZxh/omg83bX29pnQ5
	 tHkAZb9W/cJAqbmKPWvade9kUqHWBAJVF5tKDPW25GKaWLnkDzajK7uK0vlNxyBvmx
	 YbdPlrZ2a1JDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91034EFB7E9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189989358.9818.6304229319424250720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f618a6760980ae034f91e2402edd53f2c39d7d1918f443d7f6e1dfb5356efc51
Date: Tue, 24 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771899893
