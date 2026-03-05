Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12570282F2F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772703894; cv=none; b=TnS4vW1ivyRbv00WSGlKYOR2kZU5YrtPOdrH4pArBDJjrwDIcbZ9MsBWSFPgLTQ7+sgKMckWHZHrFW3S9PIDwTen03hRKnpmc/oLUg5FgehUXN1/u3HD/zyGO+17ZgPMuGd1koXrKcYIUpOITrqRDsMkD4495jebfxk8KCzR1bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772703894; c=relaxed/simple;
	bh=SXpVzZ4xCKUUiyGnuO2DIFe7kZedqlDJpYtgeLphBxU=;
	h=To:Subject:From:Message-Id:Date; b=o6JqiZitJgC+OV0UlqY+X+SADEiQ5wdsOCW3oVFyqBv1bCwqGZezB6QOUwU3psgMMdSiVc4aWGG/y9BBQiKeaOVdcZoIXMiXAdZ4R/mhbJUb5lrbhB6HAs8k1RKoBaZiaFZutVGUc6CvXabNa5iqu9EbyAa0uiImJ2JAq0bE/h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ba6qUIyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ba6qUIyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A90C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772703893;
	bh=SXpVzZ4xCKUUiyGnuO2DIFe7kZedqlDJpYtgeLphBxU=;
	h=To:Subject:From:Date:From;
	b=Ba6qUIyLtop63N+ZDKKgJpIgMTK3wAPllFhohwQqJDFRCG2qhVrMf5oCWOOM7iGW4
	 vLv7f1d/zoiN8r+85JqGnhRIkVOCfaw0UYF+XxZZP1II23CeLqMr5BB6AzfnsiYHQl
	 hCaB88KkYcUgcY2J3vyhMlYbiNi9bZw9oWW9+OaI0+X0XDQ9GM/XUEMC8km+HHMp2U
	 IbzncNhoKbzKWUZbQkdh9ZWsBYao6YjWUiwo8HKiavV7p7ZSooMXs7NaMWsbWqvxiS
	 T74E5gknvDDNqrwvsetOgXCpcLTj6f3MtZQKjcJrJxU/bTrKwL0+SYMW3U8G0KCc/J
	 KH3+aozxqi6Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97234F30928
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270389361.16775.12708179564260385211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995b0b1cdba7d6b2bce529229ec44b656ff521704305f51692eb013b5d746acb
Date: Thu, 05 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772703893
