Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2888A3B9D9E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785406234; cv=none; b=ceQPfGLnlskWLBfWHgb3kR4mUfkGQBzPu+y2OvsdJ9uHsbD+JVAc2MstuKU26ZEh3G0yvvf0OyS4oPp0kro+T6kYjk7WBY5Oct6dF4jz01Mzpk5w4CZXA88tuwjHolzXOTCd4Dqe21ZpegmyMxXvm47QjRkinwtwag6KIEL+fFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785406234; c=relaxed/simple;
	bh=6tdJbIsVIWoum1GjJUblRdkcYfrET/uQB/9hx5VismE=;
	h=To:Subject:From:Message-Id:Date; b=g7nQgZ5pzjBtfHFjYJYc93zbDEmSTfwL5CbiGuOwoU5G3bzEA+ijvGv5j242OZnXk6NgjDBHBFunWbdQbcNx8E34cyQMwtMNl8IGLQ7JPGI30hIqQT+pi7ItFZtmw/2h/aheIy0AporVqrSHguiNM5+IFVuYZTKpNodjJ9UOJsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NflxE+zr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NflxE+zr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08C9C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785406233;
	bh=6tdJbIsVIWoum1GjJUblRdkcYfrET/uQB/9hx5VismE=;
	h=To:Subject:From:Date:From;
	b=NflxE+zrfZv1y61f50JtvFESVNuXFDHqX3VrAdHSslPCDuzm9dL4wXCMIVzxWWFUt
	 HO6p8WJT4aSECjQ8YEVtlAEYuKf8UzBcIVE0jELAtgVVa2n3uuZiq/G0uREi00OST4
	 qEJ+buyUsX4RLumhkKiqNt9LS3NaRqnnQYcqsg8Dzx4/QW0Dw7s0D0W2TXkS1j/MWz
	 ca3Zda1qrEOroFs/fDINQuYUmLtnmZOSYGBoTaYbh73BRQBEGA0jxYTNovvjS9hr1+
	 oAo3LOYJ55wikafQ6Lw2VYeyMHAZcPn4v01L0EOJ8qPGPqPcO7JGpBgwE95sYg1vlp
	 n6TClaEYIWr7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB32C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540623370.12049.5780241731134959419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393f93355df7d2ea6d075b8f4da0d71df5d3dc4f4d932a785be48e5a8cc0b60f
Date: Thu, 30 Jul 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785406233
