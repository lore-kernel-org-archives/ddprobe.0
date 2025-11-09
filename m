Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C5113B7A3
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762703994; cv=none; b=RbL+pTU0LqdyiboIFg/aCOcw05D+FolyUjRERcbRMMzTByCkuASwW4BqIPOsvPtgIjPauo4omg8Fk6x0JZC5JMl7Zqdy+Nubr1VlMa0iac88uEf4BedQ6XpeuFFw4Ud2Izjwhz4Nov6pLZP2MPV8fti0BT7dNKKqBqji5fedfBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762703994; c=relaxed/simple;
	bh=ZXQ/BENjMaNWKLQTfNoQRpGZnbv9b0994GpgqGU5E4c=;
	h=To:Subject:From:Message-Id:Date; b=FB7viZOUd3dZ7mKY38GUXc1FS8k5RbCojBVjikUjfP5xU2qgUO0UspIbiz4mt6YQ9wsbijnXVq93uT8Jy3/trVrEugw2UdYTD43qnZq0kP5bPncMqLXFkWzgmc3MFq4kBJqXCU5irxpgxWTalLhxwcc6X3/NiuQh2NU2Wj/ZzOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdFJJ8Jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdFJJ8Jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC1C116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762703993;
	bh=ZXQ/BENjMaNWKLQTfNoQRpGZnbv9b0994GpgqGU5E4c=;
	h=To:Subject:From:Date:From;
	b=tdFJJ8JbTGTaWcNIZP0yNi2ACvXFwfGEgS3k5PkLFPoIS//cnE5OdeTktmYSJLcP1
	 pORNkhOmsqXYo7RSnvnW71S97K7d3CEeen7TcGt2oOiqI35Drg1uXNZdOwkAueUbp3
	 sjhcq62qWXSr68awpjbkGcCEmtIc0+81O1GlCJidB7h57ANWDQppmyuaYO5VYRuP31
	 YLT2WIb+Vk6j8Zgv6a96dlJ3CnLoKhezFOfIEOYe+xpHWN8cU8XT5qIQTITeDljFHU
	 soc3Uo15zNj/oI0Rhl/PmzRXbacqpyIXDWIdNHk98rZ5Usevxe2mp2yymZ0WW6ESph
	 KkT5G3u6WnqOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B7CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270399357.17496.10116560631942959191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c041f625d6b7f555e0cd6eacbd3cd31bf1913a0cce353d93115256c2391f06b
Date: Sun, 09 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762703993
