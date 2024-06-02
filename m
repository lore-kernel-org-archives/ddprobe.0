Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476A457C8A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717347323; cv=none; b=LBJ/lDJ6zgkKri0j/RGIFuo2keNg3lNbKfAoSRazmNgGFPra4cvTDepORlEO6MHtf/0tU3CLtTONXxTbdZqQdyEdQTJd6k1PUunF1W3m926wavvRH4XXZE+CEqGfPw6xQ/QxbtASEC/L1QiHroufkT/VbNmVv5olg6io28mrJ0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717347323; c=relaxed/simple;
	bh=W+2jVDb2f6aMrlezYLRUpFR5eB7RLrte7+hfUf87Ew8=;
	h=To:Subject:From:Message-Id:Date; b=SGKOHatLt7JGg5MUYEayKdPSkahPAAWFckFB6UAyuEQQIdDChwBFFOfmFATHVFIrQlceGcRdlkg7M7Xs0Xv8DtlRQaNYfakdH9myQPSuUWYPTQbY30x0F1EJaCQ8RGgwFXR0QvqXvrkstJwCq5I/J8a/SlkDlelDJX6TYJS2U2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHc6jxRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHc6jxRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6309C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717347322;
	bh=W+2jVDb2f6aMrlezYLRUpFR5eB7RLrte7+hfUf87Ew8=;
	h=To:Subject:From:Date:From;
	b=fHc6jxRxj7wDxpOCdZ3SRHal+1iOe3xhiYv4oOgF163MK9JuZd7ICXs99VuH+m7J2
	 ztHHomHaI80VtIQFV5PxixF9TuHJEA183VF+oGgxeDhA72ICYCtEDCf1OOeRqjl7zt
	 JUNnXFOZ+xhU8+zvQxb26ZIapGGuAn5KKJoPlkj9aenpUsH0jT7z+bDfYR8KKNfLlw
	 QhVCijcR134G7QuDuM+8K3/3cfwwM/VtoTcNxE51wu+unfCD9Wvrp/MDNi5T077V9j
	 P7n6IiNrbUE6+g/OIIDBDh6rSAaP9FfEYdgxqFbOEtOCDiU3v8a4tNi03aM+ZvxE9u
	 hq+J/9Ekhzs+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1452C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734732275.3066.11144363965631938589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83f7c27323baa43bb41059061503d8e45fd198fed8e784c2de30bbaf139cfed
Date: Sun, 02 Jun 2024 16:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717347322
