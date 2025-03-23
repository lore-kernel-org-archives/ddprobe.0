Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E65EACE
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742746194; cv=none; b=D+FeLUM18TVmQJdkt7N8K73wyZLjQkai58J64RnippBR/nRheIF8APkQZWn9Xc5KU8FsdMop9pNZIT+9ZYWPOspX1GPwLOi7fDjobrwhkzA/NCjLLnyC6+auuR+awyARdZmNFSH3gKiOwTnHtoEvRnBQxs04AZXUT7XdFd4Jti0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742746194; c=relaxed/simple;
	bh=JLG2REJsgmrGy/F3n1EAUCWekxWlb9ApyPqWwLyh7sI=;
	h=To:Subject:From:Message-Id:Date; b=GUXodIrIN8MdVGbckzTYi2O+99BDhepOOIT30LplOvF4Hc+MkonCzS2l8kvZeWiDTEZgXxj2rm4BvsZlTBu7xsKloZywW5epYvNSqYD2jjVVrLiUR6NQarnvUqAqhWflxwp3kvBSV0nAgRCqTmeBcXqkwth7OpKjr52UF/7zQzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWoS5QCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWoS5QCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50E1C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742746193;
	bh=JLG2REJsgmrGy/F3n1EAUCWekxWlb9ApyPqWwLyh7sI=;
	h=To:Subject:From:Date:From;
	b=gWoS5QCZbwKiRMwYGcLH7Mp9Xv1uxMVo7RVFt0alY9wdbKo008O3kTPTlVh494qqJ
	 Kp3PNiPkomAtb01UGHlz1W8KjyXi0OvqKZ7DeQlT2K8nwU/VS8WXqrg//ClQp3at8S
	 MlADzjUgF0d3Ii/8c0wITQ1hk0U+NGID4eXQjByjevxO/LpsdpbRcYmkM6sZM3xzfD
	 lJ0m0N4aQpxtFy1f3viwVhhyM8N/20sSVnEguGPuYyOOFxihkUrs1AHtQMHJFqad7Q
	 VWrUZZcXc2ONdUMt33SIFgm/12resZRQ5DbqCD3S//v3KqGONYw7m3vuAXh4AECruk
	 tY9HULvtz81mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB907C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274619363.8311.12801076395905143860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff15f8f84dc72ef314d4386d5282b17ef09967c2774d118b5bce83dd5718cdf9
Date: Sun, 23 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742746193
