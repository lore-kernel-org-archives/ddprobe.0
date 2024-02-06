Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107F517BA6
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707250697; cv=none; b=aHN24s6/ALlndPmJUsa9G52Gma/Jj/BGyRlrsEoPfcSztaYzYB2BAEl/PV7DP+7SiHqpAe9XGvVU8IwQtpW66tXj+5xwoQVbm+KmvkKEoyaaT3MY4MAPlQ5oKqkE9J9McA5tCjB5EMw49WjRhk5tdFCxyZxD/QzPCAD/pGutDOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707250697; c=relaxed/simple;
	bh=6u/mBUjOZvYKojTGlZ/HsHOP+FdZeRicnYmnaf9yGwY=;
	h=To:Subject:From:Message-Id:Date; b=m8Uqud/+9tqW82R30TJYiemAkeiEbw3y5XdZP5j3rX6x4r0/wcTTPkGgAOTEH389RkvuBBVRkBNLUYPn6USyB/MzzcDRISMATKmKsFLB6pqSYINmPQxU5dcwVkNlDSrPHRXGluj2pTYHy72hMo54Pdl01FbmmEkGSsmnKr9txoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIGe7OJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIGe7OJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82654C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707250696;
	bh=6u/mBUjOZvYKojTGlZ/HsHOP+FdZeRicnYmnaf9yGwY=;
	h=To:Subject:From:Date:From;
	b=sIGe7OJtYHUt4wTHlkO0+5Qf/+s5PxH6sgB8vF2QEIa9CLpqlXAxj0AlmPbRes5Wp
	 Y+UeOUNJQutVCuvV/UYjZmGztkHsJXRUtWzvbXbN3deXwNbufot96Dj5RNfcNiXjn9
	 IQTCEzuttAgthGD6upCrhMu1KB4zcZGL2ss35nuks5+mxW5vTZlfQkOM8ZkSZZCNw3
	 Dcxao7g+sGXqnhDGZRTS4wuqSWqzRAkSEycZDEEmoLO0vmEXc8KBfA6vycKW/XQ5Jb
	 u/rVzVQln1FVBj5jykBRQS37Gm5C4jZe++2X6uoqR78kEkCetF4lmvoIikQoq74c/p
	 uduspZ0MMMmVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67075C4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170725069641.10112.2657217461631398447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ec2142118fe0104e118f99f9811856376265e5e3e1ab3e28954818d6f3dddf
Date: Tue, 06 Feb 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707250696
