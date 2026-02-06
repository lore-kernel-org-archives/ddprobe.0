Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3410E17736
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770386634; cv=none; b=ncla6TNZPvpjUNxVjlfLn6Wym9/FsPsIWGUKCkMIa4/EBEDBC04Badir9ZvCCNL4/uBlrirrQmFpzpweyPlo7RfyTUyofczJMkEq10+k9qFFUfS4/fwKvKL7EfiZCKvmtyM9a5ex0HIMasWqQdFVN3GExdw6eUqnlqTFKexMUNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770386634; c=relaxed/simple;
	bh=hFdbTbncVLiBZe/JvjsgDSAPwbtup+PflUtAKD2Z2Iw=;
	h=To:Subject:From:Message-Id:Date; b=Ey5s/HjVNTBdMhx2Zn07dlCKSizx5Aqo+KALXbnNbJ/MhtH6r29ekh9YM8vJ4XDPg5wBysHQp0RZotXMBKd0y/vjUziKPp/P0HskLySpMdeHdQMek5yl5k3cNrm+DHqwfV/HvM0McXBWhAXEMQITSQNGuqcqUk9xloizhzeMbsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVE2WVPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVE2WVPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFC8C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770386633;
	bh=hFdbTbncVLiBZe/JvjsgDSAPwbtup+PflUtAKD2Z2Iw=;
	h=To:Subject:From:Date:From;
	b=PVE2WVPI5e6XzQE3jQwsRl9YCgTzVK4SDOqORvMZDVjDZVgkn1uUfTGLnTlx0XUWD
	 06X2lwGwwyr2voB6DIlczlb4WqsEiRTZ2Fv+GNMvDftW33gtcEg2Ew69dqHSnOJfmJ
	 TeMI3EBcVPJf69nxHk/m5DaTBeqJxTu7IwH8givMRSGEIvxqwdMK5cTgibwm0Z/v34
	 g7nu7rMv8JDr4/uRvs1Q2BOXaE9nf9Wf7ioGVxwEjZ/kC0SjhefwFrQwUEi5fETfdY
	 WR64YQO7bJOpHTHnG3myOR2zTkgmZ2ED3W9/X4vx0PEv9+IiEShef0Nv/5w9J/iHFK
	 ZoUkypbZ2UKKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F82EE20A4
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038663366.636.4205553967628529964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe1b75aa5e822c36e2a3ffe87259c1a342d72ee2b3b6450d3e6307701d3d699
Date: Fri, 06 Feb 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770386633
