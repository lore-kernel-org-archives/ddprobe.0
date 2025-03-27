Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4063E1F3D49
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743061795; cv=none; b=Qo7npBg0bZNpU6KO1xwbvbkaPOPxBUQQcj+m6rOpXfvMkiMKkeMcp22ly/lFsvxDPzKOXQJLM7OVWEOYRjruz2E9dlFjE5Wlejw8jcZSftNfZk+Vtf0ZFI9/aqi730FUUH6KBV5UaV9auxkxaARJfG1NPyv1e5V1NrfIL65ShtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743061795; c=relaxed/simple;
	bh=KhFPm/cYFIQ+Qr+OZ9vtpOFp24pIXp6jfGfJrhXAe+0=;
	h=To:Subject:From:Message-Id:Date; b=tua9I0rZtOvGsCpgO7uWX/B1z1GyR7srAgCS1JNJH1keDzHvTdtvzdla3oZDZcquQJIILxhrJVTzbigvJflNX4yLcEKK6p49EVlQMuQVaf6iWdKKdmB+iDvDesrN1D+JAfJujGoOfOgUx/Biqw+Gu+YGXCeLkZfCpHbEIx3/3tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/I/S++t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/I/S++t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EE2C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743061793;
	bh=KhFPm/cYFIQ+Qr+OZ9vtpOFp24pIXp6jfGfJrhXAe+0=;
	h=To:Subject:From:Date:From;
	b=G/I/S++tpIbCyD84rjvRIeBy0gKZvu/dyOherpk3wUEC6JwaWLkx8GNzIMAOjNZzc
	 lQ+MHRK6KXLAhJzlQms0ILPZIEJQKguB8YxDBcyoFWthqkP3VBsCdQFWjY/FMIyEAT
	 0gddVC1/0n9DuR8aYlT+ZArvZ6HAHKSz4MuX+wrvnqlP9Q6wHzjb5TVlmsPrjXb3fR
	 YY8f/ytKcEnzrBmWObssiDeMTeuVrhnfCbVStnPWazpkTKWDvDODnYtjT9t0tYmrpX
	 kzGgJ+XajJTzWY+hQxOH0kb+PEJw+dAAX9SedV3rHx3zD9QvvJ5xOVoQT0ueG3Z3gx
	 e/l3DVDK95N8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD79C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306179361.20322.14128627380101034544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e07cee937cd468cfb405b2d7f98ecd22fcdcdf2f97ce40ca12258eec0da5ada
Date: Thu, 27 Mar 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743061793
