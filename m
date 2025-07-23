Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78061DF270
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753250993; cv=none; b=JyukZhqvyIbpcshuUR1aFal0CxztPg+/Hcl2FnQaN/KdnJv4UZ6Jr07vvxhh9c8+KLEFyENfHroXq+IjwII4zhEbzXarOIe2Ii4R9xjLTQ186jjrpsUx7aSZHGSV51FUq2BSvr2xTcqol8DeiN1lSmfUW9Gj6G+b3KpDdXZy404=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753250993; c=relaxed/simple;
	bh=eXyLYzHz95NAzbcZQwPqA05BWhakbaSuJ1a41aaklTs=;
	h=To:Subject:From:Message-Id:Date; b=Zoj1eAgTXdAaj+ibxs9JBIlIUbb0jl9IFRo6xA5ed10Z/p8kK3na5vkX5fuMixlNveGy9gVRENON6Hca8DPQs4XY55hsflKr71KG45kLlgvKyj2Cn4ihWVmEpbBZjBwUPvKY8sjRGApu+s5hqC6g8Fub5zBtlKdPzWGha6i5vAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9KSG5eY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9KSG5eY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD24C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753250993;
	bh=eXyLYzHz95NAzbcZQwPqA05BWhakbaSuJ1a41aaklTs=;
	h=To:Subject:From:Date:From;
	b=H9KSG5eYUuzn0wqBGljfnQs0CuzNvJTl29CWW3Zcbbql8o6O40nl/HjkmS1x5gztc
	 9+1hdVib6QQEjbIosjESx3KovFwrys8G0RuJBJ5PsUvcSHiNq1zn3wsaa4gd80HxOF
	 S67gNVMmNrnAkR25TivOR2qik5DN/x9qhI0dQFWy60M4uhzPhg1eU6bEwQ9X2ihO9g
	 qwEq79ZnJGd2xjGlJNpTlUXEvi/b/4TCOXLBx8DbWWjq27KBtsL4QVNt4uAWw1tmll
	 mqnojQQ4my/wcsGoX45SpzsPiIcGB7Dw7x+KltV0jV6RHfEoJvlFQAJsKUjI4eSJTS
	 X72AiRoWgdCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FFC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325099357.31533.1438948403536923798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37407b28effd932b3e4e56df9ab3a1474d50f77be7ffc091c602a96a1d918fd6
Date: Wed, 23 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753250993
