Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EC740BE5
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725726354; cv=none; b=kV6q0f0bry7jLQU4MLtwrVOwlSlex0DkliibUqWGaLW/+5wUJkVHuO+d2judLVnj27NZ/q56irDUW8AdnTn19HeqoVNPCPc5gKht3l5N8ztTJlw3ujKAp2QTyWrX6TLlHkJUfIv21Z5ewFPystkcBwCwszJUz1G7fgdhMVNLDtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725726354; c=relaxed/simple;
	bh=e5xqCKJOUA/I3dAoAIICq7oZd08Kk9crh+lQb5YF32Y=;
	h=To:Subject:From:Message-Id:Date; b=O950XHZV5UclOGa5LTyTkw4PeEZoVw/u1+fwx57X5GGys8L/++wFJVaYU/iwb1qxhSVkaYadA4a8I3OxZ92X7ZA5/yZOKk3pFBkvAWbY9LrBEiAgSupU/BHcP2CuX9YEzFJgYGM0PB/h3Dm9+iad3bA8hwHC0K8hEocrJblNW6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyfSLFrj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyfSLFrj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4B9C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725726353;
	bh=e5xqCKJOUA/I3dAoAIICq7oZd08Kk9crh+lQb5YF32Y=;
	h=To:Subject:From:Date:From;
	b=tyfSLFrjQMxK0zblgSGqY9ZahsevY/Pnm5XZWVjdVR8NiO+7IpBpn7S5NuCS/CJOY
	 mQIN4fnewnsSN5wgGhl3eWW5qFoe0WFEZxRoiDplw8pr7tNp5yaTrLLdZN2b4EQC3h
	 lk2Xs0oOCHX/SqjP6bWpcuVEGzFKXpPtZZu2rPJcMLNGdujknJ9Nv1EO1vbUfE5bhR
	 eIYPxdRH5MvgAcT5hxPGQvOPO5GOZD6EYsDV3HAjmKyjt7lUkOFUqvSkJUFmdcWTOW
	 c64HM+zYoIvBrAMn5HuCZ1JE/0WeDLhFLQ7W8D9/pD35bUCtPAJSuA4JPu1d2taPsH
	 s76VdEAY8AhKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9887BEB64CA
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172572635358.1120.5042455124044150458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6f37b54c6d36d9029dde46a078373296ddae11263b2284fba8a8574c44a800
Date: Sat, 07 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725726353
