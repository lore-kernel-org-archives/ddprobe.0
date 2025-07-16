Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C91A23496F
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679194; cv=none; b=PdklmR+Du5EiuaTi2lIhLIMGnZ9cr8yNFhWVvShRbZxmNwLzxQ3b5EYAzeNpScJGeNwhSth3k1HReh+C0pJWlQBauqkcbIpES9eXD2bzH0R18cmaLbNh1rMZTqoIjVmJBzCWj5ZfTeeA+5VpelfULa9FbEpWkdAbvk8oq45dP3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679194; c=relaxed/simple;
	bh=AN2IrrsCZP2mUtrpXKzoj+Ttd343TrKyj4tCJEtWc9w=;
	h=To:Subject:From:Message-Id:Date; b=h7drs1l55rFBMpLID7bJ3oxj4kprvzZ7Pxm29lyAMoldut7LQ/AH+OU//aO1rwcOcHpUGSA3I1IgIbjAs3w+fF1f97ZVFqWupnT0W3IpAfO823kxKuCzsc6Ii9eEs/ED0kmqTxQZ2+tlY4GzqjM9sgTUPU1SXPHFL5CStXk4SpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bghs/HO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bghs/HO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E312C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752679193;
	bh=AN2IrrsCZP2mUtrpXKzoj+Ttd343TrKyj4tCJEtWc9w=;
	h=To:Subject:From:Date:From;
	b=bghs/HO++wam0PswZBjn+qFpQokkkKsmSQCMzTz8bTOcZLcndtcY7jkw5iNM4FXz0
	 JwhyMny6fYZ4Wn+e2iFKx13wAhWyBPW6KVBc1KiLi3O/NvvZTrmwpO+ZQGqJvQRbzL
	 GGKDAJF5HuBbhNZq/bUzuwnFuA8wawaO7xmxYwKfy5xgVP5yQzAs3OJmY4n7v0fkp/
	 cGDuC86Fz5kvIDVK0UZRHHN7bbmBZwMly8+CKVkhSbGw6umgFkymcC+8M5UnfgqXWm
	 dOVnGGY/kpJqB//mjZt3NgG/M2hfU80qauW+Ia1xwsuZQDstArpEC132tbihGXCbgc
	 0zfrCapUg1ZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F664C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267919357.14226.757155872438234152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cc540c93597e8f123fc66156bbf089b7575fc17ab172cd2b526d1ce11e808a
Date: Wed, 16 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752679193
