Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742E23ADBA3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782389254; cv=none; b=WPedT2zNHalNdn6/3S1lBC2cPqY1dUo+nonQcNvq2OKxXbcwBlKD2tv4ugUeQM1IdetMffH4Nv/22GWbWM8JlVnZe1XryhOl7D05h/v/QB3d82XGq3eCYiStIdJ5GI/4YK0W4ULgBQGvNUYuE0LhcyRzqtIH6eSLBm2tYmUGVAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782389254; c=relaxed/simple;
	bh=kUvas443ZiTI9e5tfpfwPMIJhSondHD2VFn4ZQikGDo=;
	h=To:Subject:From:Message-Id:Date; b=ox1RDJ2eFZZ3ZpnJJ4R8ZAzfbz12DbM5RgUXfU+FGdwH+8TmULn4ZzmTgACgwZN5R+eMQ7FunJdoqtd/fVJ2FJbR4MI1hdsjqQ+JblpV5qxHUiRRSKL2imol+B43+syaNoCTpddeHSmQwaMA4MvVqZKGLuUJ+8t+r7o2oSwBJGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=em5bHTF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em5bHTF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0176BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782389254;
	bh=kUvas443ZiTI9e5tfpfwPMIJhSondHD2VFn4ZQikGDo=;
	h=To:Subject:From:Date:From;
	b=em5bHTF1lb4wzNsGAjbRu80Ix47R/10B3bn+PryCA59TFFmffHNOt5E5qkH2dyEZs
	 nJ/tu/ObQmSIGOURotdUaKATL0nHWp2/KdJ594aq9VxYWRSf7dOWy3XlXM8sB0P3D8
	 ga7oHECig5zJVPIq/0X7ERXJrSgmKm63ALpO6wx1ozp4ZT+kUb+6l4FO/q4U9s9rJs
	 t7Clz+JaPjJ2I9I4UFqqAnE118zj5krk6QOhfPUXqgzCIVeAdHMyvUJ68RI93AkJe+
	 FICKYnSSEwqUEKEIUnuJ3MsFNa2xq9YOasVY8fIInJJt/YW3z1SlalbY/cjY9XxSM/
	 5zFsEwiZbTCaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF8DCDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238925379.22780.4479081604145646868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60336bb3c88e7fce35c4be4e64b1ba53d8969b6ff8a231675796b2d82bb0a5f
Date: Thu, 25 Jun 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782389253
