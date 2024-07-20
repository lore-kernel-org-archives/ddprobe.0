Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4069029A2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721468754; cv=none; b=KbkHDyHeYgYaLETWY4h1483cVEeUDyCojUV166FYKq1mOpTkDKVFkjwpg+M2h5hSql0wj8TtzNhFFtCx/yY4DW+AyBQCccyJ7GbBCUAIpcG50kSRkp0y9UWUXFXIq/3Xg5wQgYlIF7uFBmvhyfYn8dH0D0OSTTCcJHXDNItnVvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721468754; c=relaxed/simple;
	bh=24AKU9ZQo+5tEPyNPdn8IAAzCRZU3KrI899pNg+YRDE=;
	h=To:Subject:From:Message-Id:Date; b=HW3eVsIofpqLQgXDY4PTf3w9+wixKRSRNKHAmlh4wdDCxe5nJDyN0E8e1gARIL2dTGB/YMonVakLE41AYwFNVgHws7cW0ezrWTAcJvtgAh/wIDvf6PlbAQZNkJ5Tv5V9NuVZiowO9WeeiTaf2x9Ypn+Nlxl9dFNizStleksRa74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMQ7oRUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMQ7oRUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6AEC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721468753;
	bh=24AKU9ZQo+5tEPyNPdn8IAAzCRZU3KrI899pNg+YRDE=;
	h=To:Subject:From:Date:From;
	b=EMQ7oRUIOFIJEKETm7dKzpic26T7ISR6HexGnSh4neBzLMrWumxLViKXfk1rps71h
	 4cnWjCrcK06oqYdRFjjIwkHPxYQJ3T+jyeqp18ThIxzvaoykBLQMEK7sf9d1IaNxHR
	 DVGVukbkU86jesocyxIougQUAmP80s/7MsqlzennHrJ6dOK8tmEkt1Uouwx2kHSz4J
	 iBUMIkjLYG0h/AfGLogv6W1uGZA1ZwdAL3WaFKwA880p7bApHcuVWpTYqx38ecj9bn
	 GbxBJJus/7xumN7rf3R+srvo+S+X2xhLeZIVn3RqjnkiFOd2+S4PtfdwL4idEmrsez
	 8KaYU01zv7BMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31A5C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172146875361.27284.3248362269770820037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aed9b92e3dca794fb1805eb6b41c204eef6e0ce789bf9e066173334343d1323
Date: Sat, 20 Jul 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721468753
