Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EF83BB9E0
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789476034; cv=none; b=AXUVIJ+T6SO8W6Yi+SQzToAQvbHxISIu44vQhg/LZjgy7PLmIfkcc2y/tJrfZTjTZntDzsI8oitxh6KLexZoB/D0y45ZdkTFxH3ZvBwOG9k9q/X0pMlG8GCzVITj3aM946toSGjM0afH+5eF7/aqF1pnUiS/oLJyuryC5qxRySc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789476034; c=relaxed/simple;
	bh=bEdANHakLu3QTmztArX+VSsmCR5lThq3xJzKTXo8bhE=;
	h=To:Subject:From:Message-Id:Date; b=djYMyUuL1UmEPIih/Dkdky2MfG7Z/QfWJqtsRgiVnrLa/LtlM8FdFECEcF8LpnBTjY6c29Z+3umWs5TeQftWmXsgD7mL5kKw1i1WEB2WnoTNSeekJV6tzaKmuAfFr1FN/WDHtSNnS8QYj+9UwSRazeaSSyK/m8QXiN535HzB0uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZ6MGYkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZ6MGYkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E88C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789476033;
	bh=bEdANHakLu3QTmztArX+VSsmCR5lThq3xJzKTXo8bhE=;
	h=To:Subject:From:Date:From;
	b=sZ6MGYkcXz9HUYATrvpum8CvZi8dBETgY2LqE8DIckTi2LGuX6EBJUwSs+zQVxX7V
	 Jkp2uQPY51ZDuU1ckbGSaNMyw92JKLd3wte5sOYH6Ud/Dm7A4GyYVJeYh1FpG2oBCN
	 lCwG4FebB6ACYZfPnnIBYeABh2E6fVlrr7dmgOzqla1qF6bJ2jdZjcpSehr1AatTrS
	 H+0P9OIiKADabh5kgsqWK6kmX47Z7Z1sWeQVt32UTeiC3vVpUwDujiaBD7ijPryfC4
	 YSkIJ0wvv24VcD7f9vsCpn2QOBXNIEirA2Xha34Xd5TKqnd2u5BjFW9aXrZluJTFxZ
	 QO5Joh3MzNDpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE6FC88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947603369.19293.5614593738239762701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4f4d3af0e42b153e13cb5a979ddcacf36d7f2b2cc5b78689c5c4d77d26ce23
Date: Tue, 15 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789476033
