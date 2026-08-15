Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB2036B909
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786774834; cv=none; b=Wr+QxfNkRiQK/PLSBN6TVJIN+orI+T2ioBS9RF7+0/n8J0uPR4X4+K0iDaz/M4ltWuQFh9/ED8VZPRrYFp6N2qCQnj13v01jtost/fRmrNlE7V71qDBNcFNFoeaf4HJQTXBtDVLQP81YBAQUhGsWyViuqMV5ViriBW6ov+yhk60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786774834; c=relaxed/simple;
	bh=2uF4Jq3moosRexMdRYrR3D9dAWfo8mYjMlDoHon1KtU=;
	h=To:Subject:From:Message-Id:Date; b=PD+nI0vYs6c4jbDzfJl48HmHAiJ5owEoJQkq1JBzPXEJvIermdzu0/SJkdkBjPYJ/ibGPTJaLm4JMMblQgo3zveN3bTV/oBbd/ej+XL0t2C5gGEiA3yzL3rolKwaTYQvLqQ3CrX74h0OSt9zUm+WWUmONsX7QO27yLECL31NSpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5DXAggd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5DXAggd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0982C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786774833;
	bh=2uF4Jq3moosRexMdRYrR3D9dAWfo8mYjMlDoHon1KtU=;
	h=To:Subject:From:Date:From;
	b=V5DXAggdbWyHOqw9jAKFNjg/xRyj/O5c4Plwp1uDA/W0FxZ9BYkqM6Frv1G3TQgS/
	 bVR6OQh1vyveDUDmm/k+lWwn+tL94ro8H92yzl7CPogY9M62O3tr+MxkCsNbxCuYhE
	 AT5fWRqlnFBbKpmnika15gO7wEFh/hv1Meg+yupPbmvFw1O+UKdCTAQOPZVhFMHCQJ
	 vGu74lO3fMVeBmgEBh+/XytqkkriPqlCpii9HPpFU5DbiHdIcZWuJc/3jp/YAbwnYt
	 aswll6kBXQ5tkKRrVrIK2at/HdYtwU5u1ZAgy2DVfi8h+kwyElOBnkbPf165Nc1/Wb
	 GSBJ34jzYPP6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD456C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677483370.25201.4030635091754040868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b249378616d5d19a043bc53cd869d9e303d8cc9754f0cf8ada54b5027812f65
Date: Sat, 15 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786774833
