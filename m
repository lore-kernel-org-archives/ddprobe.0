Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1EC302CC9
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764582774; cv=none; b=rKbrSxyQ/yuNo9MZ9ClTZnYSuGYynMHaAY4CKscGNKB5IqeBXU9NIc/b/d0AOZonEc/2qag7JaAHClQz+jsj+uwNaGsnJJ1NWoZEsLJJTRzRAPtiIuTHNnRKywcXZX1vhApUUO02LISS3aTUNmPQRBaVnoTasd1c+xKMElL7FnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764582774; c=relaxed/simple;
	bh=5bs0SsVzrIqwFSR8HD3ZubF+UAK3biDeM38oi7fnBLs=;
	h=To:Subject:From:Message-Id:Date; b=Oiw3iaSais8o0eRa2hsZJgyX8RlH9RzhjEPeE7hxs0oNZJlBVMcw09pkZBRK+laJ63qXpErV27KEgbrS5Qe9Mboso8OU0YtvBdhBZaKbZyuqmy3hmjdfK9/Tce2r4AvBNr/a4at+nTFPpcOnBu/xfgY0BFojEEgSqgOq1eH019E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQiRQD5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQiRQD5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CABC116D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764582773;
	bh=5bs0SsVzrIqwFSR8HD3ZubF+UAK3biDeM38oi7fnBLs=;
	h=To:Subject:From:Date:From;
	b=NQiRQD5QiRAJMDg6eG13L4MVdExdbVL6DoQczNG0G2xOvrbnMd+kAIoTbpOvFUSFw
	 h+GsPPezxnJtE8XHLor++PrFKRBsvFEHbvbaHtkmaEbph0JyDXlYTfImeyOnyt462H
	 fDkpn41w0Tm+dX/xRqbc7+kSFWO7T8i+O0qLH4hHl6ONRjCSDyf+bhsXWf2S07SM5v
	 +S0cvpmc5AEotWbQRCrQ269FzMU5a/WxcU+UsZu4XHcy6cH+xZfkhuu0Z6KSA3u5I4
	 WaDC3EZ/V4etoQRpAUbEBzgzL8fd91Rjqqt+l/+rhkVID3HqB79RODFEXIWz5KI6Ts
	 7kgThyCX9zGfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF41D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458277363.27893.4064501398600863105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d298ff16c13f6609dc97f71fb8055f80d004f860139d0a6e4ac8bdb8dd09a66
Date: Mon, 01 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764582773
