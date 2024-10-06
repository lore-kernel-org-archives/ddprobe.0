Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6725AD55
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728185154; cv=none; b=IE+V2I7W9OjDz7NzCyedkPNIYv43SM7B8tZh23bmpqL3BWeXygo96YUH4ALFynqNA59u/EBrE2QCCj8yP8fDfU78SKDmF9ghH2OgPbBzBBELdcnXkHFAQpLLWffpEtKwZrWM40BiZSIJVn7ssNAnMKMBPJracizoVcyEvPAiCME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728185154; c=relaxed/simple;
	bh=uqzpQX03p7dG4ApJMwhHaUasJH5HBetEJ/659HBDdoU=;
	h=To:Subject:From:Message-Id:Date; b=r5wPwoH3yd4m6krKE4DYDqvNdd00sxzdjzukR3Hu5MGQ8sk6S85AICBICN8SigJmCbU3vJdU/bmPIuLlXjvEXIeiNQvYmhN1jalnqyf1WKq3d+JxLJvFgQz3bBWTCoHtYRSkLlZ4GerUTUu/o6GY8Nn1VIkmNe4aGx8NeFWNIAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sdl8aqrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sdl8aqrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E58C4CEC7
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728185153;
	bh=uqzpQX03p7dG4ApJMwhHaUasJH5HBetEJ/659HBDdoU=;
	h=To:Subject:From:Date:From;
	b=Sdl8aqrGKinhF4KZxOoTCx0EmzYYxyL8lO29CNVHXjho05gt51ak7Lk3MIlO1jU55
	 YCiXiBQZYZUeUoZAbDL9nCFJUnybgdlQ9lNL4IaHTO/1qjA9sanLEDsgXEc4UW51Ps
	 UlV0ay4Uw4BOKcO5nD2n17xhmSEuzLEy60c0G7N8jJQEqjB3Ak2K5ZBQ+RUfxp17tk
	 w1iYwx6oimClXeHaeq35DwdPEdm8mf/Hr+8bbsAixJ1I9gFBovnxL5CWIEFMka1MCN
	 fPVIdYw62sE6x8c1R1OmZNHXaHKkD4fYa3EwczRUYd1sfQyzzLi4N2OBs/tcXt6Wmj
	 Jr2U9fw9c2+Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97233CFB422
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172818515359.12497.7391528108613319066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abca3342e8c491dc4142f478aae3595d88ed8a090c571d0994d8dd7d228d1eb
Date: Sun, 06 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728185153
