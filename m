Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B11D227BB9
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782569914; cv=none; b=pG0vVF8nQgUpVIyoMtyc2rXLgPWqx00j0A5YDLf8TUP3Nj2WJLaWIrNxdrzxmZVotO/6pOMUYRwwygPOwAL8dJaYPg15WnHPVfOWOLxzkPKN2prK//rAJp5TVW5o4UGQrnhMTi/HFGGTt3F0j6WGABUh4lD8xR3vbm8XX118KjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782569914; c=relaxed/simple;
	bh=J7ONf0GTi4CHvnNtjpHtCZgKptC17Gyw4cu31gN6Npo=;
	h=To:Subject:From:Message-Id:Date; b=hyq3mIbGsJY/EOIrXa4KVbIVYCWpe+Ei6W9x2MfG+kVKcntSozMk4aLu6Eprk2SEy5xaqGAcG9bBD8GtOwBseh7Qlj/2rGCvp1LZNMbVwwQZszSUzViKgpkmq+CTOQRmq0vl9Xhdu4UTpvk32/qchMG6U3aIGSRTRWLptB9BoyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoV+PfY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoV+PfY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26B47C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782569914;
	bh=J7ONf0GTi4CHvnNtjpHtCZgKptC17Gyw4cu31gN6Npo=;
	h=To:Subject:From:Date:From;
	b=uoV+PfY4x+wruXUEiD3cMzjP5H6OT0AMO1swLAhLpRI6FkNzM6vsC+L8aHhs1n65g
	 PrbOrwMdyPVmAXOG97gaxED6VXrzZbF5vO0ZQSl/iDXsETyUxiUFrrTKtlBXLsjddE
	 BxPXEAk0W/015yiNk8zj2X1X3/2gSN9W039JSG3MWwnotssIAOJkXBf1wJkFNcocA/
	 t5BHaTWKh5nRCB7i5X3HIwTICxLX9OWarOrOyVzY92869hGaRmW2kL0258QUTPdsWW
	 XAkYB9iffY35eDS8aQ56gG7lzuchiE25fkdD6bJ8EaZ5CtMfRWOOeUi8EakMO/cohl
	 dg+A7maUj5YMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D031CC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256991380.27988.4354037771334914254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd5787b499eef9d22e9662ee151f8811479a08e868e5a247b1e80991f7654a3
Date: Sat, 27 Jun 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782569913
