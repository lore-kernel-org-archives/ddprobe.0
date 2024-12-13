Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E5423C9
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734093954; cv=none; b=eLh6PoPtWs8BK1BLYNb7Kmi5HSTywTE0G9br33qHeSbpgbiZyAs6FfV7y9aJAv3wmsk8PD2NE81NPU/8sy+OcVJg/U8mzE47KNifOM0tGDYCrmLwb7UCU5qvtUboAepBJfwdBEERCDVHXvjElP0fSH+uO0lRh0wVk8Mu0+ZkhEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734093954; c=relaxed/simple;
	bh=TPPE9RH25Ah4Q4IrBJfjLpC49Ib7KJgfmpSpqTGPedQ=;
	h=To:Subject:From:Message-Id:Date; b=k6acRbm2v//Vk10au0wEU+dxhyRr9WRZG/Tm/mHhCid0RYtPn/Yagjj3qKULBfZuUAZKjanakNM4jZF4mXn0HAmhSJGNAKbuW1uQWn5K7Yv0kFaFI5e86SwQJ3H3EtQiV/DiRHR0f+4k5AorEggrHMOC1L4KgUtLlBpqVgtlNjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzfpnGLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzfpnGLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70B7C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734093953;
	bh=TPPE9RH25Ah4Q4IrBJfjLpC49Ib7KJgfmpSpqTGPedQ=;
	h=To:Subject:From:Date:From;
	b=RzfpnGLv4fibixvmaWGlnEl2r0xGSqZqP/0rBIQ73z8qwlZUgjJ9TQz6CeMfLggf1
	 XMqqDsr1i3HGvmbAbKUUp1deLtqTRJulrFZASI7G1W1PlIFSqSsLXz59v80p1rjcZV
	 CS5li6HBdSTL7k2fMQaigUPfbtCj2n/MfKVsnJAgBuhqLP1iJeSMr9Fh9p1mYUCjMn
	 a0dedE+7aqu4QFgWCedlZ08v8AqGQj/xVnMOyTvqu1twaCTfhXysy9V3orCUGff0aE
	 +L2q5Wk5iHGkvOAMIW5FLTF8Pi2zNRswUt+wGY+E+a57IDLISltlLEDJcI9f/OR90v
	 GYaYn+qUf1hyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7E5E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409395362.7717.7996474233626717961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aeb60f3645b6d20702e54956e6dada85b7ef301d6c4c56723491ccbbb5a613d
Date: Fri, 13 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734093953
