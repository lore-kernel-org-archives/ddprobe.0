Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1388021421E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752648594; cv=none; b=eKWgxEMY2ERDMq9T2tSi2vVwStrxwrq6cbOhdOyLEy7A7ZKwiUVdR1Cj+FybQfz2RQ/1GvepMOzMMhsr/5SK2KDWZNlacMKhIFiucYcTE/kOC6upB1oSUOUb8LW8Fm97GZ0fLlxa7Iimnnpp6NB5HItJaH2ovYTH5zDUYvJ0FhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752648594; c=relaxed/simple;
	bh=TsEw9iMR5v7CZKHdWozOqXlzr+pNyfHcSKXI92ZN45U=;
	h=To:Subject:From:Message-Id:Date; b=ck4YVlC8AE1c+wFUcnZ84hwLzV/9qfV8shFVF4taVE5s1TobP0kr62FmkLni2Ipzg0ptDNJsP1+JcEXEjrj6pABv/V6TBKUTCvRQxSP/nBJhfDe0lkBO2ILVeb7Z4z6NTe7kS+A3f+5A0SArZ88IIZ+8yrN4IWWQxccUiXnwPxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLSeEnt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLSeEnt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D68C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752648593;
	bh=TsEw9iMR5v7CZKHdWozOqXlzr+pNyfHcSKXI92ZN45U=;
	h=To:Subject:From:Date:From;
	b=BLSeEnt+djkgzvUu9cR+DwR/dOMGzp39EBBDSBInpJxNhPOYAaEv1SQDDl8le4+rI
	 gteNepDMaXfHHOcCVwbYgXlSHSqZrt4TWtOEtlFkeb++yufxxYnCOjUQo4wotl19Pk
	 kZkrvZuoYQzke4UXnyI4tStiY9q/jmL/a5Zrt9S7B4ZuG4eQ0qziUiR6Jgm5zRe01b
	 AsDLhUjZHpvOoank69Q0aObp7zmgCaQIGpvc9+EKLJAwAXcYpoHts+6GxX1+zk/yef
	 GFtewEQXmPbMHRlfrzRhepfHALoz/rVmqs1Mt0g9XURVYuqDCXCyofV7tcMIKgjfFj
	 VLLZ9+bwCj1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031CC83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264859358.14839.14341119804307866497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46d596db7340340109ca69e6d3b09b2609463d2205a6069f86d0803a4fce7e8
Date: Wed, 16 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752648593
