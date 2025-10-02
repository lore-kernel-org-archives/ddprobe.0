Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37664259C94
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759424995; cv=none; b=YsnYqpZjEvF21iH3+/ySETZyQUr9Fy8ZEdpbIVDl/5PDvoWEiYMcXOsaMxiWrK0mIXL93r2XPiM5n2LMKqTt1ndtNJ3hJOhiYOkPumYO8INe4k28MZyIIHE7Z1x50FsqdesN0yaNbZj1k/SEurTks3iPPye304cYwHMwumVXTjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759424995; c=relaxed/simple;
	bh=Gzc/AUdueWe+b39mekFIxOF2EG25ZSeOvenBgXwl4dI=;
	h=To:Subject:From:Message-Id:Date; b=WhOwGCwKU1k4PTDsh/6N/b3572c+Pbv+jHQs6SaCJyCJqw9YjgmX0YdRO9gk3sxySlUP+7BBZht0DoBt8kRS1aSUWK1fp9uj/5l532rUPt5rIqpwfnyLphKod3lvvoJjPZ9dLvTNsrTwCFb1Ii4mK0ylTDoWKQzosQSfYOSr5r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ak/fZex5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ak/fZex5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A20C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759424993;
	bh=Gzc/AUdueWe+b39mekFIxOF2EG25ZSeOvenBgXwl4dI=;
	h=To:Subject:From:Date:From;
	b=Ak/fZex5QCktBdml9MfFdZEkIaCbAx/8HLIMmVS2oiUs+cMVrQ1f7oIiTw6vBYc8c
	 xhkib2sWdGNzVxCb2gHcAEXv1mi5oklFXOx7KhYixhDAeIWALYicIsnGHMWhGVofhc
	 NA3SkG/3VwB+j6kEXwydi2ZSRsoNKXxgnmpIe6btjQXElyCytlZWyK3QZyn/YgMm17
	 O74OfwubTBA7g1RD7cYCG/Q6JR06H6rQEx1O5EezfJWEnPDvBvL3906q9Cd+Zubq8w
	 kVRE+cVPHVv1Urfi6GMFYbCyybsUK0OyAueKOeLuRlAU8L/i6Aovx9Tq6mr8/cH4mf
	 KmW4BkQDxrlRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90410CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942499358.14543.14463650797294017413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0287d9df869e40746dbcd5a9e98413ebf7ab024cfd4b73475c0f7938fe39db57
Date: Thu, 02 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759424993
