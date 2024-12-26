Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BDD13C80D
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735249554; cv=none; b=eFSHtNWbcvyoGtz+yXFyvlGCHgu5U3ADiOjgdyQi2hEU1L6xaaJKFmkFUCyH5t0hLMG8+cWWnPxVcfZ4DLkB1z7mXJ3Ezo04sLh17Eu9FYn+HKojU7QXoQW9M21jBfOxyjTNsqQkIM+W01ucWU/D7PqVTbB9bso+MhWcb6psCyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735249554; c=relaxed/simple;
	bh=AdW7nBp0iLoNforTvG8HgTPv53BtpWHH+30p9xFm60E=;
	h=To:Subject:From:Message-Id:Date; b=Uu04WGrp9nbfI1a1yiN7PQFEwRZ53pfSHQ1eEjrPrjxnfMIIaWK9Nzot4lI+MY+lIKQF8gbMpvp68l9TeciyZS2cJCVygT3+12V9bklNzFIMY0VAUCINc+qsn3JJ4muKniBApcpjwcHrCyHAYbkN4DYJIDe0GKu0aYqt1/kG/xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iK0ni+pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iK0ni+pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB1BC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735249553;
	bh=AdW7nBp0iLoNforTvG8HgTPv53BtpWHH+30p9xFm60E=;
	h=To:Subject:From:Date:From;
	b=iK0ni+pvULTX8YdE7HKcz6L9QIGmXG+tyCWHZRpSN3jvmYfC9/VG4hvGSStrOLDzY
	 snbhs6C4jAfwS/K+oNezwb2Hqf/d2ihn2ivMyuw1RY0GlacsrFDTumBTrllxXUQOe7
	 LwK8xWyA9SySJ7iFkazFrzg7e79VFC04Lo2gWzvriFzZdowMPQ35KY/gjdg4JfTSwD
	 br+xdsbb/jemXJDZgrV18FPB4AiEBnpjUOxq2lvM0j1Oz35kDtE5mKgbsunyHpmLhi
	 4vYW5FMWIMSqI2SbNXLh77VRU59A8ZZToNmxN4+M6ypzXzupvDmftkZgAK9rju/Elz
	 6VkRk60Sh7PxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C2E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173524955358.23654.2593031961198040642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db86ebc0adb16d75425a8366cfead4585a89c4cd35566bf7ef220ca9fbb0c923
Date: Thu, 26 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735249553
