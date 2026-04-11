Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0C115A85A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775924254; cv=none; b=DWpsGZhqo/Q+4c0fT9XlDoglV8+sDgvkKr66EY53Z8q2QiOIfIgMLs1YIbkteFRVt6svIPQatMN/lZPHprwN07iuZX4AVDfpULFX/DEXueuNcgtLRIZaDSCADUUuWuoei+vr/fOe0SmyomX4iGnSY//3fXZPJzy5dROjUOus4qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775924254; c=relaxed/simple;
	bh=T0cXAa3WnZKt1e6yMyr5gG8fpLb0TWczCS1pfU64IFM=;
	h=To:Subject:From:Message-Id:Date; b=Bmb1rc5NqvGV3XTOtBijPJFL/PsXyrml1kebNpnp+ONaKz7jqCZvJDcNUssOxm2If95tG4l52Ii525OMExh2uUZcba5LhFw8wqjLa279FElzG4oGQhHIVBvQJ0yJ024KNnRLvq3FMV5zpp9Nljm8uP0/vyh3KVtID6HhRISzqk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWGXnXXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWGXnXXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2242C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775924253;
	bh=T0cXAa3WnZKt1e6yMyr5gG8fpLb0TWczCS1pfU64IFM=;
	h=To:Subject:From:Date:From;
	b=KWGXnXXhqApE1fNWxEJzwdTaoQIR310a6WaoW1Mkqv/oISltgKkeUOCX7/7eO2/e2
	 zMiVVcXoNDtl0CA7DfQbPcJNa9BpFvCYghXgjPSSmypwhQe58rFIc3O8CVDH8t84bi
	 c8sRP9h6t3aUYNNP9tmnFt54YBLdsJu+GhN4ofKIXzriIiD+fKsHvKjP7c4/rSIbvo
	 wQi2KZWzqbpv82XHgXvCoINYYmXRqGgvbnuTSiSsu3e9VuveKbgyGg4KEOOgkJ9s1v
	 0pxr1GiX1LYDoABcGtB1rX96+z3KSIBuhCT6LnXl5vhS/i03MJIfhXrbdPKs0znQfa
	 TNokR6M9wJkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEC1F3ED40
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592425368.24091.13604848603590064646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109ceb66f79ea48891ab566deab3e9fc9aea6b252746bc0e6c54c4b566d03065
Date: Sat, 11 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775924253
