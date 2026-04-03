Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853C63793B5
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775221534; cv=none; b=ZN5GmpJ7GT838V6N7Q0bpjTd8QySYUjYl+JB4wVgEwzeWdmJRfbxQjQp+kIn5fgbVsR/0aGS141Ng3kBZbgea4jwNZNUUNDzft4GAkfCiXmrgoR68NsTXNqH0zbnWvZ1AwYJnQ4Sk/p7iyJEXc1e6v1CMF7/7WHwYjhDsyxJ/9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775221534; c=relaxed/simple;
	bh=3xL4LzLPZZ6MJk/1L4aRUFOHFDzXLSjU6YH1hI+xJfs=;
	h=To:Subject:From:Message-Id:Date; b=id0sVFOas+xx9JxemukLFII5FtLo4yaN5buvjq4agvfWHCHNfoZZYPD+5Xvpv0AKzOows97TMhcUHMCPAXJ9R+Pd2i6wEchEjq85oJyT1ioEItkiCDTUcID4NbKOkqfmAfJSo5tFRb/JAi5sVv25NUx/BVJEQeO0X5uaInZBOkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKmhinkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKmhinkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1496FC19421
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775221534;
	bh=3xL4LzLPZZ6MJk/1L4aRUFOHFDzXLSjU6YH1hI+xJfs=;
	h=To:Subject:From:Date:From;
	b=vKmhinkKmS4niQajs6Lbium7wYWUcrU481ti+PfAk7JEk40/q3uHq/Jk1GxfLnPdK
	 5El3NI5kteFawp+hoI+CzsXbvDktmwPAYcwkBuGln0q9FTmg0eNEQqGHzrOaBYMUHR
	 +r8ZqNqr/9lX2uG9nXo8qo9Ee6rQN3hroZfVVmlb9wJLVeWjYGS5BFfsuEH+Rab9Dj
	 JiH0AZSJXU7fhE+a5G1eWbUIGQdaEyuwxLaUk5RNq14bsbgVP9QOJjR+P0GGm7lYIc
	 dv2hEYx/fn9TgfI2zFEbtN0lrfczBhgmVwnFXo4k2njIK8V7Rm4gB4XoWk3gNEPUHa
	 +aoMkaap4bz9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0330E85363
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522153375.21150.11499884603893997188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 209cf8dccff731329676112316089510d47d76ffbf97b1072d4f58293c203226
Date: Fri, 03 Apr 2026 13:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775221533
