Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26CC17BA6
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710494296; cv=none; b=m74ZhwshEOdDq2y60eHBJINdjE/zEqKFincvV7J45lqYMEumrjJG/uB/WWmqWPP63g7sanCvivWAVhC5t1pKeSXqxBnheOD+xnHrDC3Q2I6+EHbu2FNbLEPM21VQDUjF5qrf2VXp4IYP8/fA123MuPnZ8ejkgb3No2VmrAAOyGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710494296; c=relaxed/simple;
	bh=TWU5QBXpZe67OpiyjGeRp4/9UmwqMmOhFDr7L4nIrt4=;
	h=To:Subject:From:Message-Id:Date; b=PPCb9C8AZmkxQSD5EkabYO9yUvYSbN84e1N5Cg7vai0wHrGQuqjjgRXTHdBHoq/TDrN/Xkp73/LnJozUC/NXFPyTfLKUitftCncTU47gGZHmQo7pQIiikn77xmv3uETg5bZaKfAK29c2Hp0E6Dd84MABhL/M1p4XANybnjnaAaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvJuyGqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvJuyGqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6900FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710494296;
	bh=TWU5QBXpZe67OpiyjGeRp4/9UmwqMmOhFDr7L4nIrt4=;
	h=To:Subject:From:Date:From;
	b=rvJuyGqEnm+C1FS+5ydwC/J9wpOfgKeHaqX8KLD6raat8EPjOguDhZtDcdl6jRF2e
	 /txkw0VJbU4tqn2pKOgRyUOFgKh+9nzwHXII5DpwgnQ9qL1cPGSU2GPzSEj04y1O2b
	 lQ5QdlUJF/QPN4AkJvi/lRIwWwst3JzXpC3ce9U/iNCJQFpt4LN9ZFVQB/Q29CNh1e
	 1eQQBmtC/IfJ3Jr33BCcfsj7ovP/MJ53Lh0c4K/YrNPXUsrqsSe+2rQ88DWukhSuSN
	 Ydx/mYIII50A0Xpar72DLnyZGB+QqrmT327Tb7c92Dxr7RW4xi+uTK9xJr/b8EZsm7
	 zJEXzno8iilVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF5FC54E58
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171049429636.18926.11216472536028443358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75cecc97738fb4af5dad2e714175a72f2310186c3bad2a12e5dbe9569dd63f20
Date: Fri, 15 Mar 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710494296
