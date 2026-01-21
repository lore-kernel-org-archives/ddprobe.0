Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253442E8B75
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769012034; cv=none; b=ZYQXf9oH8MOjsr4Yaq017uAIyxs+IxxgR2MDQQjxRQecwAMRLzhZYB/lX2sTA+ORfgRWwt35D+L3a+Sc9nQ49RAnL01uH80IWS06yiqt5x3wqANkU5RoNXgh0MVJP/O7QxYaxREA2nowjwh/Vxf6l9jAb/Rg7UfDEImhNxQE7F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769012034; c=relaxed/simple;
	bh=lxwdd5DcR2P/hhRF95uSdefN712J3JSzk2g61/nSEhw=;
	h=To:Subject:From:Message-Id:Date; b=J8J7lkun8lCqvlJm4YJIekADyvWycFWixBETSybEaW5OZ1JmddL41z54u72jRn5AyQlpd3wNDkVgKj5T+9YFwB2RVmWTl8zgsE7VrD1KX7VaVoMC48ya3/bNMEAkPM9lvdyE7diBP2YOdk7bBiMHNsKZIr2wHG7lM85EpeROxGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OF5lnDYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OF5lnDYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F471C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769012033;
	bh=lxwdd5DcR2P/hhRF95uSdefN712J3JSzk2g61/nSEhw=;
	h=To:Subject:From:Date:From;
	b=OF5lnDYLpGrhRgrzks/O0ge7XuTRgriiPqSp8Dzw7UdPP1gkTknBs6QXxFNoGiDUP
	 VnlCKfiYUDEAiYcXmPOEjzKwjyHpU3PIrmSmuZkcCfSP+kVquFD6Y4STjr9iDOJLwe
	 /mxpcr8YaxZBqc/zNrqMcB1NXz95TMxcfS+RpZ7DhMiim3kjOxmjZdTnTfFRucBJjv
	 PtZpbkO3d7yk/r/20DJpAmuWfrK6pJlb6qy3gFWUgF138gOaAfKBWjh4i/nLbaxcvG
	 iY8YW9SiftE/3e29w+ZUMMn7QO/1NlfJSNW51diV1XReqBSBq0Dh+9PhJ4UtbbXWdJ
	 7KUGu5PBxon8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90315C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901203358.19381.532245764903229038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982a84b0952c1d0171749d8871c94034f57921d5d3c69dad371d2d395c921cc0
Date: Wed, 21 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769012033
