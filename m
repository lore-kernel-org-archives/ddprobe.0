Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E55E3D9DD6
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775836654; cv=none; b=H4SoLRVBDS5ezibI03pUNgcvhoNT7RJ5Br63SwVL4DjKrZOosd7Ipgs7lUlZV6qMOZ0vvPR+JsVjbkL40aYVaIG2pU7wMZVBYylo/jAj1ntASbwqnmaER3rE9D8yTdSjKfY2eZyv7dJvpQKxF3yBeqGNyeUYeo1NXgJgjoeo470=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775836654; c=relaxed/simple;
	bh=gtTmw07X+sIN/lK1O64WWNBTOLtxzjgxMTCeyXFI7Vg=;
	h=To:Subject:From:Message-Id:Date; b=StWwLLZN4XeD4X3iwALj1w0+mSWjW5+Fj7eN251BP0tqQ9N9lMpY86k0CrANqYhQufQlhBhQrN7DAr5z4YqRQsX9xycAvd69plU7EtnsYfSQBNAEnkrt+KQaaeV2dJPu2DYyf/X1CyOIyEchkmHvQxl/a751ojrcVQioEBZr3lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch6wolTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch6wolTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BCCC2BC87
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775836653;
	bh=gtTmw07X+sIN/lK1O64WWNBTOLtxzjgxMTCeyXFI7Vg=;
	h=To:Subject:From:Date:From;
	b=ch6wolTKPDxUqlsOf2waxUvDbLnfSiVYfUJfNGyNLAK64mk62MMcV7SPcE4N1l2O3
	 C7m76ur+7OxoJ0N8d0/BdxcWN9UGG21VwXe1r0qMfkhjyw/vHHcWo2apUnb1RJSdPU
	 +HsMrzNsStjU125STdlMd+EsTJj3qHjmD+zOjsXV6b3x6cVQ9eTeVPqASUafurzdoN
	 pzhVD+tMdNBi5w39lLHNSmKxbkr7d6ebZt/tGBKYbt8pj0lhzt+uC/hyHO0kenz+CW
	 xgL4/pcy55VwcLDH1vuK5am+e+afOpPDHqb8kWOFQELO7+cst1Z9rDg7Z+ECr/UTOi
	 cfWhdbAEIm5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B1CF459F6
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583665373.13581.16195023261136103748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31dfa4f1c3ac067e981ccac11aaada4094a7d081a8eb682581bd1a3f523dbf32
Date: Fri, 10 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775836653
