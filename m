Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BBE42A82
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765611174; cv=none; b=rVcZ5FWTbAswzegx2QsENkOLpglVG2KDhB9Mh7FOxQqIcY+iJzh11qtFN/C9M7SZXFEP1Akb88p8Xx36hKpefixjLEojqmFtxn0scoUGXyz7TcI2r1Xlgc6Eve4EPjhBkrPFBCfB7PR43o0fa9lR4b493kNRK3vpyd5pV/RQcNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765611174; c=relaxed/simple;
	bh=DeNvDFGzmLhVH3sS4GqSPFy8wgqbLXHzpfAXGcqr1vI=;
	h=To:Subject:From:Message-Id:Date; b=Z6Jx5no1VIoFSsmyNlLJgT2MohHriV8PGrGIp7gjATX/yHTJucz+IIKZSZG0DVUPNPdPb70VMewcUzpbAebvX+qbUODcaLp0n4XQG+udvfJm42FypDokS/bB4RKeaZjMsj+Zm5BYENfz7bGZQtMkx11Fli7nUY9xuvga3UpZas8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6A7iaj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6A7iaj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA7BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765611173;
	bh=DeNvDFGzmLhVH3sS4GqSPFy8wgqbLXHzpfAXGcqr1vI=;
	h=To:Subject:From:Date:From;
	b=P6A7iaj6mym/ZvNuRbx9+hPs2bpMSNfrNPC5HwQdHias7CgyOwUpmZZFMreJNqv43
	 HQZal2p2tshA4y6QwbegGZgGrXsjrh4iwHy1SRCqBOZ3mB9kfWixW64TmQ0/Pi+7hK
	 QPOKYo39wmqUzkR8SCNURPJSj7GvVZpwlVJHBFBr5JJakfbJsrJVljz0p+YngXyZPy
	 hTiYFx0WGGNhmwWvo6FEzBGlVuW+bPmIaWByZAkDO+13Ee3LpoBISuqhkCQgJ01gbW
	 2o8bWRLxg8m6XwmtLw1lsgG3vJDdeLHV79Zhm0231Z3O2ZOec72ODmwnGEEmi0Fns0
	 CW6LFcgNyzGyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9837FD59F77
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561117358.28598.14394933440454561707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1532df39e74f0a99c584e14b0a2f9a6773cafe592dfdf5bb4198591a780c4206
Date: Sat, 13 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765611173
