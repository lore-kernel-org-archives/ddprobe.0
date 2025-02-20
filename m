Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5661F91E3
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740059934; cv=none; b=Hh9+n2+Fwc2Mh1gTfvbahiZmGh4kMGVN/VcYSD1txw1hY8M/O+tHM9CAcq22VFo6zgmEa1cJv4fPC4XNvsui0IlO4EQJ3I3dvDmOATBCGQVrGBkM2gRj5KeGmcXZrGzqOfmxG+toGgXkB632jh13Ea4GvnFodcV7bGhWc0/zhFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740059934; c=relaxed/simple;
	bh=q9RdNzEnANU5bSaRt/BQyESfw5X6SHLbo49aIeVLjkk=;
	h=To:Subject:From:Message-Id:Date; b=R1uRsyOph0m4gU5QGgx7fuUXuym5WAgBjafjzNjlsc541vbsnFYEjPsp7qV22mazLTKI3eXih0KDnrRVNvSrhKcbsKexSIUU0nkzXUmyShTLbt+moA7LmdgO+9j9/VMzZDf7l2ETmPiVnQtHwXHj72T/R1pKlhe8lySmBVcwDgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPTIq6B9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPTIq6B9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE86BC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740059933;
	bh=q9RdNzEnANU5bSaRt/BQyESfw5X6SHLbo49aIeVLjkk=;
	h=To:Subject:From:Date:From;
	b=EPTIq6B9M+q3LLfwjAEIX004XLE3TK8DqoWBGoQ82PXP7S1EpInGgtu5IXDXBcuEs
	 zSIyixi80PLL+0n36QTTprZ5TtMta594jHfO6Q0lbonfQ5dmxxu4h9rtT5raRZU+Al
	 WhZ3iNumSGMQx7TVvoDkkkp3/J/o1cA64Le54y+bkd0ov8pruK7Dt4YLd2juN9DXym
	 KdQauDJwKiF0L3Nd99cf5FgRDSdvK9XBSeK4JqLDgsaQms1IrbiywCF7PGNOPQm4/U
	 y+xbgiFmWzn09VEeR45E8067bNCCpCpVCl1xwPU4+e40wMtS/aA7pAp4QWbwHOu9rL
	 5tcAu2VgDcrmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C7C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174005993360.28349.13231794070942952272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19015dde3cc5bc4b1a3d519e0020055dc1be0d5587f1a0ff407d1e801c762e3
Date: Thu, 20 Feb 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740059933
