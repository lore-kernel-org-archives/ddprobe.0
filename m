Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7433C1D53
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789281034; cv=none; b=J+xK1BP7TSutFg0IFbvsh6fOwmOFbP2MyJ4Ox/SbVjKQr9n1+8cYJlHjBMa5Uq7Sc4/t2jN4Ic1JnQPFEhPTKoz9J3EgEOk9T4aZ9xuaGHpz5QK014II5HlcqzfV+YBSBCjKqIgtRUCr/7GLNSa4WYA2HGDZ7lUIhl6voYNqSRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789281034; c=relaxed/simple;
	bh=T8dUYzyi4yc4JtYUciS+VP28RFb9m47e3jtdDNkHhSg=;
	h=To:Subject:From:Message-Id:Date; b=aSTm400RJ8hCpvYzJE8fc24FEShNdrtl+hkzt3snaMG46LxdZV53jLdy8c5VDElOH7dYtnLaBbGbyDhilmn78TOus7zvnZnUda8qAE0jZf+MYxSF+OksfqZE6pwryW9zmKMPzMGDsI3BNdSPp4+AlheKUfUM6kNMhK48qH20oKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etLaHXDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etLaHXDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6859C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789281033;
	bh=T8dUYzyi4yc4JtYUciS+VP28RFb9m47e3jtdDNkHhSg=;
	h=To:Subject:From:Date:From;
	b=etLaHXDqaW2Pd8JK306Pit5H7s8bT02BHjf375fRuSV0eW2GePj7vnpnfCtzeodii
	 yTOEp6D7gDZ3rN75KnCtK3eHkJidDtpcJlezKagxJZzN4f6WkESoTPiq+B0wm8dP4d
	 CIg3pkFVEGqHixtohTiMrntJa9Ec9iJ4r8PObZqrQqYZL+kCOIT+AI+0QENrU7XHa8
	 f16NEoqoTGC/6h7KshAMSMUGAHYXUL18jcD8xwzo3jo3SmTMsjjRyBsEyTfZe7pPuZ
	 JlHX6gnKfo3CMoZknaMQ2s6CjxlFk40WatkRw8KupowR6b7LuiNRaVZ6kxaDrgjTql
	 rCYyJAtzMJAtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC93CC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928103368.26255.210786237590671924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf94abc5ea7c299e661794658ce91a91db627140fbb3db9bff9a2cfe80d8ff3
Date: Sun, 13 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789281033
