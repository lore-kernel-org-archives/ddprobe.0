Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6466737FF65
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775643334; cv=none; b=gO/dJjJyMiIfjgYodAIQnBdsKjFlLL7XluR8AtHUaHqdcoXcROSv3uo5vwqPUOTAHaMrhhfSq5RMO3Rmsne5aqxx06RM2OMm6JjjiYU3nekGQEGk3mOvfQMy9rp3QuVSPG+SFskClp/wRD0u4J0XYhIID8tSOOxfI1ukq1L9pxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775643334; c=relaxed/simple;
	bh=SlsJP2gGhrTvv3ohy6gsUIcaoB6yBX60H6dfgp5751Y=;
	h=To:Subject:From:Message-Id:Date; b=FeNBqDOovK2aMQTcUZ84ogxqqBFP3dabkOgagJBHclXytPOXMOAXakU3QosvWcaF51P6B+P4dBABL8rHEnPJsMexDRD+rfkR2Uf/7PRVZYd9i3E0cd960k0CzpxRzSkG5GkQacgSBpdrdR3bdVqntGn2Dxpz/VG+4pd7/hW7G0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a07jy8yr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a07jy8yr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E28C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775643333;
	bh=SlsJP2gGhrTvv3ohy6gsUIcaoB6yBX60H6dfgp5751Y=;
	h=To:Subject:From:Date:From;
	b=a07jy8yrX2MSfcKgOsNov6LAEYFRp4RBQl3DSkibWh55yq2HG2zHZFd9ThiQ3HEoP
	 xJlyRLU5eMXElIXM8FC2PotDwQ7leYZDjxoYQakwMk5dVss1k5DAUIl1J+rRX16XUY
	 DyJx8HgMCaa53iHDxgilfjx3vrCLymZ9oHRnqyY6TsfdFKCU6HRfw+nNHUmLqepxrg
	 MQ6xgAauDwEEO4x72ECytSV4sdg6IuOU4tIYcxPf9nxu2oI/8xStRPL4+ESmLVlU0i
	 v0/O/eWOzmyICQz1DxfBXcem1+OxyaLe7Yzub1nTy/xR0HAzoq2wHEKok7ynO87I0W
	 Ed3s4uWFLUpyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90541073C8B
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564333374.23820.15344857393372638341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33da411c8d65fe7c8012031d3ac852a14ffeed9faa81b4109cdfb2ca7fd432c3
Date: Wed, 08 Apr 2026 10:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775643333
