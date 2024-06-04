Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5861474D8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717523783; cv=none; b=Fd6BB14V9BJpUjjrO7JLB0Q3i2Z7XIOmyxY3eJOdf0eJslDBfsgV2fRNIIhUniIxcFzxgJwhDUqwbvp+Jv+1XvuWgFGNfADYEffFU4r3Ti639iWE6G0W4ehU8m5Y04DZkZgkJldw04VgrprsA9LNQoycrY2HM8klWenQcOJ1WX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717523783; c=relaxed/simple;
	bh=16Rk3Mb1dUftjxLhG60XJdNVqNpSyzRZ5/axydPRaCU=;
	h=To:Subject:From:Message-Id:Date; b=NxfFGSVYH58IHKyxMv17aszeuw8antJkGaKonUSaMl6a8OvJEC4nt2S6uz41iKukGcjJAEFKGLNRgv6kA4EwXoBk8c/fEge1oKtlYlRBCt/oNrSGPV1V1UFJ3G5GNd82/R2Nc15TwF9b8kOrkDHbCXFKWodWbr12ShKL6EMUy4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHAaZnHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHAaZnHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FE9C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717523782;
	bh=16Rk3Mb1dUftjxLhG60XJdNVqNpSyzRZ5/axydPRaCU=;
	h=To:Subject:From:Date:From;
	b=fHAaZnHRZuB3xXwjGIywFXUHw5VX6skAmdTJOys5/84Mhb2yDyBqzZ6Gi6JZZaDuA
	 J2RrOpQZr3stlAyT+Sx5wu/NpItTfgpA+KkXA5/YwNZ9aAWF0XTv3JSiRfImo4FOhh
	 +NpLy4FbweU820zUu7Ehnq81sGIzgMQdJn7fdWjKlWcf+b+Yg7M5xnEeYSAGSFA7jV
	 Yi/OBqX2Yi1cxnSu3MGG79M2dPVbl801p3D29ac+fHN84FBp0O5I5JiI/TFFNghWH6
	 OP0emW/p6Mu9sj/VSO1qySbHC0OpqWWbAbov3IXTJLnYmjZ16kLJfn3gWHeG7NaNOz
	 27lgQor6VQkmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF0DC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752378276.5614.6460426087692688078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6389c2e3044da158a1ea9029853a5fe103a8c2cf6f7661bdd951e914217e0fc5
Date: Tue, 04 Jun 2024 17:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717523782
