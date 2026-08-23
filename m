Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4476A493632
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787491834; cv=none; b=qcGSbuxjx21Pl9et9gFNHwm5uAcP9JrhiFS1thWy9qAuXd5mKzAl6iTP+suCIjr1IYkf6jI+YkJmHamynT7WeN+V9NW0hUMA6RoRfH0LKKzgF9eBTgkMMeohrH5wTEby/E4v7dEov6gXhpjG9f07F60wXU6NNRK02rrbZTe9/UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787491834; c=relaxed/simple;
	bh=XvLJy0RxvdnW6m+S+NIw/wNxXIUiM7OMISuAkepE0sk=;
	h=To:Subject:From:Message-Id:Date; b=ZInmiCOuDgFsNOS+cBtXijjAioUQ04kvAL/sUQbJAIQr+Jr20jr4WtRhEei5acRLDN1wvPwNOX1Hd6GH9woKBUuHg2AxeUPhhTYeJ8VNnRbl47aaFP0gQUKD49lv1WUa5LjL4JAhhpaGijI6j8i3RhnCUixrDn9LtmF3fySCtPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFkzwNXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFkzwNXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB60C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787491833;
	bh=XvLJy0RxvdnW6m+S+NIw/wNxXIUiM7OMISuAkepE0sk=;
	h=To:Subject:From:Date:From;
	b=iFkzwNXQhtxXURqqERPOPWCSk9vd5D4wX5J5ZSZA0d7Q1gDzzgYRtkf5+576q5/gB
	 jzop47xXg9bRDJjlQ5oucS2/ts6SKX+W8Jqsk1Y/2bgjMUfaHXt2nr9+POIwFeyM/P
	 cvi4JCii1Fn/+lpeTmr2KIWIVpp5zCaMZwNVl82EWLWsorvCohpfwsK0VuosiGtfK1
	 1ShIRVdi25aEbLQcuIbKvXx4PlROcmpaIDvC9zKbbl29c+0nQagyW+P4EhrKWwPFmd
	 cDol98Fp/LdEIBrhJOAGEZEjQ9xLXtYyRLLX9R6lBjsa7Uw1fmTzYP3SU49G7w+/kH
	 lv7+noPhnTpBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B1BC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749183368.13369.3847993241130691195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081617f7bffc3b26fa3864dab941267720c60738086e90f319a86d5eb4c9d165
Date: Sun, 23 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787491833
