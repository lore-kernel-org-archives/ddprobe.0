Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF2613B2B8
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712813297; cv=none; b=h+H/RDdrbLYvsdnwtskKHww52Bd9AaaJ5cofjI/1Sf0am96XTYfdQD+K1OVYV/cBMl1LAtVOs5YY4MyMHx5FiuVrQwpce6btNTswJ1+6DfqMQTTdbXHxgkPaL8LLWRXUUID/Wx2Eaalr4xHZTPaADPNrmFs6p6RVus7htAOSkzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712813297; c=relaxed/simple;
	bh=NBGuUhzGOr8/TOclFrimx5ftZ6WMqrFXgylHPwWTl6Q=;
	h=To:Subject:From:Message-Id:Date; b=mnIMmuX4UmqGj3RHQpUd5bAmD7/xNrcTiqLk9oTygEXVpz6iX6WtPXCJItFGQW4Uvk6ib9dOLya7rsn5aNrsA7QTQKO6qjbqx+A0u4bD7IfvhBT0FHUjarEzzzVINuOfgj23a1Q7CCwssRhp6NFxqK8QzDZfIuomeQgEfh9grcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwXCFjSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwXCFjSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E21FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712813296;
	bh=NBGuUhzGOr8/TOclFrimx5ftZ6WMqrFXgylHPwWTl6Q=;
	h=To:Subject:From:Date:From;
	b=JwXCFjSsJmXoHVMvkAop5s/IKYf7cku2zVMiNalizvj3kzyb4++0h3QAluAFnfCP2
	 dyPUCDD1FbSScrmta4VfLjuWy4X222/ARCusC48PuWf8+J5kpwIi4zlkSa9hrDiDQK
	 HRDN+V9b2VTTRp8+QmxFq+E30+Szfl4ZzMHR3HpvBtpzTio/qhaT/gB5KzHmwlauZI
	 WwTBiqYE+YEtONWozIzJJahAAhThgEkKqLL69nFdMK4siOwJAkudtE7+UbiA4B8wAK
	 t5IkH9VmtgyzKp46495ccK0XJxV3m8c8egZR94fs6Xqg3dHAmd6OiIp1W4FMknf/EC
	 Td7oubdAaFe9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7FCCD1292
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171281329638.23271.4009588543478285090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7708d8ab571535b69fa5b9537afbcb3c2d301c5193684bd91eec24a7207d77
Date: Thu, 11 Apr 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712813296
