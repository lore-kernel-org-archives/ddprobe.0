Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338DA82C7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 17:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706810297; cv=none; b=Uh465ThNlXiHzTlRC5FuQ1v6WivjJc6kjzrmaqKbx3fIuV5VfVO3LdeYNSjn532Kpb6kKKowXgh6uE8tz3/ht++hdzBoNdOWhL0xJwuxTIqqw2eddRn/2LK5DMAhPY3bLd/LgVC25WEfeHaLN/2JLIgnvT3o/PnspZs0EMX4gJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706810297; c=relaxed/simple;
	bh=z4YB6jNPcplthyu6Oz99S1RETP23t2f2+2UfjrAS+UE=;
	h=To:Subject:From:Message-Id:Date; b=o8XajTTrKDaIe5cZsbO8KbVwKUe9gldVsSqqB/M6WA5z0V+PJYaDZEuNHY1RadNxUdodEaITI4srpwndouRo8Hzg/cU0tmKrpyZ82EC6hvYQcvY/ddltVbSJXWqEqx1hS/BolsXhufUIrwLGRocy3q05dwMRDHjMVc/F4Jm4vL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGTKrSIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGTKrSIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE33C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706810296;
	bh=z4YB6jNPcplthyu6Oz99S1RETP23t2f2+2UfjrAS+UE=;
	h=To:Subject:From:Date:From;
	b=YGTKrSIBKo8oiDEMHmSUSnT/43WwM0WZa6dvgOch1ukLx5lCHuxsGBZ2CcYX6FH+t
	 WrfWlTYD/kYP2RihQBudvZR6Hu9zizAI7D682zncLOQLvOuGBlbHVIWMrcYfSkmtXS
	 TND9wRr/VHsAecoTV504Ycmc3pybBf609ou1NrqHq1mRJfFryBXSt/Ki7VddcIlKxR
	 SV0g/0WULtAyBrP1Xv/3WR8K/OvssC7R1ZocIwyjfsnnPKyWW1jwoDYE/4jDyEucIN
	 4rkQudqBWCDEACd3hxhk6IudroBpWcNW7WtK+/l7x7w+OoE73ZcI91KFdj6QID4EHV
	 UnMMwLCKKmJjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD49C4828D
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170681029638.30061.7891115464475840844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4066174abfeeaa34ec8f96226f1097add4c275d7a9ac6c15697750a653c619c8
Date: Thu, 01 Feb 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706810296
