Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4015B402B9E
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785363034; cv=none; b=hJWm4cjHWB9oQo6hzQtLXP0eRMXiZsSUlmS4Sn0++DZ/TuJ57B1h20ZjM72NkvpjBbHwRYuR8iyKZskLMsykG3GSXtqPRpQpO2cFWOmTamKmHqsWf5W7pcyBH+h9tYRF33iLprBNzqYz1hRBdK5xeMEA8eERbOKP68jCwSOUosA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785363034; c=relaxed/simple;
	bh=qnwaLy/TDToXXRbkdYX8ml0gGddGZbYZh7viAB2K8QY=;
	h=To:Subject:From:Message-Id:Date; b=Y5L+SyNFkDWyuUptjP4WyIOlHqMfHH/Ps2TLX97pFq8TBA4fSpERTbhP475Fk+TxJvbPSlcb3ROvkDWoh+KWz68Qh9mT/olZUqSSyevPdGTfsZLO2vZBra/+8hJ1L9R46TpSgOMOa32QxEKqaEYR4UUXfzJjKuRMrYpPYfA1o4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKTV4QS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKTV4QS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC63C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785363033;
	bh=qnwaLy/TDToXXRbkdYX8ml0gGddGZbYZh7viAB2K8QY=;
	h=To:Subject:From:Date:From;
	b=oKTV4QS59jofztBok7Sf6gXo6gtMMCNumDChkGyzpBVDfNvW0eXGSFGzM4hu56gLA
	 QoixylAtYyd1QW2HiOieFbc14ULN0S/rEDf5srxdcTlm8OvK7gLHsib4N5LEGLA1+a
	 k3ItVcnRd1U6fA2n0DBPACMbJAbiy0qDOFVGm2LCiM75hmnGqFy0SMziGN7wkRlm+k
	 Y596sjUCnhmLcKkh0xhpYYTATVubCeL9S1lJrr3Dy+LVah0mK2frptwX2akJWmv0a0
	 lbxKSs3noEvlr+ZTnZMKbO9CmvlsixvZoMUXnZLxzE2tqUsYznfL+K8o1QT+CMEG70
	 5mDL9sPLiWu4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81B1C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536303368.13729.11471754598493113008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975a5528aed04b4f68281c3c676dae44b679cb23a19b2d52e8f307c56e360835
Date: Wed, 29 Jul 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785363033
