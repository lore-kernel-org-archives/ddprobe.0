Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1F717BA6
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726028754; cv=none; b=n9WmINF3Swv/rpdLOZeVPqCVmRWmqShnSDH0TEYb++iMJMGQRYbzHzbLmXxuFvU7psfcsIZmIRjPpF1A8cLDnlYI2mPR/aJLeknT3I/XFbVNWh9n8ESnT8xIFevGINGWDEkZnk0j4nH7BW1cTIflczF74XwWhboJ6WcMrYuAEQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726028754; c=relaxed/simple;
	bh=svIDt0etd6KL/b8IcS0F1xMV94eaat9jEM+xr1oN3Vg=;
	h=To:Subject:From:Message-Id:Date; b=LO1fNJjM1ZLuZZI9slP/OfcaoTMh5MRaLehGfSyWQc8oBlqeKWSAP8BOeYZP5+vxazywpd387Kp18KzYtO1JAp286+zIeaEfoYlwugUWANeoUvtxckb92QXVqWDmgQMqoz2FpD4Y7q9O+tHhyxojfogaqyP914hshLaWDxN+h+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVAQa1jY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVAQa1jY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF357C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726028753;
	bh=svIDt0etd6KL/b8IcS0F1xMV94eaat9jEM+xr1oN3Vg=;
	h=To:Subject:From:Date:From;
	b=GVAQa1jYsQLrV7TaimmlFyyJCfWS1XP/FcemGuaCYoEpxK+sDcyqI5MQiFithYYqV
	 IjavnoeOWnT9ixbLs+m3p2vTTcL5VN3nlBtUVMuPHjqvaiJ1woOCsM9qmBqbCab3Hj
	 /SNrF5tZlIMVVK+M10yBBxbZRBfHDIkUixE5UjR/phLP+DNUApX2buqXRW+2WH04jT
	 qt0rfmF9McsPJpNoWZou9HfdVtigc7A0zDhOfmP312Eb6cqGaxx8r1tY3c50xTVw2U
	 urcX3YKb7Os/RdUJJ7reIbHIiCTFk3vWhZrdPlMYKGn5NO5K80trHZSr7XDafdcYqg
	 iVr6fGN4boJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A059CEE0206
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602875361.18181.14698776209669937952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db914bca6c1377689071787abd0a51fa83dd15d021a99bf2ea2d2daf733d1be
Date: Wed, 11 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726028753
