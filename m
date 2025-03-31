Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501F11876
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743395394; cv=none; b=rARqVB0IP09DDSh989pxvw+OD252dR9RK3RfmUYPzwDlVfBvpHx5Z0En9o4Nw6clHXBq0MUPMzvV0FT4+6pQCLxiEdmmGYF7+VzLkXsLe8etCH9sqsl7qcxI/MGsuS0ndbw+V376fa2gaiAQ+fu0dqs8fjsCyprCMKJGP+o9aP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743395394; c=relaxed/simple;
	bh=u+HTVFJijacge5k/truzzltVrKj1ZpCLvo/BCsKhh0U=;
	h=To:Subject:From:Message-Id:Date; b=QwgOabKUr867wmvZE1mqbJIq+xfdzG7/MaUkaEx5YtQcohsRA08LaYPF+SLzwW6WeVI9DXcyOViNo1tmRQ0C7bkDEl4O+5jtoYNQN263pneak9ruqzsYkXd3AF6Sj8DtGvy/by/ArDXb1msytiA9dA16jNoCi4D+VDdhXihw9Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EazXHKED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EazXHKED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB486C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743395393;
	bh=u+HTVFJijacge5k/truzzltVrKj1ZpCLvo/BCsKhh0U=;
	h=To:Subject:From:Date:From;
	b=EazXHKEDHfjNqLIJUW3FwJ+tDa4Rqd+cXHFUBBAUnPnN8IT3Bwhz3f2IJHwjLRlG8
	 TBYhYLK5HuX0TlpOz9+3QhU/fUce4HwrwY9V7pxkGKubMQvuikh1zWBZr0gaCHsufX
	 QzvkyHaHAKNbUxIePpoF2WHdOH+fHuHVc2mdmFKt52mzWnC9a8Ff3HI/wqmbF+UnXD
	 F+gGZ9v8yDoPgOHKvg2ycp4NTwavt22UBDt4ELqcwFOHaiiTgB+dy28VwaLRd5q62K
	 AtLPRd8x337j6Vtnl+WZEWyurZ93/iG1So2wjINXBwOTCf89H40jzQIWjjw0wIIAE3
	 Uik2LlxRjpThw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C75CC36013
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174339539359.24519.13981891168051143378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b02d0dc2295f1159ebf8d7aefb51d39f63908f000fde120c7e5089a455b64e
Date: Mon, 31 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743395393
