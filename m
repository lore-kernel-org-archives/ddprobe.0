Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DA85F841
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707689897; cv=none; b=MpDhv8AUmWZflpIJKMBc9mn6fhOmO7/54ztbzfZUwowEq1ot4NThfP4AuAnHxUesOC80sFApGK12m04xsKg2HkG7Ni/rLw6GAs2bNRwnFJzS79iCeol3lGqmSjm4Zrnp5P+mjxYhK34wO9c1WRJq97gZ6vC5qnFR2LselpikUkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707689897; c=relaxed/simple;
	bh=2JT2YwyzysLuDR46706KzfIu5bg/fTlrPiJaFw/Dryk=;
	h=To:Subject:From:Message-Id:Date; b=ByUHwOa6BrJc47rYT6SPm8wkre7+OysJLr3ex6FGim03/Y0n5JYuHIiVtAvWArV8YWlpEvUqA1ei34GRyKjoyZbpkvh3UizPBv9yzLRjjgT+gIl+cVitJjI8hj/maK46y0YGEN7B+7RXG1WrLLzk6t0brivTYez/F8EC6a65G/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgVeJluJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgVeJluJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81FA5C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707689896;
	bh=2JT2YwyzysLuDR46706KzfIu5bg/fTlrPiJaFw/Dryk=;
	h=To:Subject:From:Date:From;
	b=kgVeJluJ4yVeW9MA/l0DV1FKmxLPM03RDYP8GgiOphsh+LlIgS6+D8qCgFWHO1oVc
	 t2evB93vRCLRfaNc6eQx4o+rNkcrNJh/YnOnqTBclYeWVw7srMNlSqTOS+dNy5DBY1
	 3BqDS5YDIKnPTvybpZtVCb2ncHvmxazwUzsBx89eRt5qKgpgVA8rRIxTk0hVNvQGQ5
	 eutFJTbi/C6Anbqhs0Qd0Z17z3l7i5ewWTrL23lbGTHhGpQEnVZdJ7ZJbbSPBHpY+C
	 Lo8e2FgBowB/HUSIns3iP5Sb8zJTHNv2tfF4YDUps+QX+iO61sU121IXdEq6xr5GLn
	 908IpU99MFo9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 674B3C4829A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170768989639.25457.13257327695405641238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18311288a679eb605f4ffd9da1335eac075133cab7718bb720948bef45ba5a1b
Date: Sun, 11 Feb 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707689896
