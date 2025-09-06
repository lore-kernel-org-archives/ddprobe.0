Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A7C17B425
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757137794; cv=none; b=arfBfNFLlP28wagKCykFgCr9sOUTxLqtJSQHxqWbA2V0VLL1XEx5GwgHu+JMXTCqz2Y6FnTHUIQL65ObLz6iu6GpBtqBJoZlndDTimZm20nVa7+c6TOT6jMa0hFUwQGC+MZEIlnVZUohzvWuxNJIVdZC+Q0po6IqLcq0UH81gAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757137794; c=relaxed/simple;
	bh=66Wvi69lVqbaCHoJgPL7ryEUcOxDnnHm95G7xErUMNA=;
	h=To:Subject:From:Message-Id:Date; b=oKjlAeND456xWqpEnbRH3zDC/WIEcp05cWe/yJVVQo59GEiIOq0XwrFyGOm8Q0mGU+DQWZDlQkAClTtrhtJ+1QoLZ7yPi3PK5FK2ZzR0udVR214BRJyP/J956J2KZvJlnkqDBPLpe39RVmuAsGnWSm1uUy15NGTUe7vEAdVqwDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dG1HnccX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dG1HnccX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59DBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757137793;
	bh=66Wvi69lVqbaCHoJgPL7ryEUcOxDnnHm95G7xErUMNA=;
	h=To:Subject:From:Date:From;
	b=dG1HnccX30a0fy5RLTITN8kOmvdhUn7PzO9QuLg8clAuQLgVQv50BbgjeJU3ucM4p
	 UJAgsJDFazgVEN3IBhZ1vqLW19lus2v84w+1e8mjOfFMHCZt/lANyXKAJsyR0mteYO
	 FN7vJeoHp5g7RACkApIvSfieYTaibQ+ud9mJIrzhRpgCjaTbd2PdVHLAB5YbuvpuKP
	 vR21vzhMZcPS3M4Jn5O0IEmSjQyogvb3Onc0Foa4IYWbtl2IBp1JE7LXrqMym8Khai
	 1haYIXVwdbsRry8tnB3YrrQNG7s/0cUqAcnWFPrE/KwyOvzcjj1bHJ+ulfLNDeZiuX
	 M6N3CoQbjs7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9358CCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713779357.13496.15092821592334853834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bb056bff6ec3abc64ffb25380821270076cb81ba7c3f970112d73cb41d4dd4
Date: Sat, 06 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757137793
