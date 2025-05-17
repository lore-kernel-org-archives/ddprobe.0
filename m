Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A85115E8B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747462194; cv=none; b=MUdX50d431paZTY3LcISt3/BC7rbJ66xYgC2hYV8CnTelCD05piQb3iGrTmNzr1zwgxl/KkSjUlyu2jAQ3cR4EIRiUnwtsjpZtlWQTHfM/2+2SkQ/uqpBQOrdBWYcCm4m/9wqdAA70gufAt+0/z459zTnjQtG8Iqtg4IQUzFRm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747462194; c=relaxed/simple;
	bh=s20tbrOClipOaCTUKRKmcFGYVZ4R+DJ373iXRuXS+/0=;
	h=To:Subject:From:Message-Id:Date; b=ceGD7J/MaOHhPNdAoveNRn5f4N5LbMxK2gp2HWlviHBE9rJA2cdaw4R1Ug9p8P6xysXTUgMTnSwwam8BXSIcqt1SmSmXDfDHBmAhorwHny8T1E4sjRYnOUJJ/H1zrZj8nnrT/Gygwkvo/Ra1eThDkpP9ULECIp86eQThrUx/p+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxf1zeim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxf1zeim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2360C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747462193;
	bh=s20tbrOClipOaCTUKRKmcFGYVZ4R+DJ373iXRuXS+/0=;
	h=To:Subject:From:Date:From;
	b=pxf1zeimTg6MI7QiyspXv8PR6NElp9LDLGBg79KAoSAkvlIVq9weYwYbh45rIRTPr
	 teM4jSVjO86LQXqkJhLXi3ZK69EXV3joypIci85VMKv5QIaJBbVK82JNCYEPgBUSaI
	 cakjbeqV+fUgYdEB1wqh5hoB2BXaF0q1FFrEJZd7vrr91Ze+bzMeM03EM2c41Wy8Jk
	 Z+laA8YaINouXE4lU+ryvtQwBOFoEdL9BoirBLe6r8vOvU71Mp5IAtUsSRTHRNB3i3
	 F5z1edAwRn81jOa8o3uty5qUr9o6/NM6BVBHcg88KRVOL3Y4/GIkkb5Oh+Q5PBNZHB
	 fpQ4sMLEA5gwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F285C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746219357.9476.11724003006704063185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d526fe68a309ed96907d80d2a040ced4508ad89ac94f877866032ddee9a0b8f7
Date: Sat, 17 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747462193
