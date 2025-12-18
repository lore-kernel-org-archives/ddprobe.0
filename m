Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139DA2D8792
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766088834; cv=none; b=sAx699E7dDJl6EmzXYliiZzEf8BgYQCWGknn6z7NibPtzZk60YYHfYhXgurVCbCJ1hEeLsbbg3AOvXuXAlKBs1bspRg2YN8madJNgV5lafRt1lSBWPaMXmGjtR82aSSZtHpPcZrGtjtQITpXdFdWKcIQuJqJTZS/eqG+6Wyua9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766088834; c=relaxed/simple;
	bh=TiPLC+pb7IDm73/nB7nRISpT1BJGxJ7dObQhwK6CSnI=;
	h=To:Subject:From:Message-Id:Date; b=OnAhqT1C+ljEvGftOTzK9Iqk/wsePhRbkCFg9OQOXF+GQgthVrEA+DliMecFzcV1oh+sFMQ7TTd52U0HCNs8CxR7UpQdQXUO8PWbbZEY++IRvMdEzXc2KbxAzekoVdZT0fBPqvErLbtBVJkyIHZMH2FJ5Anzz4txef9MBqPX+Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyLUtUVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyLUtUVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A554CC19423
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766088833;
	bh=TiPLC+pb7IDm73/nB7nRISpT1BJGxJ7dObQhwK6CSnI=;
	h=To:Subject:From:Date:From;
	b=fyLUtUVYmD2CRR1si5sRpgugxjFJS1N3hmdEfAGEjW8KzKsbwb0wWc8rhsq/+CgIR
	 gCdLTvPjQbJ3Bcs1gq0VsScEojV26iTcCvj9YWkWitg8wdCIYspY8zaORpuJSbiN8o
	 jueZwaJ/F0AZByAY9yMhmzAVPrz0BGa7wtw5FKhEXZ7Fv8gHEGhK7xfN29Eh5z8weS
	 uWWFgGCn0rurpujbOOTg1d1yqPMo2ccXNBdf4IiQKjEmL8PfFhWbwuW204evCXhcZM
	 mY7j+RI+S80EWnxIb4KHNRRC1P4/ldeoMZkRTnFymMvBFcdx3sZ/FIpGnpmCrQkPEC
	 zn04vFYPNh12Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D49D711A3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608883358.22618.938179001993047082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7eaa0263e54ef4cff82e720c7cccdf7079c99604bd06efef10b0ee071891a9f
Date: Thu, 18 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766088833
