Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7654925B0BE
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791734434; cv=none; b=Wsx/6+aFQb4W1rYcndpMKM3yPxbVTbypHUQcbvZUcl0PqMJp/lWEeBPGQKgnPl18FLjg0bumS9CoIiL/hYWH3xH1VKsmXhF8LEWIusZrANdJ4n1xKsy2O41qqdaELj6lO/aXnWC7OkuH1mv1wzziBt/xGu8SnYW9emuapk7ceCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791734434; c=relaxed/simple;
	bh=FTfIfUpIJ6TbYns41pl/PjLxpj0hdBuKLOR5AVpKXA0=;
	h=To:Subject:From:Message-Id:Date; b=mIII/kE+oil2L7Yo5uurkaL2RmeSf3vUVZzqHAdnrTDo+ZFxa6KL4V/Yq7afCMdYCQOUSOAk7k1JkgCMkhhryuMjBdaNd4OvDWeEy7Wxr+aqpWGYx4QcKD5vI5hvMUTO/ZUlsmOv+h3a6OMBjsxRGxTee+26NHxsl0Qj06zqjmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBu2YtUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBu2YtUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03B4C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791734433;
	bh=FTfIfUpIJ6TbYns41pl/PjLxpj0hdBuKLOR5AVpKXA0=;
	h=To:Subject:From:Date:From;
	b=EBu2YtUR2E1x1uMeyteL62mQZENQEmAQ8z4eVFeZPOYrqzZbs5pIaKDiyJayJOqSe
	 +KeT8eahBY/nxypDulUshEI5jwnhNcLlAw5rEk6Gdh+aX/HzDHXrjr1WRnvqLdZlXe
	 cLxFxQ6gOQ5BiCbG70BKk8q7i/0PQ5DQS670EclS2IAOmd3TX8ryLOIhAFDwIuR0nR
	 w+peBDgOoPr3X7te0+4nf3LVorCzI6E5ENhkYRoPS5o0XjF94yUbEMGfB0j6njEwtd
	 WPlOHG9VpKnr3OmSM3rNccUTGVJ6ANE03M9VJZKsyxpOjB5xLsZ2ISo05MhtK6fFZV
	 eLBKWa+nh6H5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C8CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173443369.17237.1913290524170992555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3b1554f1cb16ef8df7980bfaa9c03445d0286420fc524add1f7fbf1aa5e762
Date: Sun, 11 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791734433
