Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4B4217F53
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765559574; cv=none; b=BpALcJrtvFp2eYUSJ77LIJLYTENRrxYvP94Taqb4Nblo28wl3Ii07YyAc12Go78DGDBBbNJg8ocst5LqsdO3hkJtZ6mDBegrDGMSLNrv3fAu0pGmisSP4gsAsCDrqDEBgqnKa4elnGcOFB6z/bFWBuBcTyJOo70BjpNZDWbQdEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765559574; c=relaxed/simple;
	bh=ADp5VhdFWxOInNk0DOpVxRmkqDNsEvvCYBhIi3JvxK8=;
	h=To:Subject:From:Message-Id:Date; b=QxKXSqGbX97GorOENLmOamyoTtp3tbfPZ1sAeW/tw63GzdaTq3Fbw2xqVzjJ0OKuT56A8KGEtPHZAa3qhzVWm8h7pXDEfioe1GC6dHMn1eDyLkxunosc5aBTuF3YECYCXe7PSbzx4t3iplVLqiRwoAdk64RJH418TB0Czf+6Jc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwqOtJNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwqOtJNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA54AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765559573;
	bh=ADp5VhdFWxOInNk0DOpVxRmkqDNsEvvCYBhIi3JvxK8=;
	h=To:Subject:From:Date:From;
	b=NwqOtJNs1evOkFWBJ6D4zLUCCvMbggU2u5QTIUCU3S/1wlHNLqK1h+SD+q0cDrDgb
	 t0YFKmACNqVOC0A7R5dzo7e3anz+OY2Sd0PCI0nEP4SUEl0gCsQmf1iOEunkj3TlJJ
	 sYjEdKxvTe1+ic1UKuh8a6ONbQPMByYPvcrlTpSNTCiBLp9cuCh6Yk5nE3cbJdzxWz
	 Tc4bFMJznmaSLEbGVUWy8KCW8/T0TuiWH4QaGUBQ0u9KrlmEyU/R9F1tk5vKr2qP+p
	 DCkdyoKYtBuft6jmrb5ff3kLZZO+hqAsriPcj9MJp7ZqUAbfuzdyV8JvqnOCIdTyl6
	 /UbWMqdvRQqrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95798D59D6F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555957359.7996.8969270591380968873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff210ea2332a04c784ed7e879c1bb10608bf36daabcb72e1afd5d5a6fb6e5600
Date: Fri, 12 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765559573
