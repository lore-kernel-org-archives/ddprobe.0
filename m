Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC7972631
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771383294; cv=none; b=OiSqLIzlzgTwQCpwqWNkBLbCvoN5yH7klWE63Vr0UQ1jXb2iGYj5Qar7cahs5M+0Zp/gjvsPZwwoNufEwhSJ/C8BPg+ZtYzZ1M+S7auRfSevELYBj3tdMc/Hb6fEE8LAiqrrH0apoAm5V9LrRQqSIUc5eeIAEWvxscOtj3uLksQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771383294; c=relaxed/simple;
	bh=CN5wAeikuCVXebIcL0Wxivi92U6a/xY7L483Eqi4X4o=;
	h=To:Subject:From:Message-Id:Date; b=qKUG3dzd4Nsz65G7DDqro+uP27ZGrKtXqEa/IUtAzzW5JtqsPbP5dMDFdNufkg8XGGKmcBQDJ2eGpea+96vMcpDM8RMcm1jet6/I98F4QdIjae8TGWn7aHo5P8BFdC0gmIp6TnBiy/1j+Sl88UWA93FrTGcdtYbS87I1r4B+sFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoUR3KTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoUR3KTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D8DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771383293;
	bh=CN5wAeikuCVXebIcL0Wxivi92U6a/xY7L483Eqi4X4o=;
	h=To:Subject:From:Date:From;
	b=MoUR3KTarVlFryOEMEhayOXmK0F7g+HGnS2zWrzOIgUdrOONX8mg+YDI8sO3weyOh
	 cexub7Jn1XHPO1o3Mtd5AR8LuuP5Zi8Ek15m7Fr95VzjwOPMiN88v33C834+Tovf/6
	 mG6ojjTqQjc1XODFffHEv3FGAQX8Enwnazo7Bcb0MR5JqmcqMTZk4Svg7hu+yFWhd/
	 HILrXWRbdl5us9RT04WaeLhHnCjQi1iloq/tcwgjzTdQVOVMwa7x52nUwmIZLKA5xR
	 Js1rH1O0VKPbpWXh9libGIlrCfZq3g5j7fUbweMMfXxCxTdnJEH3NwXChJmQ8tz9mJ
	 tLYT/CmqRPlrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9704CE9A041
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138329359.17215.10955484445782048311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b28f52ab151b384e4c66a2cb5c28f48cebd80060ef7800658b21be036200325
Date: Wed, 18 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771383293
