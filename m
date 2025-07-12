Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECCA273D9D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752316793; cv=none; b=sGoYJCrxbybOYgAMGObVBEXMdZcnUo7w3aTMuopkKF/JRh4WZ6GQyBEA+pYe0stIitYRCdJ/rFmbTUt+l7iB1n2CluKjaUw21vIHXCYSksNzppK0NvpyVTb8/muJSJVZ/kLsdSvmXW6BxspDF7pM6TaDkSvF4M4InhdMtPmoJb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752316793; c=relaxed/simple;
	bh=guj0VZOdzTYF3YEYfUPRRIjVShMbiv89QiFfbm9IU8g=;
	h=To:Subject:From:Message-Id:Date; b=ZNUL58v2GnESdasCq+7xNJa+wFBEeC498FE5cXmktl8izP5B3eSOt7nDw+t12VVtWvUVv2yUxLDSqOn52kBpcFMfgwFGn39enEM8DmeIJf+rgaS1wqh/6TtvO06/VSLf2QeceTyIrihkG3AUgPHyNcJ+YG51HW2qIT8l6vE0bJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdF4I3+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdF4I3+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3778C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752316793;
	bh=guj0VZOdzTYF3YEYfUPRRIjVShMbiv89QiFfbm9IU8g=;
	h=To:Subject:From:Date:From;
	b=UdF4I3+becWPCgLOF9oZPj0ZU8VC/SPwx1TvqvU0u/thvXwheNI7WikwKMSYPO24z
	 i51ldaPIAGq4qpeC4gk4NOAYL6DfxabaFSUsTIfT4zFHrC61pye/pGlNJsePhhGcwS
	 4QEipzQj4SIhWVfyKcTvgLF5SiNItVBJ41PWir8FC/rYKBKWvpOnBHipFdex6++Xb/
	 kig/TKM7iADDK3yjJbQzYGBU7bccv5m7JlGT80vjCcEu7YlFem6GqJ/qSj2RbSqMzK
	 pKGWCZj3Ats/Jw/bTBl/xAYhhv7cB1P+LY3Dy2UPb+fRXMtKujPr++CXHHJlZrYZjk
	 PcCk2Ncgog6Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B9C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231679357.19070.7980665278447159879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319d7ea02ba49ff9c08313fddecc56a2f5903dc9d12e1d31472b1960bcb25dc5
Date: Sat, 12 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752316793
