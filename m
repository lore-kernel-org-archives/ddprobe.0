Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DE43D1A97
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792386034; cv=none; b=AXUj/jfKN7ql+VdM3GkS91tXBBve/srvF1BMSEPX51HztcSxcefcCFJqTKg0MAn4svkmZnBuqW3H7cAehmaJQp2DsQSjendCnDiIcmfvCVFXfg5/aaPFaYRJxfgE1sUlVSkOTLbTpARcnNjPDbDj5E9m4dxNeCx0mgazbqrS5eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792386034; c=relaxed/simple;
	bh=QfVLrUp7EYuZYN8srMhXxY+aTMxk3Qsw8mIWpUP+eQw=;
	h=To:Subject:From:Message-Id:Date; b=HEJTCUXjz2DQdcoN0I4DdtiuH3vPGJkSx/8QI9aHPK/mm3RfQcLA9oh2+rENKD0i+gT24A7QqMBIhWhLr78S5Mhx5u+r+gXnEsA49gKaysVa1OHfzhh6Y6D43XadVqc1FgWFW1Y8Ps1S8NYiaTZgLLkkzN/Ot0aqc+0imx3Udf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9QzX8Wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9QzX8Wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9FDC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792386033;
	bh=QfVLrUp7EYuZYN8srMhXxY+aTMxk3Qsw8mIWpUP+eQw=;
	h=To:Subject:From:Date:From;
	b=U9QzX8Wz7UcVBxRB32YrymenXcR9U7Mm6z+WKL1PWSaQ/4VyuB5G3sVgTJsO0ETtz
	 /eBGmMtW1LONQM5zGdAJ5rewWG6QNUMMk3Rx0/+VlcNeg+glUHcn/9IuJbMVOa/NTu
	 /yrPiLKNlu74M2q5fHUZiOKdd2z2VVSciIyLRpbML7RdfAEHQZVQnUmjk021clhTPM
	 blHnH5FDN4LGfF4yY0lLIsSEg71IhlndGl4ENz3dAWeTIZ2XlEO02ShF/V+ISEtX25
	 HpH3yS5W0eKZmzYL+EICuK6r9buyJOETtz3Lw3WdH7HVYzQLigCf5UhixPsSK2weCq
	 y6EKt3BPClygQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7405CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238603374.18376.4531215836855638753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7620db342e28824e94d0e99ea818fe99d314be5a1d6bb642ce22a81424e766
Date: Mon, 19 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792386033
