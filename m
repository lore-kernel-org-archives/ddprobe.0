Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DCC380FE3
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778923233; cv=none; b=MVtFV2BfgeEM+4ITKop88f9wV1IGYPbvGpW3uNhDQKA9Uc3dVG50rEMv3ceeAr1DZ6BO0DYcAp7Z1ijxuzmI+WB61GTkf8ARVjeJ13ro8rhX8XZ06e579Shbwp2YmH3vyR5O97mQc3ZdQGH9mKH7NrsiAD1gRYBi8z00O92SLuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778923233; c=relaxed/simple;
	bh=DJskFkn58zoAIii1HeqFFkn1BcgKzZZMA3NPDdy70i4=;
	h=To:Subject:From:Message-Id:Date; b=nsjJG+2kl0aYhdL0qoCFAtEZyY9zXt8SliTwkuhsb7zYfbM9g0IKOKoN3yN8tMf4VsQT3rM/QcuVUjhvH4KFkYZ2ZYaqICGlIIE8gkBHL3MAyog3bqkIWGK1Rr50HPYCSIJIb7pfrPMM9Q3ZEwk+06OPT0FpQuTox91cjsJHesM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pb4CutnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pb4CutnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDD1C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778923233;
	bh=DJskFkn58zoAIii1HeqFFkn1BcgKzZZMA3NPDdy70i4=;
	h=To:Subject:From:Date:From;
	b=pb4CutnAGpcZe9rQiaZbJufUa+eALhzXExVTzx9nariddSUj4laAWgaagD2oDmdV9
	 4JjYWqvnOhGFufo8oeWKZCHTdNycwo1Ql+At0rSds9iNhEAYZRZ3kRpViCd7t8h9oC
	 MXQuoPF/W/aOnMBtayZfIRLi055bSm59zQNUEfK1bDTuu2a2yHXhq2jHa9E7topcDA
	 pLZnKMEDZt/vgUzlBC4/QCi4CPYdd7hEgiUjiRiteWU8e0vNhpkwUfz0y8IgeqmhAl
	 JT+Y+bv+1A5e5v4lJpGGWGwoffO4BmE3/6t5q21eSO1Rfw6POc6fCy4QV4bZjXZWfF
	 XPW1rDDhgkkXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC27ECD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892323369.1802.13075874275646773427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79d9c869b2221abeca437408666345cb3a160d24e944aa350e39a5aa0b21499
Date: Sat, 16 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778923233
