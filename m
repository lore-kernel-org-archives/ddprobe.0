Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A2728EA
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740823735; cv=none; b=TR6qQXrwoR1RyCvcZH7oAJ/3J1T1d3LGYfh/QJ2XelR4bGVr94ftEuTqIKWHai6YAisXMlW/jnaodgY75LdjMqITkv0vvXd3ziTlimbatDu2IYk+1GoedgUxXCdoxY7xwGCxal1R2rv8cPoLIFoRhxVCHEcDCotrMaZDyKuzG6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740823735; c=relaxed/simple;
	bh=8ur/2mtHrjFHbZkDjkTvXkSrvMDz2j1JgHvCk1LqO44=;
	h=To:Subject:From:Message-Id:Date; b=DVYvnEBgXStsp+0ycydAdnvPO2ksGmlkwif59sf7JrevCTixnDEG7ofwSN+6eD7UydAjWhD9z3GpEnNKd3yYt9uykwKk3BWlU/jOsimyWtiayDmGnzG1iQsfH39WY60KGZKunRFoCIn0N2sWgDEWdCWQm3wCknVrjViKNeTiaLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIhHzrru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIhHzrru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B77C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740823733;
	bh=8ur/2mtHrjFHbZkDjkTvXkSrvMDz2j1JgHvCk1LqO44=;
	h=To:Subject:From:Date:From;
	b=PIhHzrruXATZj9RZ27Spn1K6w/H8LUAq07mKzx1mOUEHuXSbEVCwCuG8W+YimJ0eR
	 mbRQ6CDwZSs7Aluscd6r+anMWptLCDDhZjOpMaliUvae82E556lWj58ZuqrqqjqeqQ
	 kB05JRfYr0Fzp6BjBuZTe/zlMnFdyly2N8mijk7DpA1uStB4rLH18r2C6lUQXrHyuq
	 jQT51q9gFVgiCcPHIgAzmwiTTuBLsmV+e7J9NbZJV18l0XMT88vyvEKznE1uI9BdWO
	 Zc4SCzo7nI1XC9mtjSYpbaYZ0FUQ+6gzeJ2sNK4FcTn02cFb3W816XhNeSGhG+vNkf
	 wCVBJWR3SZSgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95390C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174082373360.7903.3521871915721252893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c989845dde732ab3ecf41936afeccc09748798c505f933f139953fb71a6f449
Date: Sat, 01 Mar 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740823733
