Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2721D217F29
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751292594; cv=none; b=IM95+ofO+cStktLU9FCNjm/VAO1K6J3blb/uIeAT819bt9MFlus62c3iW+lsylHQSM+zsX2qvj3J6l5qKbCjY0fY5VjWM4u5mNHIJxSQlMQY3RNQFQGVehrPe+KOSDnWd/FfiGE/VqBcGqrK8sdfKHNst0TnMbyon0AN0PnOIqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751292594; c=relaxed/simple;
	bh=0A0OpkwTnMAavU/EHmANYhNKNRyq5yYJwmifnrBKrkw=;
	h=To:Subject:From:Message-Id:Date; b=TvsS5bhlN+ptXC6o57LpbTbyQ8x5q2fHKeoLJg23ncoWMC3pYJt6xAwpg8E/4i+tG35ecvzbWqGN/C3fCEdfoPCiyBfoDh10Zik2I4o9guLYJFHvPcqinDXFcQDiyW4sEMoANeJHE7Cj7quVDIICjXtwPJj4RBU0JZzX1n4OvKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQwGs3jA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQwGs3jA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2ECC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751292593;
	bh=0A0OpkwTnMAavU/EHmANYhNKNRyq5yYJwmifnrBKrkw=;
	h=To:Subject:From:Date:From;
	b=hQwGs3jA/S9Klr0yUaxkRiKmVYfZFdeM/PJOmPRN0G23cIEEZVA/5VFaULs3Cv3fB
	 6VgBhZyXJNpZBT3+TUtg48WIPwoCQPA9uKa6aKZ6ShWiQnVF6pskiCjp+3lh8EVF4K
	 lgnoR/kRNBinqXoMDOjjld3+7Xyt+FRcPRpBswMwrc/eTRl+11IxCw9Y42ZuxhJN8s
	 SX1USWuG6N48kTidQE8QnVO4p3N+dim8KpzlEI+gfuuk4IKcsbOTvrxNQEIW1q8LKw
	 mYp4GzI7hhfitHxCHqy5FFl0RDAcOZgYlFQ8zg+wDxiT4UsTEhAEWEgZqpObmYqB7/
	 gI6lqhiDxWeOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90AC83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129259358.23068.16305708251028721274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491d689964598918450c7054dd00d36080cd7646faae170285bc56887db9e950
Date: Mon, 30 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751292593
