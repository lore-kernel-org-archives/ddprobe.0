Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5A736B058
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773836094; cv=none; b=TH+Lkns8DuEfA6xiE9YvaVwM5IHdww6faus1GGi4SecqUHIIsM+SoH7L5807qLrbVC+e0Y2pC8kKxgK2u7SLZCrILJS5O79DVk5afXtgwi+5BUpEh6thFzxOWUleYMRMPobhG5UdTG1TYc9DECJlm3Pvb3Uu8vPe1HkamE4cWSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773836094; c=relaxed/simple;
	bh=3yJYFx7KKeVNGOJ04kt6RfInZtHdTjrQZNu5jBg90gk=;
	h=To:Subject:From:Message-Id:Date; b=QawOkDCTaew+v80O+nxOPSLdiC5ZpWkSLfN+CNZlof1VWlxlWhl1ycHhUdh5OFcazowVRJ4tBE9FiXiWrqUmnuj4Psopx12ANz8bygpDnNtJOgGmBPDXWPu1+IBS96sk9GANYl2XKVHSbEmvMI91pA+D5TsHjlaIgsoNOl3+IYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lbi8ns5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lbi8ns5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6CBC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773836093;
	bh=3yJYFx7KKeVNGOJ04kt6RfInZtHdTjrQZNu5jBg90gk=;
	h=To:Subject:From:Date:From;
	b=Lbi8ns5fvqsO6saeaNPoqJ5RtHjVTDa2fkvfd5UrfC1oSFIi/UXwsr0aRbHVJITTT
	 d9X3IXw3vSJg2NEZkWXue/jjTejfiy9WZL0eh70YAqLLg1ZvFlrF2+tjIj+vfs1/L6
	 pl2lkLC6rsvkkj8c1uZ4Xet9dhCQm40ABf8JUgo+IFd74OYu9ufqF9htXM2KshNe19
	 OvzvcEWOeh2J8m/Tt3PR+dyQ1outlQC86MSViDU8VHrgAUYB1SrPFtNT8F0vNrkhaN
	 dBZKvfQI4e69s8Xz1sJ/zUJxybG7/vT8wmgkSG8vnv+HNk+oYSCq2KjgjIHJAkwcA6
	 QCsMSph+pkvJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C134103E16A
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383609362.18112.12071683362248364004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26323aa156cba39bd12a905d63351619243bf2dc2eff9988ff0c45f9690714c3
Date: Wed, 18 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773836093
