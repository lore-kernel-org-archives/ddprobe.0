Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A24B1DDA32
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738776354; cv=none; b=i189MX+73Ba7OOhbO8eHd67DXL1jAgIPv3ZLW5pNbryYSmFQxKUpk0+EFXeQnkA/2TpPRl2idMXnZ2NdyvV2A824WDKW2nWqWt3im3/ZzwnCsBn6D8+x9DGEkjurpEcIFJCRBvLQyn4izdm4KPMZXRHRhiZ/S1I98IWdDLG44BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738776354; c=relaxed/simple;
	bh=rokMKevoCvR0/yxoki2WhHSVaEnbBpypxdodJxuVXBY=;
	h=To:Subject:From:Message-Id:Date; b=cD6RRzkxU0Yd3EJh5096ZfsnRS45gGrjZOINaBoWjdkXUVSTRN1vbOBdqChlJ+M1XXpi5s8lk9zAOYZxIDaAc8uvtBTW5wT/BgjeM6RXO5rSHXDB174F0k3E+bz+2N9EZEuXda6GDTXXyiI+aFDVW9NXFiJ2hKN1TQ87CUIGjlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiFxlO94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiFxlO94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2BEC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738776353;
	bh=rokMKevoCvR0/yxoki2WhHSVaEnbBpypxdodJxuVXBY=;
	h=To:Subject:From:Date:From;
	b=YiFxlO948Haz0+axvOU2/oR5R5TnAKD2uCPXMC5cI4Dj1bps272gHwk6Sm38GZKdS
	 hy72dHNCHXQao51cCcM+DiUXGKxlDWm9thbm3oTIpN4Rv69RMzTc6FqLD+NxGt1X+f
	 WLT4NO98Qs1iJ2UCEwJNr84rfEBHNdFiQ1eSqlecoD1KQFTWATcL+E23pA0/cA3sBr
	 9ea2iFlTJMRJC96PJQZ/Yi4uT+XOUUaejA+MQICxnY7vyGpfwMnsEvNqHUJbOOAVxP
	 WpviTYf2fUw8zy51Ksu4RfBgozEIad1L9ZJUsGDdzcpWpZhI49KemHc5iJ8pH1sIly
	 XqmKumnYatFtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A501FC02198
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173877635365.17294.2118108229737022585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3724f8c0000e7e4454ca13c852f43628092c7b7b6ead643545e9e039916e95fd
Date: Wed, 05 Feb 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738776353
