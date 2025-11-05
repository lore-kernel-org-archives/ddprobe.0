Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F6D2BE02B
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762324794; cv=none; b=CrvUK3pAW+kUut+lbwRcHUemMBja32tCfi7oeAIz/f75jUvcdNSIHTN2Iuc7pOdhtKBpW4A1JVn9UV/c9Ajtqo+Jsd7Rx4/rxq6dxRj9N+XhsF4jIM5YjdzJh8+kcVgHVlEirNd6KK8lZBnt9sJBdScD8IPw71unfQrtSmxINQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762324794; c=relaxed/simple;
	bh=b8YEleQ289TAM75BHy+JIRWfLcfmqBqPKUvV1GV94JM=;
	h=To:Subject:From:Message-Id:Date; b=i54rbyu0aHUllaScwCGzWeKj1UqdBsIuq4Ax9AHAGuZo/zsyLzrsHU2GqQIV3a2iG/HRU3xjwvaHjoLTSD+cvrBlxpNiOyR7BiM37IsZx1EiZnvrGyD5RY/U/msPssYaHUgp2e8Z4gufk5pwnzEkz5tgEDxmovkeHIyeu1oLW98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMGayk+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMGayk+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23E1C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762324793;
	bh=b8YEleQ289TAM75BHy+JIRWfLcfmqBqPKUvV1GV94JM=;
	h=To:Subject:From:Date:From;
	b=hMGayk+u+b1E8bDphSR7ZtxfYx7q/i0wQmk98vJMBAF4NjeNE6jz/nnXIYFWTx6uG
	 PBvX0Ah6O+Lg/e0hJgNwXuNz7+RAZZ4/wSIuzF6Edy35/fV8cxhzX4xiBZY1BmNbP2
	 87gk7nWQPOJ6UCs/ELFxBc7uSShU/IK0Es4eSPHlRq+jmLd+NvUOqH6Z647qnp82vg
	 KI2k+T3jq6loCs/8L4xxgdXTJRT2a4x+QRBNKRkUCq2WGGOZxNTHcLuboGm9FzqruF
	 xQgal5iuITtWg3Nns7SZCIBw+aL0HPURs54jTaT6jB3wIG+T7LTLERAO4Q1sGF5PMt
	 Yhl2mAgYSPg8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C79CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232479358.7762.18256126703130937132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b678d47eeb14cad6debcec9f862a00917528147a6a68e619db3994b73d14c59
Date: Wed, 05 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762324793
