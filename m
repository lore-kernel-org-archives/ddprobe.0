Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA0229A0
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744204195; cv=none; b=kyB82X4J8ppH9ND6kN7bjfFMNc80WhpxLokSpUwZd6KiClsTpMvSJpCW7G/zLwmKtvChdb8PBxJm8NJ8CA7ZXtMHBT2KyHzVRytmzA9lzaP2Y5BZ8RGVc44AcjrGslRxw/hWxA+tnkosM3ErWwmuG8meEee5QCLkm3P38b42OmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744204195; c=relaxed/simple;
	bh=+x0ksbV//h9mQliATWL/sZUQ/ZvPsXuMfjtoVtKv1d8=;
	h=To:Subject:From:Message-Id:Date; b=Ef7IZUcxyAjGAvYeE8hMoBwcQk1KM4LZdSHIRxU0En0YVuwXYonf9yA+GbSwxZLWdldvUqAHhAn0hmcnhrRr0gefagdv0hvWA4chWuZiH4AXEcmMbAN2jrSHKd1hT+qrWV92zB49Fi2AszSj6tv+yYDwsEtYoKWkMIq9m/0z2zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPBAC9uL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPBAC9uL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56E8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744204193;
	bh=+x0ksbV//h9mQliATWL/sZUQ/ZvPsXuMfjtoVtKv1d8=;
	h=To:Subject:From:Date:From;
	b=lPBAC9uLYaJZgpAPKOkrbKRqZ08lch4Lm5xttsDeAFJJ15A/jsU2R3RdjrJ5+TFHu
	 /6pcDhJ1AQ+LFPRhXFImS18EPckzdCgA4siLyZDRcFpF6UCqlfS9ngKTQXKpVKjp5i
	 dsSIbkb0x4lEnzYsiAzDPOX9Eo6OZlQUjC5K83gfGpREVwEpkz2Yn1X8aRogi+cmz+
	 ckDeBATQcRoCuqXxQoxJymJeLNwYXbhdtcc1uF9dWnrjxu/tZ5Ti+tW7EK4NdOlxQm
	 r3Dd4+wuP7LxnUAFhwD2ZUpeqrYQQMB1NWOuUwJn0wy3zUPkPK/gzqsDFAIZfQ6vrE
	 utFk2rpjq/pXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089FC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420419358.12139.13087926274079400945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79afd9c3be5237b985866dbe2fe5e26f4fbe8c767383ebdd7c55d5b26ca5cbf
Date: Wed, 09 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744204193
