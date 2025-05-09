Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508C322F166
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746832194; cv=none; b=YRTX64NKYmwCl2hn8kPvitcYPQF1I0UpineWTJ/YZfkpn0LL4qqUrW4wygocLWocxyUPAI3jYcDl22wIwJhDGZWF0aqVX3bJ5FFF1BlxWAfufBf5Y+GkAOHIk2BJZh3GkiDoLF48OWTsBRMWaUYANnY6/VoW7sA/J+e0t1MBF8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746832194; c=relaxed/simple;
	bh=i+YSPs5Mzc3oHP9swUu3WLnlRwHddDXupLn+8lV6F54=;
	h=To:Subject:From:Message-Id:Date; b=YYJSDnPsfDMKM+J0Zwqqyk0n8asU8dkdfpHSwySruHsNn6OteRLJmbVrOVZScYz1rP34u4XIoKtcf3iuKcNSktMXJRBCblMj4rTzI+WMqw0y6xhPrA+tPkfXdGUoTRiIvFQwCYZdeSI9qZ+el0oOOLBNwB5f9IOSJTB15IWkgOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrFA+2yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrFA+2yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE28C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746832193;
	bh=i+YSPs5Mzc3oHP9swUu3WLnlRwHddDXupLn+8lV6F54=;
	h=To:Subject:From:Date:From;
	b=JrFA+2yz5f3hDLI3x2eoUjqpBRHu6T2m3eCmhE+VaUBXechK5d/Wpgp9O1zDtzsFY
	 iqTToMfzdFQQSHEtkaeFw25xB7Lfh+logi4tZhVWatuduGCYFyJ5fN/ON8ZHXfOrWo
	 k8JnVM0ibEkOLwaxwW6GVuGw25eRvWbT61KZNNUfddXoLWKQmXuzERxQkesI15m+CA
	 zei52hg7Nx0LGSFCKFQB4wvk8ltyyZLJOBphPj0tIc/EGW0+iGfJcXrrrsf7L/rWRh
	 zhrRy6yOkp/ngownbYNzPP4w4+nTA1LvxYKWXZjZE3BpCvfLlUoL7PfdL4uVEHHNor
	 ju6nYA02qMHHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEEC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683219357.5010.261829624498515319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f65c602d835072756f3cdad457046d752f658cc4d177b02bd43a0653e39b097
Date: Fri, 09 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746832193
