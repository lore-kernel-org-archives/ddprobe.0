Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370F212B31
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761376194; cv=none; b=tuWa3dhBuKhD8oDA6/vWcv6XKK+q9IK59QXya+iWPHOGh7KrIUbw40MgqKyjAclKdku3pcPvOXXRY7XjHayVAtgLtbgK9ekRaNfSJxZ4JRATmhw6T8nhCdIovEjGgpbbEQowh8lqgHIpnozoriTLz2+fq7QHr7hSFJnNLL3zgvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761376194; c=relaxed/simple;
	bh=rby6vL9miW/Zlgc8251nE/i40DGyVvsnFWctizK+zc8=;
	h=To:Subject:From:Message-Id:Date; b=A/36DZBT/bAxg+orM9baRLHtfCGNdoIVGRnugakW+A5MvGGGrY8YGo8p3SzZWBoPsCCBHCFFSSi4+FVbNXB8fwmWgM25zv8z16WRllF30T0W6IDcUFvOWNKXLXShjH+ZWWu2rsKZfuNPUj3smMFMWfUN3vSqIApCF1VIiLiSKlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8SYntQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8SYntQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E8CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761376193;
	bh=rby6vL9miW/Zlgc8251nE/i40DGyVvsnFWctizK+zc8=;
	h=To:Subject:From:Date:From;
	b=s8SYntQCBrsse9cvJydveUzoArqRQ44sQdpJWjKhlvy4dLwx/c1nSMko9urM61BZo
	 9tqGXBOAQI1nmWiTUdEEJ0YOG10MayAYMLi7Vk2/of8vwNLUsStyrxSI8+jh4AHdeZ
	 TvwTeuvNqnolICEN3c6nF3VgPR892C1VF6hL47RR8TaV1aoOSL/YDpzpPvs5HKdYgD
	 0UH1i0kouJgN/7hKAMznEl7NK2UxOe6teZH1TaBEwOb3T46ZUuCye9wLMwW6ItrOaK
	 uNrkGEdIYnQ524jRsPVW+2oLWM7TosIVcginZfn9/lh1nVUNE5Ym5z1FSwRK6+Hnzp
	 jyaB7l09eoNKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3ACCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137619357.16949.4335405520703667309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa044743600229c9e92a2f6f27a9456a484747a1e392279159645a0fefb2306c
Date: Sat, 25 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761376193
