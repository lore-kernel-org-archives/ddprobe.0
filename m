Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B58232E74E
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771061094; cv=none; b=owyLInee2qjNsL3y7Wk8OXzZR7KEbYD39mPQ+20E81IJ+KKWcGeUvPh5PDmcy087xiia5qFVDZ7BQsDyhhDpKtefdLCHwTeSRrshYI8U8ey3Q1Ln99O2a9/h3X4QsFGAivnXbbJsEDm0XRYxktH325Lm78pqp6+7Lsib+0ZKfFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771061094; c=relaxed/simple;
	bh=SzKJon539XkoUzxlAbLAzawvZgARBGboDhV57weqoeg=;
	h=To:Subject:From:Message-Id:Date; b=ipPEMDqnp6XR0sAUjanFP63DyR5CXhDPg8qy/V7uvNlSwCg06VfM0c+5usARc7TCLTbid6VyFgwaSp7IQcbrPt5hxKkiWF2Pjw+Au5eSSbOkFI921UZ2aJpz91pJ11mYMp8B2mPTvQwPyj2LZ2tqzR/LJHOR3KMU7s9NADvbFjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIbnKRKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIbnKRKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1172C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771061093;
	bh=SzKJon539XkoUzxlAbLAzawvZgARBGboDhV57weqoeg=;
	h=To:Subject:From:Date:From;
	b=rIbnKRKzr1/SphLnNsXwTi2JoyQkfq21+R2acQ2L4g9wsDMunu3fExUEzoRUZqZx2
	 279ep0jd9PoefF1DAiS3jjGmbzGbIuubb99lu7HWIjpw5AF9MkX8gL58qBsunP7X7l
	 3NYRcHHOi0aNBIfk98Bvlog0nRXWwmYgYro7K4yf23O+JMaapG6UkLZbiWDpRkvZTb
	 +CXMTiz1xSKBeG7Ozya24IqBoPQSQwB1YFuk1FGh4gAGUszkQ3fKG9flfoCt6fn+eP
	 RYciL23LJCOoCZzT9cH6V/svonLJJFN9hRQZkgLzhVYmQSuFyouA50ubo0wOEbF7Tu
	 LYuJYzcdUIWjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99690EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106109361.26467.6767709100474378325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b323e740e2d58e8d8c0a65c01709db7ebe43b535e6511a82197f0686e43ed799
Date: Sat, 14 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771061093
