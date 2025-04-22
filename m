Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E2F27CB3C
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745335194; cv=none; b=NTkbSX3v0gpOE4r6eU+Ok1brJuDVUBvLwmiZyvAjxini/TJZZRILSr1YQpJSJU5gduaROJw8JRMHS0Mgz1fDiQogq1PzJq52Z6Da8opd3EpAdIwreikQqhbHgzE4agpSCuPuZvNBeNtnXfPTXVOpT6NYg5zgGn8JCVpw7XVh4Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745335194; c=relaxed/simple;
	bh=Pt2o6DQrcT5iQjvwQevkOfhaxjG/6GiqvLnCX4IZ4ZM=;
	h=To:Subject:From:Message-Id:Date; b=HeQU0KxX+fMbqXVaV6cgLN/JrR9euBHBn0dS9aRcMOsO6WB/jG8m0uy/rnM+ni5Oo2myiVEb1ke+xHminSchLr5pQrWeUo8SbQcFaLSWZbCOFosNMBFzh1BugE7h2uX46nckaTqOaJFr9Oawklel5w3y50ZW6o7bnzLon0MSDRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J52dTGnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J52dTGnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC76FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745335193;
	bh=Pt2o6DQrcT5iQjvwQevkOfhaxjG/6GiqvLnCX4IZ4ZM=;
	h=To:Subject:From:Date:From;
	b=J52dTGnBIYC6jWQRIPwk+hd5MWrBeshlyoDCQslznmUBe5T9VTtICoKNF8n8I8rDR
	 nJo64ydhQKI4rqqWK6CVieXEmbdfL2+PdQ3sbcHJglU/Y8fCIKpjV4VBwrjUcukdL8
	 LgRhfh5yDeVvUwrH7MQWT2ZusMfyZBipGuRl7kAXcUGIryGb41zmAo2DYYIf3Kn3OR
	 CkmoVKWFPiaoSswOrCdpaIdlMky55MV139mDGKcQXKRSJIJVQYOU4VHfRac1FH3/30
	 kYZV3o+lQoSbIsxZRW+1BlxJyuEQLFKF8ahx4qbLy7kk5+/NCyhwSvaDUqDP4GK1PE
	 MdOS5pfx/jrSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974BCC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533519360.28246.15007161957878688628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb11f720b15fab312e98cf3db1ea4d38bb0d27e3ca55759dbf643cfcda4bc110
Date: Tue, 22 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745335193
