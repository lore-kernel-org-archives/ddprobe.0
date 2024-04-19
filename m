Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EAEA23
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 19:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713555623; cv=none; b=K6s6Go0BZS8VIRCH1bTnKYY83ExqW3A2Oc7qvcxb+X8WVp6k1QqYCg8lem13aoGei444XJNYowJxdoPn6DLtwxQLFadqWy75k6eUe0a0a/ABM8NNQimLrf2/Sa3Gh/IjnYI8AZn2mFyxpQOevYmbs/kgZ3VoewdEM2isZWQnQAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713555623; c=relaxed/simple;
	bh=LZilQDGkJ1GJR3RHJSkaCb1tWUIQZlHCAvGnpog2U1g=;
	h=To:Subject:From:Message-Id:Date; b=gKpXZ+f5MlY/nNWH27awJPbDXElc+wxcZbXyx8xuyvagIQZj3Dd5OXOEY+y0K2lMj3m1WpF0RWjaRKmerlfERtVOSqcXSygpaGOQqgbz2JJydW8xlQJS+5xQNRiGj63K42SMiuD7mSC+7n5c/wDPLGi5jjqrwUJXSOk012xtzzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWfilg7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWfilg7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1926C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 19:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713555622;
	bh=LZilQDGkJ1GJR3RHJSkaCb1tWUIQZlHCAvGnpog2U1g=;
	h=To:Subject:From:Date:From;
	b=BWfilg7ogs2uJIcdqluZTHRZ5RGPw6J54VBU18PZa0+g/mGhSJgci6kwaOGTRscG/
	 Xa96ENYnbSMm33q2VV2ujAmBjCkaxct1t/BkdcZjM5tCKQ4yk8XyvBlFsZ7F+l4ATe
	 ry3H37SA1UE7pUe5CtajmiUW2Ai+Eqgdk+Q6RbKrGvWyryMcdD7+wlS3xd824RcWTg
	 noIoH9c6lSmmAERf8EiboBBC/zJr/W4PEzoaNqudbZXcuipM4EZ+bzuB9jXt9oXa95
	 Ty9wg9wsboPXOHk/GbJZQTjcKkGL9dVZdj+xysTT0ux5b9Z4izALo2lMhupdl1a1fj
	 XXL8fWSPAMxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF312C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 19:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171355562277.18836.16243830138268730641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfae5b2be923ac35840a4fe3a18720469106d8f28e5a759dab14cf20860a929f
Date: Fri, 19 Apr 2024 19:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713555622
