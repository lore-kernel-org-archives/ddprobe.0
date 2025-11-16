Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1718422127B
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763314314; cv=none; b=D0uUiQ03RN6PEfBaajKTu8+ltN4ZAoGdVJUm5FxgT3iK8NmXXLALFT+0Q7PsOZFZCSujXotTuqUB8+KxK9z7iMySK0u3eBo7aAiJha0skjnXeWUpBukyxTL8/hsaufN9hXxQf6q5/gVPJrHSpZviyMlSdKrkRGHQwOtvlvkbl8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763314314; c=relaxed/simple;
	bh=3CYZAEcevwW94yBvdncKGxmGSIvXhozynnXaP/VRwOU=;
	h=To:Subject:From:Message-Id:Date; b=f8eS1uR+T7abEVi4ZNddXX6vIt+JTaYMu5fJ0U+pVxUyYhmDNfmNZtRN/KLSp1kID05W79NsFJsbI1MgVIBiswsaMAQHlkODDJhIaTETcKhnYm1vjyJDIW9tVsAjq752CUJSsdN8SAhjONZE6dC176LeYOSel8dNlDxeY058NbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfCwBuOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfCwBuOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A413FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763314313;
	bh=3CYZAEcevwW94yBvdncKGxmGSIvXhozynnXaP/VRwOU=;
	h=To:Subject:From:Date:From;
	b=QfCwBuOlI7G/syfExyzjS5zFQECcD+AouolTnrpKI5En7idRv+JfIT4hzGzs5IoHm
	 J8XHwu1/ZLYl/6jFaYAzctaQlhnUytQh58SrK/Y3j/ktLEiebVUHHfV4/9x91/O9rI
	 kmp/5c4ieTC2t1ymF7wZ5h80+KDqsUwE00mL5GPkAMqXEvLjj3alJvqEi2yZL+4f7I
	 ukV7ieTo6/91f9SFB0jqGjZCPtnJTq5xHOznzgDXQ/AKZBYCuexN8Q5aoVIBjh0UlF
	 o3n5hLu4Uc1SF+sConP074epe5eYvS9h+e6TLiuJbk4yvfGQjNKBXIyFGZdxrP1VMC
	 UNqNBDe8CCKJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97042CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331431358.26334.4082710567601879512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8da5aed194a7c1aeb13d2cb1c7e900fcce5f5a06d174ad88bb727eacf2308d
Date: Sun, 16 Nov 2025 17:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763314313
