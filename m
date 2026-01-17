Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0123872622
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768657434; cv=none; b=Oi0cagdynL+Pfk0aCuyIB2HvVPUrUMQxFRUqRJ7QIcJES2ubsM/14UUR9txY7ap3AG0DQ5VyqKvAoJH8taWbmXFfK95IDatjefzTA7/9Qs4OGyw063CicQJ1RXr8O5cIr07rUz/TNwWB34Bf2TgyqqkBUAt2ilZR8LgG3I5Ptaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768657434; c=relaxed/simple;
	bh=jQkiaCJ6omAtT/tvacek9ewF+Vjjum/birzB0XxBv3A=;
	h=To:Subject:From:Message-Id:Date; b=ekk7NIm9Ot54pr7T1LQx7i8HYD9nkyxj8tkaEev1ql8cUwZMpaCneL1qfKR9mBp7yTO9MH4dV0fF7NZ2/r5+rTBMy7BLjv2bfzfMujZxQdn2Syoumv601M0Nf/+nltcxzq8UZPMB+3lj36RlOOUzXgOT36EmsEoE+4IqIrzCwM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKJJy7nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKJJy7nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE53FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768657433;
	bh=jQkiaCJ6omAtT/tvacek9ewF+Vjjum/birzB0XxBv3A=;
	h=To:Subject:From:Date:From;
	b=eKJJy7nntRyjKUB4jsBuHYWwl6tzfaZS8Dk76JpfZEi1DQApQbckplSFKim5DkBES
	 C640+cp2igb0AL3+jG3C7qoryWZTaDcAB9DK+YDF/4sucqRYaAzBa6dRZnLp3L8AHt
	 C9WywanTOxTd0vKVCnXmBATdvft2+EiI2tfAbADoJhOdeYEXh0UZgA3xTHf7+K7/2j
	 y/SG4s9f10F2IxIhw4J4FuM+BiAzXb7OW3BnGLcKNQ20lwCsTRWdk0M84SbQrGf2Ps
	 az6MFHMQ//xCfL4GO3bd4qcLh9xaHfU3xQatp7gLIrJgiWmuuIrZPIuSv14wFG3FD0
	 XZ6GXszPKXFUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA71C98329
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865743362.8146.14117184054701382572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74425de26d5d4fbf820f038e0f41052024809337830e0155791f775947ba695
Date: Sat, 17 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768657433
