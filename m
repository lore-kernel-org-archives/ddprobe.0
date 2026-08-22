Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4E4242D67
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787360434; cv=none; b=hp9ix80Qro8S6gBWHyKwurTWSZhGXEmY9nRkIfZtDg+XHaYBryR8QqgfLzB61OQHeqLIJAfp6TtDip3hJilQmJHHI91v9Li8ybNeG8XdaahkjxzaIUpgvvoTmDRkT8EFyiJE4TIDSWq6DSoJ4yzodPIqmCfDSe4rj8Q9CgM4X8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787360434; c=relaxed/simple;
	bh=CG3+/k71jfX6gFbWRqmG0AUJE9dd7ss9VCHsIO1jepo=;
	h=To:Subject:From:Message-Id:Date; b=bPidw1KgkTP374P4uibSsVmB6YnJvJR3wL8THEegxhVunyKhzc5yMsO0IGXDvrsNUlm9/wh2yAgpR6pSjFA2qwymEmC2yNqwh+n/aEJVnQcj7v4nFjKb+OexhAwRxWKyOGKKYZRqLBVZpJH/UY6ruWHdjCeQMyrmSwHR1/e+F38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U82CL9Ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U82CL9Ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB25C19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787360433;
	bh=CG3+/k71jfX6gFbWRqmG0AUJE9dd7ss9VCHsIO1jepo=;
	h=To:Subject:From:Date:From;
	b=U82CL9UgWU8JAujYcF/VUh5YfZ8tAcvdU9U0OEf6x22GiIpB6ELX+KgKiv4Oh3W0L
	 PaglLkQ2B8fURgKzLa9MQ+4DHqUTcA9EzC/odLvKUBtLsfcEuq+/dY8lCk+qvTHq7S
	 Kfc/R1QiIXdvHRoW6zQiE7JfFAauebtK/3yUclbnJyHZI1cdArgABfU28HOPdXjoqW
	 yEVB61Wm+rbBc7E1OsBwmbkvXKvB0rq8lPvHUbdb/oZdScVbHxGMGi1C09GwkhUO06
	 cSZx8ATH+z0chVldEiVXmMQ6LYqQt3/C5b43At6cmBuu7zSGeEMCy/Ezf9yxvbDLCT
	 FRhOYhCVn9AwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29DBC5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736043369.29028.10181021143981016952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15397868cbb32f500bd2f185bf424d2c43ec540f25c4f7a3013f418972402a04
Date: Sat, 22 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787360433
