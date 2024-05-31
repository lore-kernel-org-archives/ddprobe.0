Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1693D7D40D
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717186463; cv=none; b=Y45Lc/Iey5IhIqh65olAJoi8c/tVQx2D7IixtrGiPDjNO86CTuUJxuar/IUGN/+lgznRACQYB1TSIkmyAhvtlNSqFJcWjgZQLBZsJZ0o1KyMeclKK+RAYCa77I7MS5PuRrhLokSCrUGb4Ly5/y5+xm0VZB3OmlutYmYlydVvkGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717186463; c=relaxed/simple;
	bh=ER8fGMGDr3CcKjPUpT3nRg9LtgFk+7uL1cyf6cX8wjM=;
	h=To:Subject:From:Message-Id:Date; b=Uyo7ROZHzMkdrP2uF+wffxBFEtUj4toyY2B9SwiiYbt67lruXpybBfGgzqiNCyEmtOgnS1tWmY482RmKiXBPGDQP+DDyOqCawCTmljz1w/+CryHJQOYKMW386ap+N94yErLsCnoD5RnmCteF9FV+YtFlqw4LOrLNxXBcPU4uhak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc8jWpPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc8jWpPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD59C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717186462;
	bh=ER8fGMGDr3CcKjPUpT3nRg9LtgFk+7uL1cyf6cX8wjM=;
	h=To:Subject:From:Date:From;
	b=Sc8jWpPr7ugrxHSTUuTV8poDMQn1D/4IQASnclnIeVkvZO/ilNHcYPWFXa6g/YFeC
	 m8gPXBJDiWPHoxCOmS1VTLjvlybHIpCXQdcoDVo9mC9R9/HnWR3DmUj+gVHpDWbXaV
	 qjdB77AkKKrmKx6FsUASHXNoZcQPIDX1+0aOVmpQwBqNv5u+saK+EUFmijdhrwKe/a
	 K+Di3Om/mEx0F8xD+Hwp65BcbrxSkYDyEsFsNeVXEU3Z9K/Cm7NUG0QAwPUkLctwac
	 0MUWThhdZuEIbFIhHVeRcT9ORIdPY6ueLvWCCXgVpFs0DZkcWLBiuMjGQp+TTpidCO
	 G/BnsgW9yCq4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC453C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718646279.28821.11789003933443281163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b7ee1740c8cf7e0a93e5393dd2361164552976af85e9f228c24f19f10f1114
Date: Fri, 31 May 2024 20:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717186462
