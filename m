Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6F22236FD
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788591034; cv=none; b=RQhUgsnUHn08kEtiBGDo24QjGnJ59mNzW8giY7Tp/PAOhvdJ3ceRysMWtx9im5zvcVTe6aEzyWwn5ruZYxoQ91RGn+pbDdlfZRTq0jZchkG7ahJZADp++l7Ofi1vk//orvM+ilVz6wnMlKIJSZxCE85RdBEvulUPP/VYK1MJLc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788591034; c=relaxed/simple;
	bh=Mmxm6J6LdUIP9A5CxkqMMBB6Y2jkRegSfF8KKtsTVSw=;
	h=To:Subject:From:Message-Id:Date; b=nGl+Q0XMTmhdktio9I+wydz3H4/Vdaz2BUQvBrfnqOt9rJAb7ibCviipKD4kWTKI4cjDxx+bw4pbSg/AlXJiX/ygvfZPmfuJFn0xJWkisPNXr32jVUFyW7SD2ukYi6SaVdsSYsuPc4zp+JcOHHs428MEWoTbJN7FDzz91BEqRPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuOg+3kA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuOg+3kA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BB7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788591033;
	bh=Mmxm6J6LdUIP9A5CxkqMMBB6Y2jkRegSfF8KKtsTVSw=;
	h=To:Subject:From:Date:From;
	b=YuOg+3kAEJxWtJNqW8Ntyw6EHwKKMQ981w6jgkQ2w9LlSDWVEIlnIir9PzEL86Iya
	 sDrVK3cBvKkfz+1eunO9XhXLrSbZBTEU26X96xQ7N5zGp9bPj5XJS3VX7G8f9mfAzC
	 CuqtpbCx+25kp/dSoLJQuhiDmg6wjV00QEYm5t4vDNQwcs4QjKW8LB8z62/3Rpymt5
	 cHx4jV7Q23eGFFPLPA522sUcy3d1E69rpEWiVrdeD4gAWMx3DmJ6Odup7gxLi9Hyx9
	 w/ixlXvtO0in6pGR9q25L//NhUzKngT8S0DSbgjdU/siHMZselilqs/pWyIwk8/Dbg
	 bxjZmkbqMGHNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA33C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859103368.14388.11847712172907661984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4cec988ad692bba1405f360e8050c74005fcd86715464e05b3795e78a26e9c
Date: Sat, 05 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788591033
