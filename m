Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA0A2F49FA
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755171594; cv=none; b=Igh7CFgRU9vMSbGfPy54oYQIUISomlnOhcrWabdhbb64sggO+J6RD0qvHglYC+OGXe0MW5UH+ccBjponsdd8b5A/NoAK7/dKbP/qZLg1lmdRsn0/pZ24dJdayoUtpnLABzkacQu6+/jvsWPscb/5CtrhtqUWmBXJzFp3+exxREM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755171594; c=relaxed/simple;
	bh=BlRFQ32nV+jGwC8qOmpakkRjJ9eDosT8cKPh5tCm2CE=;
	h=To:Subject:From:Message-Id:Date; b=sRIK7qLDgEtvGXgBFAl/svWK8vUo9zZenWYISCUsWp9Rp6Rtr8NZDGBo6JliDZ/W8Q70s6wOfM1sNBZKwCNBmufuLCev3KhAPyd5cPT1gw1QgqGaCbO+jyzhOc4mSnbiHVJAHka+EprbokAzvBVr2gbI8EIWQTeMSh5mWYsJyWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tp3KtvX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tp3KtvX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D758C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755171593;
	bh=BlRFQ32nV+jGwC8qOmpakkRjJ9eDosT8cKPh5tCm2CE=;
	h=To:Subject:From:Date:From;
	b=tp3KtvX5s/TjkT/bDenJ+02OiY3rdGyELbHSk9p0ibAEfg3isikWv9bRdCF92LxDI
	 sOIex4ko0YRCyeIThg8HXcyr0QG5RYaQgIcZyDLDy02ejSZkQ8eYARE9Bv2hjEIO6r
	 M8e4Dt3P3GdUZplJ3EPv/0B3n1gkS4h6OYTCV7eynSAK9yF57Y8Dpri7pcbH96hpj9
	 NVf9HcDg0hjwdzArocmc6U5+AiIz8/bWD2vpAY23ytvDzqBjROToEGPVn/47dcqE76
	 81+gd8ehaYDWIASlhYIJwngUaHfCH+SJ2lctEFaya+y0EIFX8PCJoE0MiI2YvaSvBS
	 Vb/dm3mma+ffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7AFCA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517159357.21345.2948927699272186815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a05015338bc0c85f32294a8cd918929e98fc6043ef16074ad8e8ea33a726732
Date: Thu, 14 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755171593
