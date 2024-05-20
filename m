Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EADF1384BD
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716220343; cv=none; b=ZFhyM/40E/q6ROaOV/hbapsF7yTih3BensgHExnupxJ1VHyjFspmiWUCL3sYgiSL+XkrAqyt8kbQmhoGtlWLgOGeOKxl9WP0ONAWvIpR3rJ7jRD/9YcRaSHf10ivBl7zC1Da9JqpJKMUj5f/tw0DcQECpL7N0XrGDiLCl5rZcXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716220343; c=relaxed/simple;
	bh=zKfASYu/6ieUgtzcADdzKkFnO1dDIrCf17Adfl3z1qs=;
	h=To:Subject:From:Message-Id:Date; b=unVLoZarDVuFEsA+6oTMjLJ8nzkUpzlaDFrANQgt8d/vnVDcuJwXBIiiWZHbgZH8M1oK+d0eUv2xO9DqTc7NIcQih+Ha0INrFz+m0iD/VqnbVFHfBYXw53AZRoBG0uGl8zICalcTohiMim2+sQbE3CmS0X3Gf9usmFKI25x65JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv0ciNfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv0ciNfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E604CC4AF1B
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716220342;
	bh=zKfASYu/6ieUgtzcADdzKkFnO1dDIrCf17Adfl3z1qs=;
	h=To:Subject:From:Date:From;
	b=Nv0ciNfn2UkmJaAJLmukbzTI1WFDreI3Lh3xCGC7gSn3ZwBcH0Vr+N/1IuRP4BGuK
	 zFqXaFtdYcs3B7dlHnDvF+AIqz/b+gvG+34UWYbR16GN18joenb9yE1I7Av9fF9zPQ
	 dxabPn58ZooarpCM3fZao53nFCUfhP7ufhNGuynfEK1YHk9mfP+FBMpQzJ9zF1n3YZ
	 oHZDEIC6FwR8DXDZ2FLYPyMv8535iJYYwTegafnavZqB6xQWYDCzccLv5ULV+wHJY4
	 25NASIWHMYlfeKNxRjPDpIMv8StlrFBwmM4VDrHxaTTu21Fk8sm7fV3Jg3E+JBoviy
	 r9k3IeI4wChQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C8EC25B79
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171622034285.6491.2310647535660685783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db74b95f6535e9f347ece54a3736b225fbfc66654bb465f407636d1d32daeff
Date: Mon, 20 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716220342
