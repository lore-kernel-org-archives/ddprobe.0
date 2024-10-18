Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4232433987
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729213554; cv=none; b=U2nTPTLGCl/xVabtJYeCwQIG+3V0wQKas8o84Z+s3XcY9dp/EIk5UxQ/mDvkhYK56qv8CmbBkmvPSjgC/tkQ8b1yIc6h4vLjLpRj3Lv4AIJILK30TG4IyO3rFwkWIb+AuSvj430zY9SIq/U/90bIh8TsfLvngejdVTOT0RKZR6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729213554; c=relaxed/simple;
	bh=hY3ClHYzuEozNahaxh+nT2J3yUCzFk6Gbvg+Qd8DCzs=;
	h=To:Subject:From:Message-Id:Date; b=SmohzDKrTWn49S9T8kpnCqsYq60l+GleM8vCrq/V/K+10I3q8a8SCB0MTxUAh0Gt1WyFuNNAT+WtCJQ/r2KuIWDQuUQPkYqoI5l8wzaUrbvAXn7agRJooUhOA1+7WOvqyg0NrsPLyDl+b5Fc41wRzP6HOAoju2OmfZOLRfVBIWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijir3xpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijir3xpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C3CC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729213553;
	bh=hY3ClHYzuEozNahaxh+nT2J3yUCzFk6Gbvg+Qd8DCzs=;
	h=To:Subject:From:Date:From;
	b=ijir3xpvTHdIftIDGVTRft9tJRhtV/qLB55KpvgBeUxxulj70y3RdW2hYXfQ43AZD
	 7flwL5/cthzl/0iKXRH60JXLV7xIPJtHuf7WEJjyK3tsdwksSpCn/VdIK+rxMk0d4H
	 BpIHJy6Zt6EAY910tzTxtcr5yf8drnTIJgLH3qPkCCJN0n7YsFxHzIMVf9t8Yeacs4
	 f5yEp1PHMG01sg3e3kYBS8iotbVd72W7ueHoSzDR7TvUnZWikYa1TPeaYiXOobsijR
	 9KCOKltzkqcUjrrG7DdSrLh45yyxPQQqJ+HO3lTNjyfJMjc/FhHzT9sFXSAysy4cKI
	 gcdk1PdPtTUZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9562AD3C53E
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172921355359.29153.2494724026017130670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb87f9ec5cc8878917d0326f2e9e563b00462dae77841b7ca66436de4459d527
Date: Fri, 18 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729213553
