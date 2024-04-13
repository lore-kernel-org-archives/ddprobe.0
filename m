Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DEC17C6B
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712973563; cv=none; b=fMAV78HZsSAsGP7dwYY+LvyEew3jG6Q59Kp5sIerBnnrcV/Z57q3LeHflQtVwfZDQ77+nNI0coENTF8B8PNKbiQwnXgng9q3Jgfg3ib3/R4SqD4IfpFFKZ4s7xTTflXiqUGDlvqPmxPFvEibtbwa5BshIBrmuOZN5ExltpjpykI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712973563; c=relaxed/simple;
	bh=t91QweVPm2RTzhaMU2XjlAak3hJQ0a5XMAm3My8olyY=;
	h=To:Subject:From:Message-Id:Date; b=q4+TCsuA3v8puR9ZnfSNlbGa0YGlk7iz/M9MMEAs/h7Fk1PSJdGYbQFgUR7xHCBJErzI5WYyWT82WPIMJFQ9YDMNO1kMzP8HmkU352ULKsmQsJCzvMpQ2rbzBIjl7AtL1GodwL9MuW7jqxO0O/3dXDv4NgnyINB3DH4aCpGxRlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiIInafw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiIInafw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F27C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712973562;
	bh=t91QweVPm2RTzhaMU2XjlAak3hJQ0a5XMAm3My8olyY=;
	h=To:Subject:From:Date:From;
	b=PiIInafwlXjLzCFcoMBHlJuoJNb3W/DcdsP39HOGsi3Ra8w8pI5stB0cw04DES3Ka
	 fKE+weqqr72+6GkXNbfSo5KhotaXHJALaxHVLNVwVucPIH1SnCLsWfBz89dzMZf7fF
	 NfaZM9RTQ/mDzoT9OKHzVUILQP5/GDO9Y5Q0+/1mrZPFPpOf0/ZensxaKMzWqrklEf
	 Ol0x6+xGA4EhOMKgsf5qzDIW/+h9C0lMIUuype8qgUoAdoqcgVGGfd0VRJ6MOpa5wm
	 Y2WAeydGs8zpc0gQEJgLr0JZemnZ6jyzQbp3+eK+iovuTcAXoyp6PZjBdTs22mrUfm
	 z3ujz5W+mF8pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6902C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297356276.11720.5944791461647256822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bda0ce0a7d83f10e7c47ad85160554b8948a59727dd8437cbd2686d45a6616e
Date: Sat, 13 Apr 2024 01:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712973562
