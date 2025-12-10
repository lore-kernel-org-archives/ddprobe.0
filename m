Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4ED1320A09
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765363975; cv=none; b=O1h0nQOpaZI6UXWntzcyOwy9MGS9/DIhPPR/yPmp/P+g9hi1275sYeMcra50NuYDgw0eLr+qEsuM7MJY+jJGa3++MTxPUx77jetIfHuEASEyWVfZdnOtrEKsHw3cwEC0ifRJl+cAGcCvXlL8Jk/19Wm7cmCkyyaTkJTJDbs4TS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765363975; c=relaxed/simple;
	bh=arTUeXwGuR51FdDSZBXn7lLn+5lMrekUwZ1ZR73B5oc=;
	h=To:Subject:From:Message-Id:Date; b=t4Lr6Urkl2pgWZ/Y4xhPaU2ElfIV/10i+MnuyUl/L5yhseP8LC2mvofOOYeMYAd+qGkKKOyAbgdEt36+4MOmvFrWh8NFS5PsIjjBCYdQNUXKNDGE6LKm8faJ5FAlstUyrSRKaOzc9MYh2Id/n9RcOs5bN+DxMj1NlRC6qWhSqN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=by4dorwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="by4dorwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765363973;
	bh=arTUeXwGuR51FdDSZBXn7lLn+5lMrekUwZ1ZR73B5oc=;
	h=To:Subject:From:Date:From;
	b=by4dorwYe5ebNowibSDepSOVTjjb1NG9e6cNgyKrhwJWBd4O3wFSrFUCZrQypJt9U
	 V0SBLQ5bvQK6+7DVhplmc0yHQY9iQIitrIpH51GUF5gyV4o4SXLtkDGg0+OvllAlKu
	 t03knEPjYmQdqHhwZNR9y+RejEKq9FKR/TOkCqbtVziV8iesKN/d1LDOep4ppzm6Nz
	 2ZYcjTbQGEkvAmX2LRz/R1gsGe8PzohsEEAFfIXlxecOvKntir3+okqgIAMI2/0DHD
	 x1bXTGZ7bucwzdPT/pnECr8Qd5SxAzGN46w9mx95LVI8bL5ME3un4M8DGUuwrezHE4
	 SxqePlHCpclJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D72D3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536397358.17545.4977749891291855723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6438ef1e8a24b92614e8217d8257cb3bb2ca1a86c313fb90e83fccaea19ec3
Date: Wed, 10 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765363973
