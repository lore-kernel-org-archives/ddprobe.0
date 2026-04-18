Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7811C5F1B
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776541654; cv=none; b=Jy+JB7lorhvsR54gPpjaYaP+HZsKjggVf7xwMzJDpX434mMXaeHIm/uUKJnKSLf3EjNi9Nr/YYEmxsdxianEOrbZcvYOLafhoKDvqgKEe37xOgV+eVMQKNB+Q5/tu2fqtsYAY4isHbwVsp46sF0KwX23a8o7Tv04j43eWZiZB+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776541654; c=relaxed/simple;
	bh=rV8YKvQTeA3PbC/NxPnLFy6yXPhM1qPUNJZ7DcJMyvI=;
	h=To:Subject:From:Message-Id:Date; b=SuA1XhvR8YPPNL+Y7IMlye1bax9WSh+/ZiHOCv++QcNIvnhadvdYRNiRL+zaWLRYlndji9tLUtkJ1SuNS5VUt/hvcS8RPWlUlbTw7EqPVh44yNTPhs0Q16OpL5BK5xMYIPb7sRniMJWfjdTAUt85e93WdbsPwiXNe9Hg2ED8hV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvmYxW0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvmYxW0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCCBC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776541653;
	bh=rV8YKvQTeA3PbC/NxPnLFy6yXPhM1qPUNJZ7DcJMyvI=;
	h=To:Subject:From:Date:From;
	b=pvmYxW0gqEsSVGFXMg5VU08mO59FUkU6N6dvRO6qsN/f/1FmACdA/IPAvSJux4uVZ
	 /hJEkwRvmUVoOg3vV4dVUeKgIMmHvPqeQkWbpYFxOqp/fb5zjRUuvLE63enUDfFcZ7
	 9aCCsuVKRNFgtI2N7FzxmJEjjG4hvqvNM6KNNsOkWzHI/HLdmINFB67K8U3FI2PX4z
	 c6CzjgW8LyO3ytiXjTy7jAXPOydN2iyhTNF9ObVtgaA1HVTv7J/f8vLPX7v9ayM5UV
	 mhs2ps9EDFihEqo/oVv4P+4K5zOpW+uma7WqdjtDn4L8VpHfS1Pa231ui1l+XsNfRu
	 asbrrxeRQCaqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED5F99C81
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654165369.9825.10103512560743206558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64509c8b363701b04de459855c106969938fa99c63612a3dd6d3deabcf29b4b4
Date: Sat, 18 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776541653
