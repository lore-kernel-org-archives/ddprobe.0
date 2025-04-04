Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343F81F0986
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743797994; cv=none; b=PIOOBBk3Qqny7m1ZOzxI22XLYe5DeqRan0maShRdbLiiaOsZYBG9MH2WmFmIsixUbF/FvlfSLuGdWSxyn592Grwf3ezwFdgftNRz1keKbzGTCuDZiFKaSNHHeysezawXAQtSuqJGmVzIK2DxswgWL6/C/C3NSJYcW3xw/AML7Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743797994; c=relaxed/simple;
	bh=ZhP57dpVcwHYr6pNSlJuOfCiN4aJayaLtssY+1ANOQw=;
	h=To:Subject:From:Message-Id:Date; b=jgzdTNYUDhFJvtsKrqKel/t0sXJN+ILKNAALG1W9Xb8aO0OXTEj41L1GTbUbGOWbz9XxFpcQQJH/2OjVXZSSNIKosjhFC9LZsjkwxLEGyxvRjjK0XjAS1GYMPk4B+Ai5qivR/PdQa5t1KU0ERJ8AF3OBXSpMal78S9BdWXkTOzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+gYUA7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+gYUA7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD901C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743797993;
	bh=ZhP57dpVcwHYr6pNSlJuOfCiN4aJayaLtssY+1ANOQw=;
	h=To:Subject:From:Date:From;
	b=L+gYUA7TWtHEqjxqKOej3dFLR9QJGX+eLX6z5fa9wzMSsMfkIs8Yotnz9mtqtrC9O
	 dsrAwOh/NED4k0lsYy89bG3rs5y8lBekKPODS4rzUqg84ZjqJg4q3AGtgo9dcmegKV
	 inydfkD9whAAd2gT1wRhAHhHujEBHxO7Yr4u4NjnO5EWryd8ylzi0RPzceCRr7bOSS
	 yCSWD14UOUWbcpWVuUUvIwMdgP6kp19xB7ueceqM/YhTyKX8tuDiJxKETL/mmQTgRi
	 y8UZwq6xDwQUYVPbJvq9SXRqgMOZY8TkRaDWgFEXbBihnfp8H6OK1K/WysrO3aep+/
	 SByldmtr3DbLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B58CC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379799359.12129.3640989738547029599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb88325f541d1ecc1c3a4631ccdd1acae5744a3e5aea807314daddb74f3fc917
Date: Fri, 04 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743797993
