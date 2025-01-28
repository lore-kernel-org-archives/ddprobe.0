Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E441199239
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738104956; cv=none; b=m0xIDkoBbbBbhHNxz886Q7gEay9XBUzGqhRPQLzRYVrgoGVkqA7b5L+VGByk29Sx39O0Os1YMHqOA2y5tpTHKUDSxraKgelYzhsNm35B8QhuLnW3YjQ0ulJAM4r6ZwtFox1G/y8lKI74GYMz16QSfYFPmadrL4LStuE+WsvHU04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738104956; c=relaxed/simple;
	bh=W02IMMg9qLvpiqcyeqUBm+daQ3kX4QnzCVsr6ziQI/w=;
	h=To:Subject:From:Message-Id:Date; b=cPHB1jRYSvYkePljvejVk03voK9MJJHG9diGTfq9/U+1Z6yoOtRW0czkKcd4NWv7k+F65KSYH/XnOLAB9iHix1v6RfrAl8t70lJ8RmgM5Euln0RZ84A/wbNvm5JjYiKZ5FDKCNr3pAKW44WmtPVeVOjX0+c4EnOl+JjBe/yspUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsG8RXig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsG8RXig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92E2C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738104953;
	bh=W02IMMg9qLvpiqcyeqUBm+daQ3kX4QnzCVsr6ziQI/w=;
	h=To:Subject:From:Date:From;
	b=TsG8RXigT9V/3kiJvFmSvRQGwxJQW4s3Y4/XuHEJlkyOtSsQ2uKUZa9NNbkUpUWUr
	 I+tfgjuGGduWwrjOueZerzTBRqOFJ83NGuCaNsEuIR05GlrFCRGsy7HIfX9bndW5wy
	 FXYshpzB82SLRL6ka8oFzU0K2IcOSkYmXdTPZ9zuHPW+UaDcfnX6+5zBvNc+d7SrwV
	 JIytWZrMqOhNXumz8ChMlKwAirOjNLYIhKqzi4UEd4yziXuSNpfThUdSxbK7brJkq/
	 hixf+VZ7epVkMUL4e+ETfVjzMygBG88tzVI2ljPjJEXl3CBkvT9Av54094Q4zHCsFx
	 5eAFRUhGHyGlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2BCC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173810495362.21825.13833753078146541038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64c223bd4c927994a100860ea0d171fe1fec8156c634c611245f749bae05235
Date: Tue, 28 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738104953
