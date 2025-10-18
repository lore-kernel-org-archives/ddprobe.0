Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D8D27EFE3
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760785194; cv=none; b=FGl0tlccaoNYI+hAnWwt+9uZQw6uFsZ7llGlS/k8782Vfo8XYPkPwYBoxh20KScB5/PO1l/v7Kzs9ppL+F+7TzHd1z/UvKLZ3VQ0m9EDvrDg1i4EQzDLSOC3zVD8UHL561t57j8KPc1h+8UWcU79D3gDy+oDYKjy2C8UGrG4rME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760785194; c=relaxed/simple;
	bh=i1LqQMrkd7xTv4x7YPjB3beHyDlQktrF9Lc8u1CdFkA=;
	h=To:Subject:From:Message-Id:Date; b=FUVqLwJ5mtFQregF/QTD/2VJ2ojJN7o2XEge9Fri1VmPyGoTVyHA892LaPcn5qluJfMqDZkzKm0+EuFrYgkO+ERc4qUgP9BDbnD39s+r6PHHrjiLkGbdyYi630XZUsejbaUaVgPYmhqke+6Y1B/+xvrPk+byLIQwlgF5D/GVj0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLHToG1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLHToG1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EB4C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760785193;
	bh=i1LqQMrkd7xTv4x7YPjB3beHyDlQktrF9Lc8u1CdFkA=;
	h=To:Subject:From:Date:From;
	b=YLHToG1hQvj4ZKE9jqyOFKq79mGy9zAalRFXo2bqye93tckZQhZ8WsKz766zLazsB
	 0KnosrlCUBxrTR5eLGfC2S/ud+yQk1OGvY4oNpC2Ni4oBzvbsZ9gITkRJsulMxaAe1
	 eoILaxam4jN/ic9K8ypCCLKONHtaOTtrruEqihQW8QUKwb7owzSfoaZQuuxNNPSZlw
	 nTFfDAcnjNNxa0GF5dJuH9xtCC8lwnz2qUD6b3krJ+tiLDXqGqbV8M4qtNzmxo2lQM
	 EUez/RHrrsnPw+9cwv1mXt6YNCc0eVlUIFm1iC0DsbirTTTobvL1W7PS+u9m13t2Lt
	 lWOopf0l+nqvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93684CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078519358.10727.996214317269905295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafc19012bdeba02514b2276ca02ad5870e5f322719c0a76fceda57fb8dca1ba
Date: Sat, 18 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760785193
