Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AED32BEC45
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776463054; cv=none; b=pqmIB+y4zWuWnr+uTzn7MxAZ9SUsXrfBh9aVmTGJQidxJ27n7k+/h9x306jllIGnj8USIxWMV98KKFo6BT1fT5EgetKxPPT/b2xdkPsc91GYODXy153OqZvdsROTcMWv+24nP7B7CqdVfJuBVEvk9P2tjTbam3UERVxvbgbvkEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776463054; c=relaxed/simple;
	bh=jQ4NuQ443MCZpj93WoPDUvM8bLfXKJtjkPD3yrEGIXc=;
	h=To:Subject:From:Message-Id:Date; b=Pwm41tZw1HAKzFEQfTA9oXhidwSsP6rhE/8TFdP/bw2e5YggBOIiAk7Bsa4e4f4Y30+rJClC0R5KLI1iXM2DFbHMdduRrEZD7KmQrCRkp4/M7EyNgQxUI0NhtLHmUHbqjfLP8KnVAyoGxCPtNwCrJLZ3p69a2UFIzp2bSlzRk6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7nso1Tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7nso1Tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3CDC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776463053;
	bh=jQ4NuQ443MCZpj93WoPDUvM8bLfXKJtjkPD3yrEGIXc=;
	h=To:Subject:From:Date:From;
	b=X7nso1TbCUqnGvSI4nkCAWB1OoBoJ5ymQE5kzeQeg0gHAf7IUab9f5WSob65Ufymg
	 6MLYsnCuv4tLowFhvx1EO6Ti9P0ChA0jA6tNugRVMUNF0dv1XUUE/yY2gheFm9r9vL
	 Ib1qlOs7/3SbSy1toLRFiKGWejplZMw4AWSg+cmYhWgeQ9k41SO3YN3cC2YY1Wmkir
	 h9nPNrYhU8GoH7dNrs/iOevFvYeRMngvsyCODqpXnqoTt7Rum/c5gsDYC37xeYc0eO
	 dO7OnLk44ta8gUlQ1LuF1shuZRo8Lvo7mdM454tKsFOkoBM7MFe4Abe9GLwLqE1nld
	 umOx/YDe9SLlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD40EF99C63
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646305368.10872.2903374963474244213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c0d1cc3b9f3fd2033a6f42a5f47df0169a0e1fd483e87c512f599349538161
Date: Fri, 17 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776463053
