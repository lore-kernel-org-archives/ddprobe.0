Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC781852
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 02:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716432803; cv=none; b=tePkuQpTaxC8KrJEMgCjspThY8UbPBP3B1wZekiYEzWzFINJ1FuF0TqvyhGLxE65os/h81p521uOqqUTBxDjOsr2YPSv2JZgnaRJHulCndy83jJqu4ObyvIWFKFWkzNSOQ7pBVZNaTddpXRKYjNzQ/3iNQFP4wdPl0g5CZRLI7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716432803; c=relaxed/simple;
	bh=d8qZd6QKXhVsCQXyso1AjI8mbKw3llQCpZZmacdPreg=;
	h=To:Subject:From:Message-Id:Date; b=KPUi1Erb6vIyMXereqd/8EwQYScuuvqaMhy6zy18sybjKfRG8HJCzGm0ex8B1PEqoamMUadkCHaFciQxCCv2SCmSDEFKg943jWgvvV4jpPNMaIz0Vv0P36tRgrH0yjN5nNIE2JIXJ7FKxHrcQbZlUWgn1xNqwSQQvCM0kiPG8rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgB7QwJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgB7QwJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF776C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 02:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716432802;
	bh=d8qZd6QKXhVsCQXyso1AjI8mbKw3llQCpZZmacdPreg=;
	h=To:Subject:From:Date:From;
	b=bgB7QwJBJOiWfSb0Khr+9pXOo6QYYW+IbV0fQUtC14FQBuaAbZASy8K5E5CK42Wvx
	 NQLy/ZXHrDtf2IyIECK0hOLfORdYZwptYAYqvMH6FkBz14mqDZhCmiJWJvirg44C7h
	 W433To8UsEi196UWLmeq2erf9eBX2XkQbusWAts5f16+jwJ94V0C5lcKfE6hlcFwyf
	 pXVaSB9ojyAVTYc753bGk7aCveuwav4YHGg0KAWhQsaN1A+exl4Sik6L74CpRmXQQy
	 cBLf2+0nlsy2yVJJl05ZhXq/zFfOcxXg0FBe0VqRFQgeUv3QoFHo2YDlbOzKCBC4IM
	 hDJWAAYUUXHfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59A5C25B78
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 02:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171643280280.10977.11104487159448003115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30844ac70dc2fbeadbec73e186450904832b963460b87c24589b8c7d7d2ee1ba
Date: Thu, 23 May 2024 02:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716432802
