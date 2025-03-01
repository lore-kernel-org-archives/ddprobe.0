Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E721D5CD6
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740830336; cv=none; b=B3DJmwoa0M3aRc+JYrOssDtsfi8S6exzL/o/pWodX1nApVj7HTTV1TM+ydh1MkQgRUiaLzsKvbRAL8KzHlYY+xbA2cq4sP+XqKaY/ODdrnp9dTjcz5cQcDrGHM/IFPx6QYn/Xp93Ond1AEeQwpZ2LyVgcwiIpPRd3sJVSM+am9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740830336; c=relaxed/simple;
	bh=2/nMBFBudjXUcSOw+oQbCvaGVDKfsIIOGLJDNSJJamw=;
	h=To:Subject:From:Message-Id:Date; b=dANgNutCe5EHF1g19xL68iExTKCTAX5WDw+I2vCe+Zr0oRRjIpsSYnvsnWfCmy08HRWMiytuwLf02JWzDNca3hC7QJH61iqi9ngNqDcTDhgHNuPIsLNd+TgVVG0nJ8Kwkl0iSucWowj/aU9AFXT3b5yJ4Y1/DrZykdCl8NzPe1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFS2jRv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFS2jRv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72FAC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740830333;
	bh=2/nMBFBudjXUcSOw+oQbCvaGVDKfsIIOGLJDNSJJamw=;
	h=To:Subject:From:Date:From;
	b=NFS2jRv/K3WnHzgu8cgzgXbaVpyG0MfvlsGxgXtEj9OP7xUc46wvqDQBCcbTB+IC2
	 5b67XcSaGt0eqk3CFA8sADVyU3b7wkBa3pFgX/sIF4MaD3yhhHfapIqioStMzSSSPL
	 92plPJgQlb08+rd3+zi0KL7AsqO0/omsCUsqXdAwE0GBrU3kB8CPKMZCdTz3Lxc4EE
	 9D1roQHc0DiqcbCnQ6KZd05qsMoHXezIhNDI0vAWOmHVkQtFrhVWIrt4820lqgz7QH
	 DWyiz5tVDoZEa7GT9ejgZmRGfcFv7t+wvJS3OtpEW7dqNMYECp3s835L3mrwR6mtzI
	 6RTaK/i/HC3ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96138C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174083033357.25718.3640533800370610905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7d6f8779bae1aefb896918d228609a5e03647b347b021e054b4e06dce1ff44
Date: Sat, 01 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740830333
