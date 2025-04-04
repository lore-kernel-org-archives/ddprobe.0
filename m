Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512541D5CC4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743762594; cv=none; b=YtP1+eJSKVdocmDx7rszPISubW/ffU6NIsBru1BgZwIuKTe+7k6guv9pnAw8z0c6AtmH/u27mwQkbmjJ+DwInmb/XGb7rBsh0wO+8HHmrIEQRNYzL4HOckLYR4YyIx6yfuvxudJlnFfmP90BN01lY6mKqwvD1btmwGKztXiUdYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743762594; c=relaxed/simple;
	bh=8FjFuIXlKeoMcs48fgvhTmZt0KtMka5WDQagAEEjcCU=;
	h=To:Subject:From:Message-Id:Date; b=nH3SRGgS6xNGHMKK+3etdf4vhsyomQwHRUojH3gZA813irgg0mZx1ZvcBE1MhdUEGUhA9xshFoBnO1e1uCkegwUIrh6qlQWfH/zOvzbX5s8V0nI8u4n25LwCvttkynsACEmMkgAqmM6Vapd6RH8+HxsavIntSHq1js6TlTrzRAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lg5DAlCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lg5DAlCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAF2C4CEE5
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743762593;
	bh=8FjFuIXlKeoMcs48fgvhTmZt0KtMka5WDQagAEEjcCU=;
	h=To:Subject:From:Date:From;
	b=Lg5DAlCHdSzyNxqCUVx1mExzxOUOcMlgpyYLdsgmVNMwNi14cVmd+7oLIlBOgrtcp
	 5MVX69RyvftyezSVriFX2zz0bMh3opBYPHfDm7z6K47CG055WYgU3EAdCVpjq+N6Z4
	 ubM5SZo/U4lLQc1wPQ3cSKjEt2rNyCpY73geFMxrh1ECKtvIaoAusGjZMMBjkp643y
	 Nz8KUDum1claeGfUcsahMbOA4jt5QT7uhCie5i2GhFMoeQfoJynF/KHII6G75CaDzR
	 Cb5wcE9BQVNHYUmqx1JlJM9k0q9ocerpzp6monv8aHMZQhNs+JNO1PklBLgmn0cT17
	 k4hnMX0jfxX9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99321C369A2
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376259361.2762.16533183176960087299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab2330dfa6a6931dfb54d3854e4948489403211fa23eb057ea4cdd0f0510af7
Date: Fri, 04 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743762593
