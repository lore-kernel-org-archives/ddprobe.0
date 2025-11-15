Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1562A1BB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763173194; cv=none; b=SbnkuDBARpx13migYOKaVCR/4Q5F5uUF8JMhsefwsBbzZC5ilJ3ZFxR3HRwpZf3xg5nB3T12iF0n1Nv2/kACOG7fvCNJC3YMFK5lcvV6qvT9uj5d3xvXAWiOcAhUNcsvNkJ0wAfeMUhikdzZume8kivz2A0A5QYX+A67d43FROw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763173194; c=relaxed/simple;
	bh=vdgxkPdqcwoKRpc/SQcAVQ/r2fIjLFPvPPKorlgBWuo=;
	h=To:Subject:From:Message-Id:Date; b=VrBn4zjgHM4xHnY0s0P0j1JPXEmp4qX04kwlTZd3vdQ/xW+qEtcuZPM8rAmhaPAKU62nL40U2wYhGdz29dVF08gXTL+NsNl+A8nsDD2llazCG2VOyFRLMkyncY55nAux2wGACQ03oITQxha3sky+IH92QSB4jOlC9l04tBp7fpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQbKZeZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQbKZeZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB64CC4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763173193;
	bh=vdgxkPdqcwoKRpc/SQcAVQ/r2fIjLFPvPPKorlgBWuo=;
	h=To:Subject:From:Date:From;
	b=fQbKZeZoiR0+YpVwwWSRx6La0YoJrZRnxX3aUdagklfpvYq8kY02u0ZQJfPfQjUqv
	 YAjeBdz2Epaclrykf5ZvzAKX9pTHFfYw1UOfEHRYuv7Dw7YuK30tCgNCQRTbEwIDDX
	 Xb+omA+SMMExLRnaic6cK3i+hqHgrEmlH5xGkpfcktr1oZKIdUo01ss9bOsUiM0OYG
	 pFZ9Oya0ROgtLi6McKhQl34ahjvjbi3b+TdrEIZLCVj/Pc5juJ6KCHEKx22nGYwgsq
	 ZoFQASl5OSDWQKgpZMiTnRPiL1u/WyB6e8uJ4KWBN6lb91weZE7ftq1UgvapH0uCdO
	 LWilpgpD84wjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A29CE8D7A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317319362.8651.9741275236363532651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cac71fac556d9e7472b250722f15378614e489a39c2296e0995eefee8cb7886
Date: Sat, 15 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763173193
