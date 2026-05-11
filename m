Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC80330EF7E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778488234; cv=none; b=Zfl6NCsX1dJe46GhcYzDgkch2Ti9JTTUzFoPCrx2LJ5LxODShWrl9463aV+O1Hxioj4mUNW8GhmBAu4llE9/OX1qaV8rD+fb3M2jJEtjxmviXEDV41MckGM65nOk0lflCxuvfj4vOSMqBsNSfewnwSKPxmp/ml2guYXJgxZMXo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778488234; c=relaxed/simple;
	bh=BU3iIXXOcYzmvQWHOpHoGdx/LFbI7qdXQpJXK0pUkGw=;
	h=To:Subject:From:Message-Id:Date; b=OHuLi+gdrB5fYfvDuF6GDel2HOsfgFpWbDRDaRyIIpov3NpAx0sHQnqzWD7XrIvYbJRri1X+gNMjz58+kZrcQI58TH+yPcrs4ud5Dkn2TPEFlUk6CZRavKkJPhyhPI6Pva9xUvW0yE+ntIIaLdaQzqKFsego4V4KGyN8cpNpaL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOMset7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOMset7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7CEC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778488233;
	bh=BU3iIXXOcYzmvQWHOpHoGdx/LFbI7qdXQpJXK0pUkGw=;
	h=To:Subject:From:Date:From;
	b=TOMset7xU/z7ERXG1eEh4QgPJ50ovUO2AwpozGdH4/8jhlcEhGR0j0Dcx0CHoTOX4
	 yDP7Jug2uOIT4XqgAc9WsBfRsip3+R2NcI20C1eRKHCIMA4pKETUCKlFK89K5M6wfA
	 ayJhJ2t4i8TErhFwN4n/cyJHA6CE8g0QmWoCOhbd5T6V7Oiy46UBIrNZ2Xw1a/H3+F
	 zZojsTgp0wiIx5d6jUijxKrv4y4BUDVlXxUJsNiM9TE7xFKE4LyO2YkwOW3qemRHIk
	 plob+oO9qCJCl5x0dIIcddf4AL/ynHaZCNBaJD0Je3XDSKHizdvv7nM84oMGRagUNd
	 qeLDnbmCJCd6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8473CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848823374.5295.11669013552948459716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da111435896314183abdf8e93949fab7e432cb0f55fb442f5c9dd5830894597
Date: Mon, 11 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778488233
