Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0331F4CB3
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771526694; cv=none; b=aCm/qhY3g2XK8GZ8mgksQanlLBh0jB5FQmR5IUaPvsWK24pTQvXSpf3WQzMz+BYUVjD0mom26Y6ZYLwRW2GurajrO1FRsimqhl2c0EHTpDcprGipt4HAZnxtqXRaf7p4A4oARafUFiUF/+NZksqJZNrj9RfO15BOTwsDipsO3o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771526694; c=relaxed/simple;
	bh=BB2sA/hgrS/ytycnuD7KpXzso1ReM1xEmDH8Jei3OrA=;
	h=To:Subject:From:Message-Id:Date; b=lFRBJq+X3YA8XKXBRw9qZo23seUjnWJmsJCRPweds0JsW/zSFHgQC6EXyidGLZwPRherORxus5MS5w3bhDlFO1KOriARBIapWYWwACsVH37QALXCn5b40JlzAMcGGx3cLvRF0bXKjwpfjVg7hwRDaHYuH9/jzTvZXdWq7EsJjO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRJOJJnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRJOJJnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771526693;
	bh=BB2sA/hgrS/ytycnuD7KpXzso1ReM1xEmDH8Jei3OrA=;
	h=To:Subject:From:Date:From;
	b=sRJOJJnvpx3Y9dRbj3qERDBo/b40l2dI4UIFMhdDeC8XlnL99IPjJr2QMuzV6iLjX
	 x850K4Cv9EmQ1Zcit5NjzZAB5vz9Io4QSjM38h1biMdXe0eJH4rQSz6qn/FzB8s2u3
	 +7Q0Oz+zHeqO1n1S8DOB7BUSuEQ3UqJU+5p7Oc33rChj0hxbAogTcJZm+jINaIcw4n
	 L5ltkcBog7r+qpr7PwlGHQJRKPhAvhZNqy6KKngn42sguz7zvivCMwzU9QJWL/G0F0
	 C2wE1vhKo7JkSQxX1GrxnZU2CLUxsNrJDWzIq7le+osZ4zoMU6OL0m0ia9YQG5yOSW
	 fZVTDoaSOp5+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D2BE9A05A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152669358.28272.8118084845846043764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a22c1f2b53b806d68d9142b26718499ac5fdc3d590f5a23ccdfc64ccff8dabb
Date: Thu, 19 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771526693
