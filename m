Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400241372
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741824534; cv=none; b=Zexh8gGn11Oc8Iwwy5dXHsT8zb39O9FaLZ9nEYHoJ0YwTKPh4Lu7oKnJJQSyKzVgRlBCjC8dHeYciZb8xEGaUsVRIP9qk+zu9MCoy5IyPj+4Pi/JILLeLC+FWuijZ03pBfLq6H8Dw3VAgvhGi+EPvJGKFBV/N+reO9zfCqCoa8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741824534; c=relaxed/simple;
	bh=Z6h/oS2HO2pYVBKLrWiYRE7DutLNQYuNW4t985G9YmM=;
	h=To:Subject:From:Message-Id:Date; b=YbOJC482E3n0osxx+0yZ+VoqUazC3p6QqEAZaUTBteycJLZuYPs8Xt/7KAEeTDbJfleomLFmIhy7dI7NLvDOhe2S2dK+iQ4+rlkBYhENHnnWAtTpPyrfijRQzx62dqcnACYVRUT8U5qlduFgicwcs02Zz7wEqDesRqqOw4NaccQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfRq082o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfRq082o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF15FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741824533;
	bh=Z6h/oS2HO2pYVBKLrWiYRE7DutLNQYuNW4t985G9YmM=;
	h=To:Subject:From:Date:From;
	b=YfRq082obwSLTGefai3SuQ7J7diqk98pLywsVmxewoA9ado3rvo6uosasW4UHjofP
	 ZhudBcGTV962PWpj/tw6nKfYBkrQb6QYrexzyezpniAxF2brXRY3/OZ4zFwRMrTEz/
	 95hxnQnrVbF2QGxzBU6xgcxPZq53c19+5iWLiweEtY4e5vt2COWpNPJEsqkLHYNTzo
	 Jq0cUyemzsl4aNAQAfxjNkunbR5jIqYxpk12crfmsETxaBY0hSbnQb2PPxczad8/W8
	 NqsIyYYwBbpbYZ4Gp5WMIP15fBqpwSiTks/EYDgE2T7KgZygAraG1zx5JHz5JyXGVs
	 e3o2eGoAnlgCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA8DC28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182453361.9265.14155646845979806596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760f2cc59602220fcb07f53e933d5597df774d32b91c2e1ad398394a3cb70ec0
Date: Thu, 13 Mar 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741824533
