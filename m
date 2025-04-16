Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4C7BA49
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744773594; cv=none; b=tGN8614ui+c6qgHQzcsPPgFr1YfGjzobCSdzRmuh4RJZITSLXNw1E6tH5hnsyc7W6Ornc1EYat9aV5M61nVQKMTfPOaGIi+FiMY9wENUjd/djyDIMqPW/gzyjZO9ejuAKuotttjKE+pqjT4NJCXFa720UIPNa2rpEF4a/Lk8SiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744773594; c=relaxed/simple;
	bh=/YpkxalIvxLR+ShdEHXQAPricPpkUOcumxuDFTbATsk=;
	h=To:Subject:From:Message-Id:Date; b=jFD0Np6TminkGnzlrLqG8kONPbW+ggcZxnCT4ZjndhljNI0VTRVYhKhnQR2C6yBxLK8ridFZr0KPnreAu2OW9/rU1npIiAQWY369WkZQixaZxPLmXzYnAo6xzp+pQLpIsin35P8w2z+pMzdYQs2W3eUclQaDkCjYr6vw423carU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQw9Igdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQw9Igdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A700CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744773593;
	bh=/YpkxalIvxLR+ShdEHXQAPricPpkUOcumxuDFTbATsk=;
	h=To:Subject:From:Date:From;
	b=oQw9IgdpL9zhF5EmaFq0i3OwA1zTXD8xS7DmVEhhu2va0hJ+AmCPpHK83ucbqS8Z8
	 oyu+IK5vlcnBiXcVf8GdIko0JEf4CK/AcpdhTkKblXKWgwncQff4kqAfLeTnl0GAaZ
	 Ch1q4ZzSzotAh2jdqV3z8lLQJXU+BTtnIV02vHVt2BV4iFm4bVOFm+SKQj9vCEgs7J
	 5KOWQFj/PODCIkp1TNQXEtxylHP0/X3REZoRv5Y2L/XFB67aMr9e9Kb3vXnPulz+FL
	 freMY3Gpym5jls2K0pNxAJLWIJrpJ5u84oX+Svq8DpLfxUEjRgtu2BPqK05TWLFCbo
	 yTw5LAbNTePdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C4C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477359357.1105.8813584563003570723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838283683506464d9fec3df63e6b05367d7e014ae490a4044dbe82034d31a632
Date: Wed, 16 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744773593
