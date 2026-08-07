Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519364B04AB
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786061434; cv=none; b=ZxXSWATOCNSNqVGWU1pSyiMsVGrZuY2fkR6AZTUxNB51FEuDsdBPT/9NzstiWOjUxLqyl8391Y8rNsifQsnArH6hsy210cv29vFtMGriLuIP66ev5PF94sW0BnOV3HcCIiyCTAY+xCEaJyXZNCZxh41pjnseiN45vnzFDK7Hqg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786061434; c=relaxed/simple;
	bh=Rme2a8ErdIeErjd3kfpZ3DT2gMUpWdI+Tqm+KBgHhJs=;
	h=To:Subject:From:Message-Id:Date; b=gXASQHvu2FLaR1hS0U2As3KfsI9tSaTi4JfTzTj6xfK/u/JT/BU0XQBNpzl/iKc4fO3CQnDLLOSUOBsLq7qBYWuHwUkokB1YcUJfkTyvzT+dg1QIplLZCtWi7gPmKo2M9ozu/K3YgSWBMkX0BodjNCGRaZif5YkudjeoBJafADE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpJd4LGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpJd4LGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12ADC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786061433;
	bh=Rme2a8ErdIeErjd3kfpZ3DT2gMUpWdI+Tqm+KBgHhJs=;
	h=To:Subject:From:Date:From;
	b=NpJd4LGMhpxpPSPhhtRfc1GGWnVQOv7lw66qxu2SPPRY8PpXhvPeE1ItO+IxqTLLd
	 HYHsgjdBesptqoNJdeZo/ltTbKn5JcqgJN0uUs+/oqi5eMqiKvoyWnylVMyw3Z3wy6
	 58haICOicnMAplL9P6ruGPIpUEiljAsnwGYTR+0wqW+dRcqRepXTO5DrE3EYzgjCur
	 0pENa931Vs4J/Coaqx678GXEpmzffpbwIBZ8PiFrcVIjnCAzosSsMHsBkgadEhPs9H
	 fLfzCJLA/WzkpXBaakJPJJXNv4TXpi01+9HgyOqUgl1dm35PLDXhatYraDJ5AvWc6g
	 kdCug6J9KblgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2EBC5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606143369.14121.18106550689352170845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca5832ea8c7430d1b2b0a74600040255647b5ead9e183e89f1faa9c3458ca67
Date: Fri, 07 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786061433
