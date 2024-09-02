Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A10F19C565
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725281154; cv=none; b=nuTADC23Yc3WuL1hk7z1/hvYMZu2pDBfMqTfuhf+puogmM88nGwQFq1LNhijDXlE4BXg7hBo7GENw+UvZIGOjyhkdXJuIKc705+7AJU7F8N/vzVEfb9HJv38+cPThdyT7FqW+aHCeBTFBTX5BqaSRDPccjYhNMvW+d3SE69WjI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725281154; c=relaxed/simple;
	bh=4OekwG9qPxETjwOa6z9Q26yvX071pFEsgysoTIvPel4=;
	h=To:Subject:From:Message-Id:Date; b=oQ12HQoqDwSbaX9PyBMooSDZ3uIxiwHv6RO8JLuPC/xND1q8E+/jwyPcnYjWGqjts/UX2zoq0guSDPNYGaOnOk16mW5A66h+W0LKNMH0sfmgl5DUjGnMGyFWeuhloB6JkXLgwjjrJvxWY5kN6gdFougbBzOcWn5zTC+Fw40XXZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0gf88x3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0gf88x3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D05C4CEC7
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725281153;
	bh=4OekwG9qPxETjwOa6z9Q26yvX071pFEsgysoTIvPel4=;
	h=To:Subject:From:Date:From;
	b=T0gf88x3CfeFOirlj5/026J1Ix7Q5d90uLTnW58tbT3c3lXk1rdEriELgbaJxTYa5
	 lYhZTQ/kHPwyZv/xnlIC6E98dq4rEAws7cFi2TrvU9r9TVxAry5BA73gi9JYhFTQNQ
	 STj2Dyam5llS2SNk7ni0a9ktwt31xQukbAtuNO9BwKFHemn4+tftSNPSenQ5bPH+9k
	 QsoaJMOuhVPak09zPfFm4vHGARsv6g6iAAJnwjVQXVht+RzWCSNYHZNtNW5YKyZOg6
	 fgIDcF9eL8eY90FAxhbzXZfZtIPzMqUmr1UOy0Ne8IoBUyep0GJLXlzlrVR8NeyXmm
	 u8NC+C4vMkSyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3141CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172528115363.13569.13176355263780106010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f83d78ccb3197e7c1bf3e91498fe4c64ed0c8f74d9372ad665d9dcd8af61258
Date: Mon, 02 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725281153
