Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3E71E7C28
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745302194; cv=none; b=rJKfWraE+KkH+y2x4oWfGhSU+0MsN6cTcEGEIwko2epxGR8ihmjfF9mkzR+M1zMhfXOho9Slj5i/E2GcN7mWVmQ6NEWNQ6BOrQddeyyjukYV3SdpqQEhK+7OntRTMZmneUODi7cnUfev4eg597TXWQQYnP3WFhq/HQayehWKPbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745302194; c=relaxed/simple;
	bh=lXr62CWXvxVbDooLrz64dVk2pEQZVP82zxXm/0P6lKY=;
	h=To:Subject:From:Message-Id:Date; b=ErMbPCSNhaSi8aS/46OAr7abZvL1gCslGt4kx0wVW29YKiA57Cv7mks/XdIzrOOnGi2KUEhtI9YbKYLyYbgBdYxD+9PkFdUib6fgkkJn8FRdMpNmgA96IVKJbWfmEY93a3SMcVQAx+Atn2aO9hLLGwBZA/B2576TnyjrLrIA+uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1UGcFbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1UGcFbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B8DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745302193;
	bh=lXr62CWXvxVbDooLrz64dVk2pEQZVP82zxXm/0P6lKY=;
	h=To:Subject:From:Date:From;
	b=l1UGcFbUJcFFpKCAGhmnqTa1R5B5083JMDIVdSYRGtvDaFb/hHu11UH0eVPKP0AhN
	 vFcIgFTEV21r0dDk23sAqs69qKAfi28NPyWAbFsMU6cSbVoVjsyo9sFVgquHi4Q6wO
	 rQNOlEm/WX09EkzNrKfQgo0fQLRMmjJ9dp0XyJXqufWbBdHrnYinTirJZa5pyOiVRi
	 YitNZPJWqDN9nozPrZXJBIqpd953+5ByV0jjlbXy0s6c1nSlsLS3MlV38dJLuaWKG/
	 1wUJYX3rGDjtHiqiBlcSdSwVK4UKba7kwQw2jGKSLlAfdGPNnjaDB3cmOSuQpP86l4
	 UpPmnJwCP43rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B0C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530219360.29039.8407342854319195905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e416806568d5cd47813b3cf3cee9f356dbbce4fb68085f8a93dcd7a1d72039c
Date: Tue, 22 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745302193
