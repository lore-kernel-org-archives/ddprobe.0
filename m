Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BED17C61
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728440154; cv=none; b=uAkNx0R24ayiTb7xF536YNQIJVITUJc1lFxJBiPhNhaGgpv728rFvInVyS9LVPcc8XIKcBMTW2UqQFovvkbmExlzyp3u0YTXUEsqxzquf3fr/qLbg2IzwgwxprwzajbWJwr3BYsiL4g4wEqqsApOVUSdWUJpxemGLuE4kt1pUok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728440154; c=relaxed/simple;
	bh=Z8qYVMPgLXEeXxWW7avzZJtDAeDwv/JVyspIgp047io=;
	h=To:Subject:From:Message-Id:Date; b=m4lo7ayccRhVyyI68DdGMCmkRQlkG118z0aA60lnOiJhmRM895ZLV6/Jw7jAhOTsU/eEkJcl3VLU5cJ6azIEWEdYIlx/Yag+hFIrzbdO3pkXx7WPCrWQBJWzSHEX/fwGgkIAKebY1c/plq+W9aIShwboWvDuFH2oTCU4iAIa+7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyPyVHM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyPyVHM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A674BC4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728440153;
	bh=Z8qYVMPgLXEeXxWW7avzZJtDAeDwv/JVyspIgp047io=;
	h=To:Subject:From:Date:From;
	b=RyPyVHM68k9LOWm8fESz305VwKoq+92wQr5KtBCLhDu+7yqfjnjcsN+1qa3gNQVhy
	 vFnBnXG+kx6W5p9sIYR7RBenxBh6ogR7g2ZRei7Iiu/6O+4O7ECk8rgKC6jVE3wMGj
	 v35go3E5Julh8W7f0dejyxG0tk/SBB3pAvXzcRPXEc7ykDl8PR/4qOj7CFRGZOfrh2
	 ci7ZJpnMCUrsm57prUchSX1PDBb8qkQVKUHQI1HaX+hY02uA/irlFiSIA89AQtkf1E
	 NqAhp3YjfdZkS8I2c9U0WQDp0PHBJczYfnypiyTa2jPywPtZMvAs0GEhTtZburPy5a
	 e5zBT+MF3PPFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956ABCF0432
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844015360.16962.8363972012017921898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1cf2270faa06a28cfca805491c5136398c00d2240714d921313b0a1a2d6ea3
Date: Wed, 09 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728440153
