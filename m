Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125311A08A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754209194; cv=none; b=f4ZqD0lzWiLCeCKUdKum+92fZH0a2GEMgVm6PTN0X7ieR0Wk9FjOyME1gAwct87ZcSb7hLbvisbyYhEQOX4JnKjmFEoqUoDoABueg51Xduuy4YTtD//qK+MHSA26ogw8tfa8jEiQAou+cNPUFJ1F30tkF00Ik3HAbxi8LUW45DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754209194; c=relaxed/simple;
	bh=7Q0wzV9vLu8Ih1cCp4/m8RpL70vSzhPw4aT5a9hZve0=;
	h=To:Subject:From:Message-Id:Date; b=PI32VyZ5bHy6Yz6gaAXdcSx+Re/Hylcdcm6KPJXv5054CjAHBTMLm/XOtOSCLeZquYuS5NXBxBTWmwoRZw90bEXRhIZqhQf1awHza7cYY9TZ7LE8+fe1kdp92U5LnrTYkSGbNZ+coiMR2Qyh88n1NCbpzaqtAO870YITSVOsw8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNlWOv2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNlWOv2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B916C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754209193;
	bh=7Q0wzV9vLu8Ih1cCp4/m8RpL70vSzhPw4aT5a9hZve0=;
	h=To:Subject:From:Date:From;
	b=NNlWOv2IPeT0POv+cf4P9tRvYVnMWUffv8ywYPqfDaV+KmImNBSu5c3M8xCCFYDHq
	 f34LFFKdxleYlM0u8v8/mnS7WQVF+SGSpn4UDiTVlc3cKN1lZQ9nE8EgPGzLWcGcMF
	 FcPJ53JTgYvCEcperOgqGZOqQFy/BHrmwUk0OhsYOX8XVkf3TpMuBkDCE8SKqJyegQ
	 pIq8uJyFgDWfwkS6UYrIzTOuTk6bs3/njIEPGRj13+suF7XpsKTzEe31H4f3JF6GBs
	 VqeystV+4CS5hW+kJHPlfbKGyDBsKwPS9mU6HhhnugDJZ/e4K4aXV5NhSzI/jAbf8R
	 LMLwifZ8d1gKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC97C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420919357.23209.4305791973399885167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bc617d64da63b6815252c79423279eae8d9e7883b94b56951afd6da177b05e
Date: Sun, 03 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754209193
