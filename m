Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019BE278161
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775804854; cv=none; b=FTzNogzlbMNtHKROMn3H4dZdRWjeH7yUz32HvUTDoxbnnELds4U8DNrOD+8xA/+7WhZnKt8KapE+9su1u7Nd0VExElp3KgLpFRnLpY7c3fR7o0GNplQn0QR0Z4fjdp+W0mZK9LmDnnK6xWQLS6DEruIBs8NunqUc4awLg4bl6Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775804854; c=relaxed/simple;
	bh=QP29qvd4Pn2CpjI3toED/ZLf7uGgjm5h3AZDB9GF2Y0=;
	h=To:Subject:From:Message-Id:Date; b=IafDjhFbS56pnN2AatH+WcIeUH7wNBeeghvNpycikJaYCaIxjAuHEJaI3OOBRol+BoD4qq50tGoQKpLRmZ2aqwTKJKnt+Q6Lt2BDWnECrQqffXFO92SbUvgFE85Ouqul5v+4ehUpMmSiTAFYHZNiGhWKk2/owesbx4RcF0ZqKK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZ39E5nT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZ39E5nT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88F0C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775804853;
	bh=QP29qvd4Pn2CpjI3toED/ZLf7uGgjm5h3AZDB9GF2Y0=;
	h=To:Subject:From:Date:From;
	b=BZ39E5nTFkqsUNz0G+AEo4FrLhvNUizYeYVNRI09+0CgRGrRo7j7ViS734UcMEiRZ
	 Sb/iSo6CUyehIawWLcFapaDcZoYPKz9s+VWVPLDq25NBnxQ3hF+m47OsjzXyo+KMzH
	 TdbuPwFMHlc8o0Som7SI5UgewMoQeFlwoNhnnbjeaDJDaRVn+cvyDKFwFL/pb/7Xac
	 zV9eavkcwHidZls7Z1doQ1vs3sYhH4wwH3Ru8FoFhHCJdt86Y6CLsFokr61jZgKacf
	 3SGK5Gp/Yue7t3XZwTCx12niGrwqTkfkuwTTotKLXS9HXM3OLFi7LUPEXm5S0IGYi+
	 uiqka76a/vDrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62F2E99049
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580485373.1070.4520297975043218747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab17431a8fe5968d57750fba5554aa922cf96a64e8bbdd3167dbaf794083561
Date: Fri, 10 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775804853
