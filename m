Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5631D1DF725
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738930554; cv=none; b=d4cErS9AH/bEnpVdjwAC4z50xt+bkM+fmxofrBaycx++C34xakV8qPtQu2olwj7UXCT7bUi755Lz8im7T0wxdvdhladpzruKO36pysllGg3hM9xMVijV7hpsNBnGrTL6br1W5GDcy3rHJx8vgSZmW2siZa+6dc0Uruneri5surI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738930554; c=relaxed/simple;
	bh=9LmB8GSczCxwlA4nPesqqYNbl2lQrB+mHogUhaE0GhQ=;
	h=To:Subject:From:Message-Id:Date; b=JdbvrAqqnc0Np2osFkOQ22AO2IMuZR1CRJVWYx8kP8wDU1Eq/iqYcqoOZkwznVtJdbEMBHhBDeE5gR+ydExN3WDF5vVGo3mD5duPxvmcXqY+o/yZnXWsghMhkZ0KveOsN2f7ORKVXE/wCChUyv5YptPcQxyh3qtLA8dHvOjbpkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6V4lPeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6V4lPeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1513C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738930553;
	bh=9LmB8GSczCxwlA4nPesqqYNbl2lQrB+mHogUhaE0GhQ=;
	h=To:Subject:From:Date:From;
	b=b6V4lPeq9bHbiWbZZ7J+FQbk+LAbxEDRDATngYQLEjho7AwvhVemgVOqI3IxM3B+L
	 ssuNhb9XzVPfdKVlJmcof8AwksxO43hEIBzo/Qrld/uORF1R4cMbruDCFBFw+PHDqL
	 KAsRzbpAVwKlnTX8gYAqjcmefxnhvkmytKH7i/M33RmWC5Qk3bcjxPnLvla28jJHxD
	 LNymx3dkF8UdPjb0Ktyy+7Om/3Wqcg5zyR/ADVbcsUV96wTHCN2GnQWcd8VZRZfIFv
	 4ipQotbXKipK/d0OuUn9vgWMlbD18UOK/PRmCYOLBD66VLjnBMLJjCTrE5N6Un9u7V
	 cyLTfjVr5qYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D2EC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893055368.11984.15448966234263571054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3aad36f0e9e3694872bf070b9e5f4e1587467fbc737bc5bdd56ec66cee728ee
Date: Fri, 07 Feb 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738930553
