Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468E417A306
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742377794; cv=none; b=N7/jFBZJ0Yy0vvnwLzXAvLuizMfTOPvzSJrkDZlQOQ1HOqpZ/6hu9T662IzYYCHDtysFSIC1G1pz1vJQKfGqFQf/Itmm1y6DNPMggjR+44au1YZeK7F8JgfEjvI21jl0/wOv80J4iRL//mskCeMxAp9cXk76Vnk8Zt+UM3UIWtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742377794; c=relaxed/simple;
	bh=cbkoL8XN/n5yVq4KLVKV3+PUFN72dWTC6YWqGPPKDRI=;
	h=To:Subject:From:Message-Id:Date; b=VjWC3UR94OvDFYaJWJ/15QrPnIsopB//dLSlMrLdx2+OjqYAbFAq9ed7iPuHdkfVAanUBU4Cudm9fgbBbmo1KZxMPN7IQYzKExf5tKbB+/J9CuQ4bRjZl0sj0IAQdkU3mFC5ZuTc6YJpoxRJMwWUyPlZHRmIFUuejzZ3Evr9qgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEe9J+UN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEe9J+UN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C5AC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742377793;
	bh=cbkoL8XN/n5yVq4KLVKV3+PUFN72dWTC6YWqGPPKDRI=;
	h=To:Subject:From:Date:From;
	b=OEe9J+UNl61hDBw/F7SNaIfcEE0OdByMTorbCe7bwGoxzOb03Eh4lQe5D95MCbi0v
	 sqKI6md316R/8VoqzpJdGjukDNUsHxNAGvaXdwguzO0m1gf1vpM6yjWdP0nDhbARve
	 434l3m3XNCX97ZaRZ2EYHbKCSTKVts6bJRjye2TJMFJnNl5qc4tsxYS3kpB/ofFMVl
	 zjrFdHrR98sESOtZ7ThGdItFGm0EcRND8Fr1Q1ixqO8VEececeFhvgTfHUvgj5sWQD
	 JAVG0yeloDE5q/K0P2DmGl4i/UzMQ5ZkzeYdabZwFFW+8SVHobB0aQsxUdJNyOAInM
	 WXl9V086ryQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEC1C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237779363.23044.12042020965518885459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729d9f426586b283fb28a651ccf1595b74ccae7ccfff7b64cd2f183ee3358c5a
Date: Wed, 19 Mar 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742377793
