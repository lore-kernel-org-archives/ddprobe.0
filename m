Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F67C14A84
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705487297; cv=none; b=LGwgXjAhHQlsq+c6dbnYVOaogG2oPmBPXXloDIfVRrDgZDTupSxEQb26dvv8fpunsh3H0McxePd26E0I0DBO0nqN9+TLHbp6zz1hjMhRvzklMpxm0dQM1TM77CwfppHqiIqGRRuIJC6CnE0rm3zLDyouoHEWI2ZPr97M9cKBOi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705487297; c=relaxed/simple;
	bh=Pq8XqXZHiW967+ssMToMFTxoRcZWmLJhy1Ino3nYHJY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=qLo6CiNSCqZ7cdaCNF2H/0oKQCKq8ASo1nyp0GYe0t8QGDwregIaYRV6GZ9AO3b7fH2oQVGAOMbKDovXP2GIKoioWJwzhUTsmBBrmnodRVwxy00zs7X77JDy32poXlFl7EkPfznqXefLXMNC70YvLSneKC9cm+4Pa0z45XBT1Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTDl6qMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTDl6qMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C3BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705487296;
	bh=Pq8XqXZHiW967+ssMToMFTxoRcZWmLJhy1Ino3nYHJY=;
	h=To:Subject:From:Date:From;
	b=dTDl6qMPObFl1CfuJ4YcQdjlWIf8fZ1+878l7BSjM9nQKaLM7/PK1uwPdAAx9DFXe
	 OJVC9N1msez2/3taF0EPfuBO5ExoFhGxPODmhDl+So0/Cl8lwy8Acvd0XDHVNMoaSQ
	 ftIiTTbtHCdWoEEqaez1/+XscnvOpqLRYvG+QhtICS9l3B5wZIxCpkdE9SYK2C6A/D
	 wImXgvRgCnygYoj2iJDjN5Kptgvy+bGYO9cE4S1YXq/KYiZjW56u0gwqLGC7ogcuqM
	 jAB9X79N36F//HRajpPIhudxu2zoYGqS/XF8tOR4AzHqb9SokBvLNZiapbz4la6f1r
	 YH9HqmnwP/92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637BEC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170548729639.10584.12128705267246602567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e246d2570adf872a0ea89367016c3a3e915963fc8a64674603bf9e9a2a2d9d44
Date: Wed, 17 Jan 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705487296
