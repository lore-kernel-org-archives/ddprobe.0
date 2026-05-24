Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DD8212566
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779652354; cv=none; b=bbIceOWpMDmSVAB0vD1Bi/CztyJk2Do7K4M9sbDT+2COTrjftzIAY2ScHCCs9Z19lVLswrkU6ypiE0R/i/0B+jAlM37Guhvw+o0q1aJ9ddlJyAgfI0mXQ0KbBofOeYGroXhr/wq7pGzpUupvBUQrL82g74jZm9Vm4AIXOUph51w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779652354; c=relaxed/simple;
	bh=otek5a3Fu+grQdO7Okff5SOMsbNMD21AZ545fC9n/+Y=;
	h=To:Subject:From:Message-Id:Date; b=Tm0dTZCORPX+wJ7SIA1sVh+u2qSzxh2/rBZNHuiWf3fC13MeQyryX/TEiu+kut2XjPlx5X4VoRyewwFnIn8PeSeWvPz6GLA0jyHeR6uklTV5b0qsyi7EYbFyJDBuE6XVZJ4PxYjp+8Zqz36KP7tIjYDPfWrc8ci+NsvvGx3imOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+b3j3cJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+b3j3cJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52E5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779652353;
	bh=otek5a3Fu+grQdO7Okff5SOMsbNMD21AZ545fC9n/+Y=;
	h=To:Subject:From:Date:From;
	b=e+b3j3cJ9ED6PSvH+0JGsHkSQbrlBaMCTO944CLJew8XBYreKNrguJlkxRyWSv83b
	 OjpRTeC5ktBfbIXk4MVaVjb0WIQtylk+xsnR2jqfWH8qcJh8ASeUqSWgmIdSLgyOXr
	 ehKl5txYmaHTjsIppGO0Ufx5aSJN8LeSZCZQLArnQQ/otBLBJ3j3HiwVe69QerSrSP
	 nSVHuPE/cqQvnW4gPsDM1vR46I3n/3EfOZhpSj9ndePwWl2wQlJAijgbt6DKN36oiv
	 ebSzkpnCkeQA+n3q5uSSq66d9IKcKVVeEutrvPs6yKlap3YZ+dqyECgHYV9AZGiyp5
	 FnfkIWlQwPDuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDCDCD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965235368.23719.16193993073957883591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa24313429075dd10870812f9364586e70d118a43f8e2d8768fcfd5fb9bfb1f
Date: Sun, 24 May 2026 19:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779652353
