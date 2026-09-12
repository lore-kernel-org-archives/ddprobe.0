Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D173AD512
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789236634; cv=none; b=ONPDfVvSmPrz4rMSyJegcZZrGsfWd6Te/GH3Y0HJ6zlHOrh8o9kFvrpREKLL+qROe4wEvOuyioQYrQAzqk2YCJGmJVv5vkkwT9SmHuOGQgzXemYKwAklO7Z9jQHCYng2kqPu8y3Ym0rg8PgV8/tDJ5krvyU1vdwr2dtO2XD3XKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789236634; c=relaxed/simple;
	bh=MNB2U17DtZ1FDKYlGnm7B9Ri/jGlvCo8qE6l+VnNqQE=;
	h=To:Subject:From:Message-Id:Date; b=Z5amJTM41DamxTLcySPcH0SiQTDbmGqurs6Myr9lloBjVpfLT6pKT14TQ6g2W/Yw0VMzmAtrZN/eL2d4i7+LdEbj0XvQe1YNRzG0rOIF16PuQzXjWQwYnEHPnKFBxzXV6C5kUDFvuUfz73vUh5TU3w43lEBpPfZoIwfgkRzJrw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZOIADnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZOIADnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD052C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789236633;
	bh=MNB2U17DtZ1FDKYlGnm7B9Ri/jGlvCo8qE6l+VnNqQE=;
	h=To:Subject:From:Date:From;
	b=WZOIADntJp60AmWVF+IRPZUI4TGl9z8kPyEQ8WhwcwNwE6Ztc5RC2ReLHkj/CSore
	 yBdKFsFe3TySAFUfgSN4i//KviEQ/2+pcH23iE+41X/exMqzRHi2maSztM410eFJlM
	 6MONrXWShcaNMIaXesn2O6Pz+Jb6v1nroLv8DTKwUP3mkJu3qU7xWVMzkX8CTE/4la
	 zx7Cd2XXwN0tJTAHPR2AvrtboSSI1viNDIoLXEIQtnLz6dCvh1TWidx9jos4uvrwDS
	 in6pE0CVOcWSRT80/aBbc81Yu+6lz38uurtZkFwab76mA0URagy445oBHCcYpAHhzm
	 XAzv5JbEWNqXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C0BC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923663368.9610.9648461577035511566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847ee3e7f3368a4dfb5f20998c39a4d2ab5aeaa01be120ff339c83c386073bf6
Date: Sat, 12 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789236633
