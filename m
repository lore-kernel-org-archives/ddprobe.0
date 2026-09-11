Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979FC47209F
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789129834; cv=none; b=tL1GvlGm4/6wyVXqr1GBx2zqyvdHHuugIEE8uNRNnxbdT2nfmzXbA5C2+zJEca6vftrDw15ZGxkEMSLvuqAUJnpxKn8wth9YJpuZ4dQ5acFPSzr/XpqHnIMZVPwEkUw//C5HZ8mwfIXoDa3kyxszI59mGa8tGtA/Ty2tnO+mowk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789129834; c=relaxed/simple;
	bh=GSxZin9WJhVyvkm8/gGMzXfnQ12dOlLkqxiMcI4lPog=;
	h=To:Subject:From:Message-Id:Date; b=Nf9PX0GtuZ0eDN6Jvpbt127e7k892wGI2Ivahl7dtH0i0yvK5JiMvEEtLRM16jHaKXCbftXmr1batNk6ksiMrByA9wlnHZYhFANjLOib9Rd1xbrftWwNsO4/JzUUmrJXGrVq067Se+fH+v4xF0Szc69MGyvboj1jH2Bpkp/oAV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvWd3cSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvWd3cSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D423FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789129833;
	bh=GSxZin9WJhVyvkm8/gGMzXfnQ12dOlLkqxiMcI4lPog=;
	h=To:Subject:From:Date:From;
	b=FvWd3cSs5r1JEYcJDMy66KRLkwGbCyLmLzGSSuC+zCpxicHW5nFtIbL0kr+I9qpND
	 hxhxZIgdnEKmcGcrQcRQqD41aeg0AkRNTg87YU/lZMRIVnNWPJBiz1Pfodmj8wiZ4J
	 8LvjTEYo59mc9dBIE2XFvm5xqTUg8H0Em9RTHt3KdpNFbV2xug+4EyK/NLitDfFHt0
	 nXAwHI4dd98i+AmtdtXQvmqsIhle8q/UTwXYG/6IUoNvmKGJUj2jE0csj87cJsKJhO
	 k1NzLCOlmbyw1CPEd7dpgp99z2WaL7yQ05Nv7rPHzjJPD0oBBIgfCSFSuGM3fVEUYi
	 isXuTjHwH4f9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1504C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912983371.1646.5684228464661348733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03cd55148fe6d56e2e192cc82cd550b575b1b88437632cad9759de23128609b
Date: Fri, 11 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789129833
