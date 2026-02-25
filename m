Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAB43939C1
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772017494; cv=none; b=fRx+fTeK7R3GujWy4Sfz3D0bd0etlZBzMHk51+Qd2rkaIgHsjbIwkeKn0/KJGe26aOin8C2Go2kcF3GCQGVfZLIgvtNR63LOI2QYUrbHG6laVcQmzUMVdSHX8yL11rh2qHyeMp0O+P0Tp3t9sNkkqXSJvSt/Gsfq1OSh1ErUXao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772017494; c=relaxed/simple;
	bh=j0CPvOpc8WZa5Yst7PfnnKx/5vkMjv90Uqodbt3pjns=;
	h=To:Subject:From:Message-Id:Date; b=P7yichM6wQ1+UYZQi/eV4/DK6ehcoNd9Q0v8+DNR564LVPJG1l3g5Ssmsg6Xe0XUDFI2xJUwxEYW8iv+tJbqN2PDixCXgibSAFnUPVU9SYd+AbYXIdLYEPiifxJhr+UHpfAPG94x1dZfNn5j0NOUInuBvBQVZtWDx6f7rZbhVBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YW6/U8GN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YW6/U8GN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A628FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772017493;
	bh=j0CPvOpc8WZa5Yst7PfnnKx/5vkMjv90Uqodbt3pjns=;
	h=To:Subject:From:Date:From;
	b=YW6/U8GNPXI6Bpp7lgKU7Sx1L0BVJ3hzJawZ1p7Ft0U2lBawP4lF5388xm9eyTfnL
	 xD83fZlWjFAvWFXXxub7S0tFXBUFSyr5eXg5rzkUpHQKzi/By7NsLOpAzksqzPi17i
	 Q16cQZsxXsBhagxr2KhjIrRCKuKfUxL7memZp8SGQSTqNjFdzWyfglexlIZ1UKkekH
	 6IuHw0Nufi0lyoE8EngwZhWYCxrdWrvu42fhNwuqOBter2vuCO/FslXer6WjmoNg+4
	 Zkm5esu24D1poU8DI6LQLRL4f3/TO7D77ePRsbaE7FS5bjv8hf0UPOMS0XKtfvSTc7
	 jNQzNIeBmSnMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90108F4BB9F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201749358.17427.12231972552095264607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f453eb7643a6ec691f9a9edae7dab15aa359db765a231c25bcb2c03fa49aaac
Date: Wed, 25 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772017493
