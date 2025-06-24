Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2375F139E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750767594; cv=none; b=ajlFafiygnJL16CvgBOO128EzJ+JMpQuD0WojZk4b4b1MRpCtl5vV0CluRDomkGhElOGE9R3ogsldByRJdt1VWARrl0tLTJt3pAMx3d78Ysz6c2tgLP8EBmBQJTylgqckOQ3POaHSP3S3lrpWSyJ1YtW4t+swW60YBMU+G5LvFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750767594; c=relaxed/simple;
	bh=nC0J56Y0N86ru9RsY7w2nZc5sPjntCB3rDWO9vKZG6I=;
	h=To:Subject:From:Message-Id:Date; b=QxVe7RzhSSN9iScdD1gJdPj5b2wLIwmyYTTDGeynmyZSBfInmRHMR4fwursElVhsiReqeZQNMNZSpDQJk//3nyAUDM4FBq5WE1N+4q/6eObbxXuYGOPq/Ay2OhaA8Pwxdze7LCZQbVlXAJypn2zGAFsqcnt52Ub+gyPq45E+yjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2m14wpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2m14wpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0966C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750767593;
	bh=nC0J56Y0N86ru9RsY7w2nZc5sPjntCB3rDWO9vKZG6I=;
	h=To:Subject:From:Date:From;
	b=L2m14wpOwmcVWaWYqUca9iaZVOyxAlaKpN+0K12Md70lWvUnKv08x8BdNXpd+ORHI
	 QGkxPaooWJ23Eno6rRSnLu4oV+hj6/hj4Z2FO2uz7OJs8g8ODK1xpNgUc7AbLubJ5W
	 ZDNhazxltsKwJVy4cAN6ktwKH9larE6WWR2Ili4oI9CMPpTw9zhHsVSEwHy2n4gWDi
	 JGpRZhNiMLFg7RoMiQlDluY5tHHRCVd6K+YEkukG5qe15L6TUDEqpVZFp7L1dflt35
	 IF9cD7Ij5ctipkwDx54bDkXPjdlHIMLkjWSX6eylixhmI8+bWF/1Y4+ngtow/KFEh1
	 f0QvHgbsEU9dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED11C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076759357.17792.10884507580947151710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610380f0e93b7fa79fbc88c49e6d9bd18203d1a012caa8223d55d8972b681ff1
Date: Tue, 24 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750767593
