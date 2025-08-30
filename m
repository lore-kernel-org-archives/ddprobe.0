Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027D42DA765
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756579794; cv=none; b=gkFd/+h8TfwPwavoEERyKze/s0M73a3rjKH5JzZNCBZq2yWa0lvGuq+ITzsfAEnEBnEvx+CgaI2D9S/aYrFR8T4i/RyfIyly+jhm8OarXLFBHdafgyRyH30hT5QH8Arh/cC8ZLGBQa/SQfmn+ROWn/EkpW9PDBLyMqOvrZpZ35Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756579794; c=relaxed/simple;
	bh=vaGAthZvNoNRqT6ElulFPVi4wt2ORDeiHqwWd64Xbfk=;
	h=To:Subject:From:Message-Id:Date; b=bOHW3Tj+f9xWt5HHALUNN9lxJFiR9SFfG1C5cAdmcJUmMwKGeLHbT3eSmNWkkw5DB2c1wgzhwJ2L4tEaghzWM0ZHqNXsM3/xDzpDWHjrUs0TBj4mVL1m6n4+rmMmw4SbVVcvdCZ/CwudEEQI9rG0wM895h/VfVcyR8IhTg7TTOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stBqmt9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stBqmt9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756579793;
	bh=vaGAthZvNoNRqT6ElulFPVi4wt2ORDeiHqwWd64Xbfk=;
	h=To:Subject:From:Date:From;
	b=stBqmt9OyXbtB/mXqfpVJZ/h1u++pKbAc3okxmgrFozfGQoLb+vRq+16X/eHF/cMG
	 UNqltHTemGB/VYQ8C5u1tTy/7uVclBTv/yQYnJ3+fkQVfD/aUtNgFkSogLbehBS6rX
	 YhXfKEOjg1swODbXnUZOkLGNriW4Iw2AKA7GoNLkx3y2y3th1i8FCDyQgTuHDaABvr
	 PZ5dSYOuXq/e5bChqjJsMqZ5TJQQ+8WhstvCKV8rbnzafsVUBjnrZOfpAq/6W0WUoY
	 Qfq40GutwAxhJjJCqFlibgmnJkP/DWKdTNmrnm0LbqyscgIMmn1HBqF9AD/wWwXhUw
	 ufeO3HAExMV9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA29CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657979357.20149.12410818453013988580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1775cdbc7efc1d56ea98500f77eb37b8f17c9bc378af6acad34452b7c5cac07
Date: Sat, 30 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756579793
