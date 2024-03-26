Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3EDC13E05C
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711496896; cv=none; b=pmRN68rIYIQ0FiAg4zI3DWePrXapJwj2VcE/FDp/R7ney0NIVNFMJQCXhvGT/JV0McjpF74XybH5co22B3VJBvEIX2/BpXlY0QfL7TNkHajEsgb8BtaXIUjZ/gn6OxigaYy7i4rWUKvc0kBkq2xbmat8aoxtHGZ5+zpj9zQyyv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711496896; c=relaxed/simple;
	bh=SrFRG7O8pQ4tf0l2oyusJRbFTN1C4RuWfZDmsGve6TA=;
	h=To:Subject:From:Message-Id:Date; b=ljLxUqYAIr7JLR3bvjUL9dPRELOPaQa5rq+spSMCnXntjenFI6Uoi5SJd18FKUMA8FNJm8AkfZta7VHrFNyF6yl2AE8eqrv/k8qJkol4WpcOG4LCp65/0PYpoJgvfSok++xtbsVwTAvzAdJ+fqCbMNnXCYSZu9FiM6VHE0SjRMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNlWccT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNlWccT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BEE2C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711496896;
	bh=SrFRG7O8pQ4tf0l2oyusJRbFTN1C4RuWfZDmsGve6TA=;
	h=To:Subject:From:Date:From;
	b=hNlWccT8fd4yE1HXQGMJO86egLy1bxe7Shm5BsU8gSiwTSAxpNOOc611mFGcEYnYJ
	 mecJhFGLCcLT80TGTVMglcmsk5D/399JAibM/RF3xvxuXDR2+5jhZVK3f4QCct9UGG
	 JUSG59Zu7F8364jYc8FuUsr61HgdFoO4IrpyK5CKH+2qm9CQ6kYfTg2cl9h0L0SEAe
	 H+PrYAOWQQ6tLNanNDqNuyTIu6awGpBPJe5Wf+YKP2CnSmIcs65KDD1WtStiyCP4Ee
	 T/5ga/M4exDTF2zV/Po+tN6DwxeMaIkq0dpH07X7F85xxIcMHZWG7QUkwzbOwK8fmr
	 u+SmZJOuWcjNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66EE3CD11DD
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171149689640.25750.14286472353020227201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1829c465de43f491b3d408026768b2f1445c6cbe0a2cd93e1c8c16772b156b
Date: Tue, 26 Mar 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711496896
