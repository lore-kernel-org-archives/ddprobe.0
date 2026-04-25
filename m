Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371132045AD
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777143454; cv=none; b=aiIUUi09WTXT1nXoxRPkArog38yC/gxk3O8AQ4ytOoQP1yZoiLoj04xW0NNz+ZpyrDX5DHroa/9mW+A4NKyYhQCMeI9FuaUD9rJjncd26DwzP0BuHQGXZaoAzEeuypMIpPb7JVOBc+EOjMu1OOv8RowAVzdO6BY3oZ4k+bbqXSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777143454; c=relaxed/simple;
	bh=hSsBYuFk/RpNARxXFZfX7jppDL8RsQv345+u9EdZXtM=;
	h=To:Subject:From:Message-Id:Date; b=n3p3P1QW5sd4Mnp2CYc0FCZKrpKtkVxtBnedvUk4J8uIwWu+sU1I6K53/Loos+94pXVpu1MQap3cyc+pJhvOvE8W2y7KzH7VPXSTUicEhkrt0k7RgmkurbPMyszhuLMW8QkqR/VEhnWnB3PIxspjX4EJfj0sAjfqDINxzPi82Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpNif2X2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpNif2X2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD56C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777143453;
	bh=hSsBYuFk/RpNARxXFZfX7jppDL8RsQv345+u9EdZXtM=;
	h=To:Subject:From:Date:From;
	b=MpNif2X2hTBXinHoXwyOpOhv/RLEsBreZO9fwMNDcZSgM6+4iX7X9ouPZo8I/gph/
	 yPu6l6WCKKYTsnc3c9TJY+nGuUNvNHYiJ35aKnTXioP9Ift22u1uZ4WwJ938zxO7YF
	 D72QKa9pGv6E66nkNI6PMapUmQnZDH79hZvIaFqPQAHEd2JqDj6A+F0aoR6HfwJC4A
	 vHYAkwELm9XRp6ZmAy0ONAJVNpwVcb89MpDjDRnjyqq5jF3D2Jk7gAjEmkTvUhVuqt
	 QcXg4S7HkyAI/bIfEFBxc4lnpCYEXnTBqjg29RkceIxVjl35bvODjqZ1ikuJoSMCBE
	 ePTSnVXN1gzJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF079FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714345368.25789.2546768294797245994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc681a2d58da73c3e35d3e500de47126ebe3b34a55481207c45fad8b4399180
Date: Sat, 25 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777143453
