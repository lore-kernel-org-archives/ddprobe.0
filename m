Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D652857F1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752697794; cv=none; b=H3KmRm6ARkXBSuxFbMSYwWNdZowrY/L2O2d9AI9A2HI0pzzAQQR4zxuTplMT5B+7EuQS9FoW6LU0N9O6CnQ67zt56cWJFTrC85wHP6Evno4vAsbU8I9VnI+vUiiAdbCCZIrTKQFnqCkz60FHHZqRy9eSnWgDqDgYhJ7rEEe6Dug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752697794; c=relaxed/simple;
	bh=FkubHMMZ2hjLRyrTMY+YEULrxSrhc8wukiIpzm+eqq4=;
	h=To:Subject:From:Message-Id:Date; b=jUm2W68j3x0rNcC7N2xepdq7Y/49ATquJC99KYXItDpi7UJVgxgfDiovZqrYEba3onnmZHRr3aHiMdyu9F0h12gWzuTW6qeEVyEqCF7+riy9UYLCC3T3+oNwavyHzB01GM0LIJE5HiKW9Wb6horh43IO1fZJ1Di7BFGIWpBFgog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HydOSn5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HydOSn5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46DBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752697793;
	bh=FkubHMMZ2hjLRyrTMY+YEULrxSrhc8wukiIpzm+eqq4=;
	h=To:Subject:From:Date:From;
	b=HydOSn5mwRfXmcCSax99O5OzaA3Y5aKFBbFGsTuH4WfGqq5GxuQmiw43rpdl8oyQb
	 eRApi5iEaMOvudwGVRaJOqEE8ARdktyc432DJxlRznnGF9LT6wN30bDjaMetDdywP/
	 uykLU2+ajwNAivOI8HN+1PI+GSECDS1PN4vN6Rz+1aBLudCMMQkLEN32fuVNLSiLdq
	 jUXlEm6ZDyEAP6bAagwaPrGqibGyyNe28m2Sq+NbJZ2JxMIb8Yusq3uYBBXo4du6Ne
	 gIf0S2UreaFWV2My9I196gApIbn88CRvJfj/f8YV2eMIzNY6lLJk7TN6+/iZwQehSf
	 q4JkGKJ8pMiBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9106DC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269779358.29991.6143130692784428176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c24c2fce536e105c361029987408ea3f896e0d7a83687a00447ee33fb78c54f
Date: Wed, 16 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752697793
