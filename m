Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B942F28E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764326574; cv=none; b=dicMPDS9foWZvaetCLGcNP+bDmr8VQvUeH7tOwG45hiIbVXLXPLX8TwWEzORoGvQxADApxiLOhmzctPR/BPAuwQsg0xJHt9HF4jQ2LJOGWK0Gd8bhRA5W111ZKsf/FJ89yCYY5px7vlIQtY4XCfE/MCyOB9KKqykPgyUvwDpyUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764326574; c=relaxed/simple;
	bh=ITEc6AdBBEPHMPiu9+pjerJu663cBG/jSFLABE72F2c=;
	h=To:Subject:From:Message-Id:Date; b=Kfzl0tykiM+4rfodnShflXZh+YJoxRCNAcRYUYle/IC6ZBJLAIBlwC+r0emV2GOQpBAv55hNi8TGbz5ig59gXM/WyfY7L6iXyanGkOmAT4M8/AusLL8u3zZAEzaMryrN4ozjGRuX6UUYgJ7xZWp3B3cf5NeDoGBjF47yyVHNmuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siaQvUf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siaQvUf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE51CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764326573;
	bh=ITEc6AdBBEPHMPiu9+pjerJu663cBG/jSFLABE72F2c=;
	h=To:Subject:From:Date:From;
	b=siaQvUf3HL3TVZCM24ES3ZUdjg3BndV5tMvwhrIKpkVe/mDqLq4aIKO4bl7veRsc/
	 V44SX5q2fJmONBT8FIziYklumWlNvWl7e8FSbgWUYuFE41qWHTyPO9ce1Bx79Bluy4
	 DXU9QZW1mF9X4Nej3auJZK7QTQuCcwnAW/EM5b2tHzriIOZoaIakcvfz3aSGdBVDAF
	 8jSlb4kj2ZzinEZAM7cYrn7P+q3ZyhQGbintp568spfRy3SLBvQRLl0lP+r7JzdNQz
	 n8qmd3lCcWBgjdeCZOaCkqgHhKza8uhSBAfTpzytfq7bjlMpsv0lAwNzX/rXKReyRr
	 xgPMNiopqCDPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99549CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432657359.25901.8649049729098506912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61427475078087966d1537d6b30c463ba97f7b6623525b8c8ceb9dc007f344a6
Date: Fri, 28 Nov 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764326573
