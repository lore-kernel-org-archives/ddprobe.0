Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368AE202F88
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733993154; cv=none; b=ouv1E0wHYv3dqq6bLKa80lAucHH6+0zyJ69T5f8gnulvx+mOD7ARap2mww5yU+xa01LU+LpBPR5nw+I05EOx0OWcOOFCLPilZmfAPUa1tTaOFSXlABZp6i86QG0fZBtd2PLLkh9xHb7xD9eQIoxXIb0YIHl/s4OClTDjO9VXTH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733993154; c=relaxed/simple;
	bh=NWII75pPhi1u+NiMT+B/zgcn/m9Po0/Odld6vMlWD/s=;
	h=To:Subject:From:Message-Id:Date; b=h0Sx6GAGf5Md2AUK/60BTYD47tXbesLaRM5NY68Ly6u0ZUFAFCa9l8nJGSPtCf5keI8F6nDBOpgdDH2+uw8iyjw1GRTgsg18w0OXxU0uqcFh3N/mlJDTHONWNPIeWCPg3NLSwfl5/zHXt+s6u5Azxvf+E67Rj6MZs6lLG42oVpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wijp3K5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wijp3K5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D0BC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733993153;
	bh=NWII75pPhi1u+NiMT+B/zgcn/m9Po0/Odld6vMlWD/s=;
	h=To:Subject:From:Date:From;
	b=Wijp3K5twgEOq/R/xOdRYiznPm7TwHweu0xz+lvK/6OEwkH5WvdofBwqHswewBElm
	 NEa7OAr3Be7UJMcWfHnuafFxLpYct9Qx9H0rIET5seprUsxBShrqZKOsofcouWwGDE
	 /UUWcFtpeL1s49c1h0aAgIM3gQImtw/EFJlC0ZFthAVQlFB9IbzjayGJhRoRhuFRp5
	 Ai2wou5pcNURnisZXj0dXzAB2f7TsGaUAWRdhFpLjC/ytIL4DcmLVr4pcjY1smE3ha
	 SQgzRWSK6wm5g/QwDMDT1SDYHEMn3dyWLt8NzkBHvzLlIMIGxwE1FujC7Dcl1ntuCp
	 7ja8pcBfI5Dvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EF8E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173399315361.28096.9648681649038947193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276451b27f4289916014f90b1a9f3e5e445806ab90f5d9521f95bf41b684c5c3
Date: Thu, 12 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733993153
