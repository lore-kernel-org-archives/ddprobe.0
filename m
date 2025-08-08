Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2C21DFD96
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754677794; cv=none; b=U0blskdgHF27FaNWsT/ELEbabbsmZCvAaEVWn9ShsAf51FzGptcOpxeFMneZxo/P+LvBM7YGbbzy0LqSXmAjOk5uhhcCUMlhYGUcAQ1wS8Qc1zCEhnRiNauVzXAbeTHgc+LHlL3JqW30Mg4/qtMRBnbXnElfu9QddIkCd4wwT+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754677794; c=relaxed/simple;
	bh=KtYOrBEWc4/DSFbfOo9Sh2beKc9QtTo4XNs+hFvSoAY=;
	h=To:Subject:From:Message-Id:Date; b=Gt+DVvjQBtxPa2uKv25LleTI0U3JGr6z9NpYFf5auvyTFmK2meIu3MosDDQuYDZzzj8nn1aK82N0R8VYroOJZbhSNEgDxh5NJwSGiSNp4Vuowsq4+KwQaBOJ0AcwEkir9QIjmUMdh9vDcQ4OgRwDVrkclnMiCz9fdUTNYV8Tu/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGy+pZHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGy+pZHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F6C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754677793;
	bh=KtYOrBEWc4/DSFbfOo9Sh2beKc9QtTo4XNs+hFvSoAY=;
	h=To:Subject:From:Date:From;
	b=vGy+pZHK5iP+m9jqA6wbkcJ55orUMYSiJrtS6h5WwxEJWnenUJ+h9wciSM+QaG74p
	 ikdFczuhOi8qMabI3EiZEWR3+eqTXxBr94MY/UuQeq8qBo/j5ry9+/q/j1gH60nVPN
	 Nh8EwJTaIgjvzbVJ3iv2xa0YFlL4q39zsMgfWLEdz6sn9IxLpZygRXBUOxG0rjgLhP
	 s6+yW3dN8eCBAKa5JAU5VRGq4QXaHjeHeTFa8TjoQbt9kDrH30m9oM4Idhr0RySIe7
	 0V69KzW5aGuC38z/EyHA7ah9Ilie2iUs64suTeYm0RHUzvagibkgHxO3Duob9nmAi8
	 IZgnTGn/r0ISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F48AC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467779358.9573.10337755988911327769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade8c4388e155d19c917813c9a38121ef278762ecf1a01aa69909e019a0e7276
Date: Fri, 08 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754677793
