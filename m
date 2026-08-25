Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCCC35F5F8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787689834; cv=none; b=hqja7mKPiNW/RW72Q0GgNNvW182ktNFEkmGZxJy3bI0cbwwZLba3TcelNv/UzuBTbbbn1p1ARatoi6qsp1jZWNweLznG0oKD/Rq/Pj6MtUqLNSsYu/S/mxPMohsZoGPGNV632bK7ICXNn9dVw5oil5g42CpHrU/7aq4AQJcWX0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787689834; c=relaxed/simple;
	bh=i/3KcMcEtygMefOIvPYLhSKDgeGjsymPguecl4RCNKM=;
	h=To:Subject:From:Message-Id:Date; b=S6Nh90S0Kid0dXwjHC9RcirxFFnhhGK4m4sQ6db6ewhovQH9uzBmlFleGIUeIkMsTRx8nk6C6qKk4YAsj9UJ9MGlKKBHV/t7Y6zgdro7XFys87L6+UgKOFn8aDie2FHTakRc0EmsWBGpeBtTCyACY3yTu3DBGI3lan1LWtY7QKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIyO5vjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIyO5vjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD778C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787689833;
	bh=i/3KcMcEtygMefOIvPYLhSKDgeGjsymPguecl4RCNKM=;
	h=To:Subject:From:Date:From;
	b=NIyO5vjBtC+4WAAVhrQ5DETZq5x6IJS2itFsUobRWZIFIxCXUyv25dhBqBi/lJnsL
	 H53Ok14soW1uWUbnZ7Smo9b9ckay3tJ3VmfGUXPvVTiez5q4RxeKMDtFeXmd/AMnzi
	 CiroGLxL65Sx/UeqNuoSuOgIPOWaG4n9tXoo19Eedzbco6GSfXnOvKH45hozcf1OA4
	 5XyTlKEf17BnYplo94ydvlF6oRCt9zBrU62zEX4ZOpE1d2rn2PcIBK4tovp4bu7+Cr
	 brbm79xd6VZkVGWrRaH6b1cZI3lArS3G5F1t7ZFZtFmCPLJRm/7Goya0bX51cKy9Gz
	 VIi7u8hSwhOog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADEFC61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768983368.11435.14704241920137985004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326ee822bb38c99e10d04aa6764cd7c15e1648e427176f5b7b62074952dee6d7
Date: Tue, 25 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787689833
