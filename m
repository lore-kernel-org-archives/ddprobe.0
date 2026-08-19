Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627D638AC8C
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787098836; cv=none; b=Rx5jvYuVifbV6U2+cCnAjf3d+g/lb4hm9W7BPTYDy78tzJcn1Etd0LjDWabTNWdm/CJH4tnuzz0hX9avwghGibdMQGZ6u7toTZaY1Y0D0bTOpy2clfiP3FqJyWd2KB0NsZ5vzXrP15vuVM24MJNsjQegd2/PSXCV2Vce8g1zi3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787098836; c=relaxed/simple;
	bh=eYg6u26noZj+uNUSAH3Y50V5ayVaBXeq3ED7lAuxzJI=;
	h=To:Subject:From:Message-Id:Date; b=pYWkFrVWKo032+cauKfc4tjdF8ZskQjDu8oZSL0xqz63qCL5zEE8Q/BBXfsRUYySV8zwSQPHYUZmISrNuKAr49uklOwS6yjdUJKnOOK05bHlxRJvp1PjijsbxePYRoPQN8f0A3pJgbHIHsU0YzBuwDGxiZGbBZeqJwQ+1kEVuJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubpjzv9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubpjzv9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D611EC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787098833;
	bh=eYg6u26noZj+uNUSAH3Y50V5ayVaBXeq3ED7lAuxzJI=;
	h=To:Subject:From:Date:From;
	b=ubpjzv9rrSFNLFmyu2k2RW5BtDUDij0eepjNXFDz2HutX0EC3j9yBRWh2ka17Jsd3
	 QbK1ClvssL8/bs7qo7M8nY0YPMP3ufJDuV1emdON+3HAb4AdsK2O+AGhQQvxEMnsRa
	 FURnw32J+2CBKqmHDlMtTeWzV+FrQ+DjbhZYrH5C6t+GW32GlTiDdrPZKoYPmMofz8
	 nNyd1PUYmYngB3MSWBrd2dk2VBDHAy8Sy6YeH+i72VEYF+Vo1uw2r1N6RQiwReEJxz
	 IPeyDUjVRbRq+V08MfH9/MRitt0ClnJVPGyLBgDW+BZ1+dhtUKYCRlJaNnaF+mkHdc
	 K/BCVzmuYe+pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B6EC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709883368.2800.4896879516619375429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f880c8db78f8be08b9e6dd130fcec763de2dd109dc0b1ed83747cd39f3ded63f
Date: Wed, 19 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787098833
