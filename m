Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3474F1B4156
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760174394; cv=none; b=NRqNpQgDnAAI+9FVMRlTJ9AbLbmPlS3yfSLrAvzTvWtE6/+YaFk1c6rx05QR6O0Yn8uwrxopIZLrJPMrmbwb9ncsG4xoUTidpYGO/2+N+wj5L0k7bXVvZJV4QwklR6VQ23PXX8u400/ryHxpqyeU6/B7QPeuNrbfdpfvfTsDmZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760174394; c=relaxed/simple;
	bh=chWlcH9SorgkNu9aWKBXivnH5z/QymXwAhzNcw8iv6o=;
	h=To:Subject:From:Message-Id:Date; b=Bb3t6h51FWkTyZ57bb0Fp7N2gew1189MeOvHeP9wH4WAwwUmSHVjszyoTa9ieBcei+ZNKq5acQ/0eTKys/lZbef3/RMo0Borz4+Za4bLQjRj3cBYok9rKx2FVq9gssjjIYYJgWjbsndiUmn4pha/2VcUh5ljVSaaSrb3XJ51PJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwFK6g+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwFK6g+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4399C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760174393;
	bh=chWlcH9SorgkNu9aWKBXivnH5z/QymXwAhzNcw8iv6o=;
	h=To:Subject:From:Date:From;
	b=lwFK6g+i9s2Rny+UNn6bWKVuCw4j9fOwAw/C2Sh1gFoliL/qCMSU6v82o4/Yh239J
	 gzBVibcicM5bfa+HzqY7U8uWK6+RJ05qvNf/MwYmOEv8LcI6Obc4M2L0e5eVpQf3+f
	 csdTNx6JZmNE+CnOdgt6diKR5+xUfZByQqm47ZPKf++FdaYHGcVW+Gwds1DyHNLd44
	 lavlPYtONwHEccpZoYAd3Lw751kJ0vUfbN3N9mtpvrA1w+eE7vId5ZoPoayIMIN54X
	 5cCDExahOR7bMOmq8A5ax4c0hgGgnKRqb74/LYeK85jpzkiljNwQze2IcNHzbVuaNY
	 D5zvNISJYNvbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93178CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017439358.1952.747762424197277657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad08c64b805a6e6121929bd94e6c9aeb963d1d9e9751c700b86856000a2877af
Date: Sat, 11 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760174393
